package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.C1308s;
import androidx.work.impl.C1229e;
import androidx.work.impl.C1248h;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.C1225b;
import androidx.work.impl.p055b.AbstractC1186n;
import androidx.work.impl.p055b.AbstractC1194q;
import androidx.work.impl.p055b.C1191p;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: a */
    private static final String f4239a = AbstractC1293l.m17541a("ForceStopRunnable");

    /* renamed from: b */
    private static final long f4240b = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: c */
    private final Context f4241c;

    /* renamed from: d */
    private final C1249i f4242d;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        private static final String f4243a = AbstractC1293l.m17541a("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            AbstractC1293l.m17543a().mo17540a(f4243a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
            ForceStopRunnable.m17621b(context);
        }
    }

    public ForceStopRunnable(Context context, C1249i c1249i) {
        this.f4241c = context.getApplicationContext();
        this.f4242d = c1249i;
    }

    /* renamed from: a */
    private static PendingIntent m17623a(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m17624a(context), i);
    }

    /* renamed from: a */
    static Intent m17624a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    /* renamed from: b */
    static void m17621b(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m17623a = m17623a(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f4240b;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, m17623a);
            } else {
                alarmManager.set(0, currentTimeMillis, m17623a);
            }
        }
    }

    /* renamed from: a */
    public boolean m17625a() {
        boolean z;
        if (m17623a(this.f4241c, 536870912) == null) {
            m17621b(this.f4241c);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public boolean m17622b() {
        if (Build.VERSION.SDK_INT >= 23) {
            C1225b.m17717b(this.f4241c);
        }
        WorkDatabase m17652c = this.f4242d.m17652c();
        AbstractC1194q mo17885o = m17652c.mo17885o();
        AbstractC1186n mo17880t = m17652c.mo17880t();
        m17652c.m18291g();
        try {
            List<C1191p> mo17790d = mo17885o.mo17790d();
            boolean z = false;
            if (mo17790d != null) {
                z = false;
                if (!mo17790d.isEmpty()) {
                    z = true;
                }
            }
            if (z) {
                for (C1191p c1191p : mo17790d) {
                    mo17885o.mo17799a(C1308s.EnumC1309a.ENQUEUED, c1191p.f4013a);
                    mo17885o.mo17793b(c1191p.f4013a, -1L);
                }
            }
            mo17880t.mo17811a();
            m17652c.m18288j();
            m17652c.m18290h();
            return z;
        } catch (Throwable th) {
            m17652c.m18290h();
            throw th;
        }
    }

    /* renamed from: c */
    boolean m17620c() {
        return this.f4242d.m17646h().m17568a();
    }

    @Override // java.lang.Runnable
    public void run() {
        C1248h.m17669a(this.f4241c);
        AbstractC1293l.m17543a().mo17539b(f4239a, "Performing cleanup operations.", new Throwable[0]);
        try {
            boolean m17622b = m17622b();
            if (m17620c()) {
                AbstractC1293l.m17543a().mo17539b(f4239a, "Rescheduling Workers.", new Throwable[0]);
                this.f4242d.m17645i();
                this.f4242d.m17646h().m17566a(false);
            } else if (m17625a()) {
                AbstractC1293l.m17543a().mo17539b(f4239a, "Application was force-stopped, rescheduling.", new Throwable[0]);
                this.f4242d.m17645i();
            } else if (m17622b) {
                AbstractC1293l.m17543a().mo17539b(f4239a, "Found unfinished work, scheduling it.", new Throwable[0]);
                C1229e.m17700a(this.f4242d.m17650d(), this.f4242d.m17652c(), this.f4242d.m17649e());
            }
            this.f4242d.m17644j();
        } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteDatabaseCorruptException e) {
            AbstractC1293l.m17543a().mo17536e(f4239a, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
            throw new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
        }
    }
}
