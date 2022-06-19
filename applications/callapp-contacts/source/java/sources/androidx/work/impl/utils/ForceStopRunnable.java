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
import androidx.work.AbstractC3145k;
import androidx.work.C3163t;
import androidx.work.impl.C3049f;
import androidx.work.impl.C3067i;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.C3044b;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public final class ForceStopRunnable implements Runnable {

    /* renamed from: a */
    private static final String f11401a = AbstractC3145k.m39275a("ForceStopRunnable");

    /* renamed from: b */
    private static final long f11402b = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: c */
    private final Context f11403c;

    /* renamed from: d */
    private final C3068j f11404d;

    /* renamed from: e */
    private int f11405e = 0;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        private static final String f11406a = AbstractC3145k.m39275a("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            AbstractC3145k.m39277a();
            ForceStopRunnable.m39342a(context);
        }
    }

    public ForceStopRunnable(Context context, C3068j c3068j) {
        this.f11403c = context.getApplicationContext();
        this.f11404d = c3068j;
    }

    /* renamed from: a */
    private static PendingIntent m39341a(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m39340b(context), i);
    }

    /* renamed from: a */
    static void m39342a(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m39341a = m39341a(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f11402b;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, m39341a);
            } else {
                alarmManager.set(0, currentTimeMillis, m39341a);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private boolean m39343a() {
        boolean m39402a = Build.VERSION.SDK_INT >= 23 ? C3044b.m39402a(this.f11403c, this.f11404d) : false;
        WorkDatabase workDatabase = this.f11404d.f11355c;
        WorkSpecDao mo39474j = workDatabase.mo39474j();
        WorkProgressDao mo39469o = workDatabase.mo39469o();
        workDatabase.m39959e();
        try {
            List<WorkSpec> runningWork = mo39474j.getRunningWork();
            boolean z = runningWork != null && !runningWork.isEmpty();
            if (z) {
                for (WorkSpec workSpec : runningWork) {
                    mo39474j.setState(C3163t.EnumC3164a.ENQUEUED, workSpec.f11397id);
                    mo39474j.markWorkSpecScheduled(workSpec.f11397id, -1L);
                }
            }
            mo39469o.deleteAll();
            workDatabase.m39957g();
            workDatabase.m39958f();
            return z || m39402a;
        } catch (Throwable th) {
            workDatabase.m39958f();
            throw th;
        }
    }

    /* renamed from: b */
    private static Intent m39340b(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        if (this.f11404d.m39360b() == null) {
            z = true;
        } else {
            AbstractC3145k.m39277a();
            z = C3125f.m39293a(this.f11403c, this.f11404d.f11354b);
            AbstractC3145k.m39277a();
            String.format("Is default app process = %s", Boolean.valueOf(z));
        }
        if (!z) {
            return;
        }
        while (true) {
            C3067i.m39364a(this.f11403c);
            AbstractC3145k.m39277a();
            try {
                boolean m39343a = m39343a();
                Long longValue = this.f11404d.f11359g.f11452a.mo39468p().getLongValue("reschedule_needed");
                if (longValue != null && longValue.longValue() == 1) {
                    AbstractC3145k.m39277a();
                    this.f11404d.m39357c();
                    this.f11404d.f11359g.f11452a.mo39468p().insertPreference(new Preference("reschedule_needed", false));
                } else {
                    if (m39341a(this.f11403c, 536870912) == null) {
                        m39342a(this.f11403c);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        AbstractC3145k.m39277a();
                        this.f11404d.m39357c();
                    } else if (m39343a) {
                        AbstractC3145k.m39277a();
                        C3049f.m39383a(this.f11404d.f11354b, this.f11404d.f11355c, this.f11404d.f11357e);
                    }
                }
                this.f11404d.m39355d();
                return;
            } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                int i = this.f11405e + 1;
                this.f11405e = i;
                if (i >= 3) {
                    AbstractC3145k.m39277a().mo39273a(f11401a, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                    IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                    if (this.f11404d.f11354b.getExceptionHandler() == null) {
                        throw illegalStateException;
                    }
                    AbstractC3145k.m39277a();
                    return;
                }
                AbstractC3145k.m39277a();
                String.format("Retrying after %s", Long.valueOf(i * 300));
                try {
                    Thread.sleep(this.f11405e * 300);
                } catch (InterruptedException e2) {
                }
            }
        }
    }
}
