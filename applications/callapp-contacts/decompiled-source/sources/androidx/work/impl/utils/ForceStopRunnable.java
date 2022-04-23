package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.f;
import androidx.work.impl.i;
import androidx.work.impl.j;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.k;
import androidx.work.t;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public final class ForceStopRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6133a = k.a("ForceStopRunnable");

    /* renamed from: b  reason: collision with root package name */
    private static final long f6134b = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: c  reason: collision with root package name */
    private final Context f6135c;

    /* renamed from: d  reason: collision with root package name */
    private final j f6136d;
    private int e = 0;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private static final String f6137a = k.a("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                k.a();
                ForceStopRunnable.a(context);
            }
        }
    }

    public ForceStopRunnable(Context context, j jVar) {
        this.f6135c = context.getApplicationContext();
        this.f6136d = jVar;
    }

    private static PendingIntent a(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, b(context), i);
    }

    static void a(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent a2 = a(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f6134b;
        if (alarmManager == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, currentTimeMillis, a2);
        } else {
            alarmManager.set(0, currentTimeMillis, a2);
        }
    }

    private boolean a() {
        boolean a2 = Build.VERSION.SDK_INT >= 23 ? b.a(this.f6135c, this.f6136d) : false;
        WorkDatabase workDatabase = this.f6136d.f6118c;
        WorkSpecDao j = workDatabase.j();
        WorkProgressDao o = workDatabase.o();
        workDatabase.e();
        try {
            List<WorkSpec> runningWork = j.getRunningWork();
            boolean z = runningWork != null && !runningWork.isEmpty();
            if (z) {
                for (WorkSpec workSpec : runningWork) {
                    j.setState(t.a.ENQUEUED, workSpec.id);
                    j.markWorkSpecScheduled(workSpec.id, -1L);
                }
            }
            o.deleteAll();
            workDatabase.g();
            return z || a2;
        } finally {
            workDatabase.f();
        }
    }

    private static Intent b(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        if (this.f6136d.b() == null) {
            z = true;
        } else {
            k.a();
            z = f.a(this.f6135c, this.f6136d.f6117b);
            k.a();
            String.format("Is default app process = %s", Boolean.valueOf(z));
        }
        if (z) {
            while (true) {
                i.a(this.f6135c);
                k.a();
                try {
                    boolean a2 = a();
                    Long longValue = this.f6136d.g.f6179a.p().getLongValue("reschedule_needed");
                    if (longValue != null && longValue.longValue() == 1) {
                        k.a();
                        this.f6136d.c();
                        this.f6136d.g.f6179a.p().insertPreference(new Preference("reschedule_needed", false));
                    } else {
                        if (a(this.f6135c, 536870912) == null) {
                            a(this.f6135c);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            k.a();
                            this.f6136d.c();
                        } else if (a2) {
                            k.a();
                            f.a(this.f6136d.f6117b, this.f6136d.f6118c, this.f6136d.e);
                        }
                    }
                    this.f6136d.d();
                    return;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    int i = this.e + 1;
                    this.e = i;
                    if (i >= 3) {
                        k.a().a(f6133a, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        if (this.f6136d.f6117b.getExceptionHandler() != null) {
                            k.a();
                            return;
                        }
                        throw illegalStateException;
                    }
                    k.a();
                    String.format("Retrying after %s", Long.valueOf(i * 300));
                    try {
                        Thread.sleep(this.e * 300);
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }
}
