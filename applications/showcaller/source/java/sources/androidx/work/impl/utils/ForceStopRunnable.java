package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
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
import android.text.TextUtils;
import androidx.core.p008os.C0622a;
import androidx.work.AbstractC1242g;
import androidx.work.AbstractC1404j;
import androidx.work.C1230a;
import androidx.work.WorkInfo$State;
import androidx.work.impl.C1269f;
import androidx.work.impl.C1288i;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.C1264b;
import androidx.work.impl.p018n.AbstractC1339n;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.C1344p;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: d */
    private static final String f5626d = AbstractC1404j.m30159f("ForceStopRunnable");

    /* renamed from: e */
    private static final long f5627e = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: f */
    private final Context f5628f;

    /* renamed from: g */
    private final C1289j f5629g;

    /* renamed from: h */
    private int f5630h = 0;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        private static final String f5631a = AbstractC1404j.m30159f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            AbstractC1404j.m30161c().mo30155g(f5631a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
            ForceStopRunnable.m30239g(context);
        }
    }

    public ForceStopRunnable(Context context, C1289j c1289j) {
        this.f5628f = context.getApplicationContext();
        this.f5629g = c1289j;
    }

    /* renamed from: c */
    static Intent m30243c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    /* renamed from: d */
    private static PendingIntent m30242d(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m30243c(context), i);
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: g */
    static void m30239g(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m30242d = m30242d(context, C0622a.m33200c() ? 167772160 : 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f5627e;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, m30242d);
            } else {
                alarmManager.set(0, currentTimeMillis, m30242d);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public boolean m30245a() {
        boolean z = false;
        boolean m30451i = Build.VERSION.SDK_INT >= 23 ? C1264b.m30451i(this.f5628f, this.f5629g) : false;
        WorkDatabase m30388o = this.f5629g.m30388o();
        AbstractC1347q mo30527B = m30388o.mo30527B();
        AbstractC1339n mo30528A = m30388o.mo30528A();
        m30388o.m31293c();
        try {
            List<C1344p> mo30273j = mo30527B.mo30273j();
            boolean z2 = mo30273j != null && !mo30273j.isEmpty();
            if (z2) {
                for (C1344p c1344p : mo30273j) {
                    mo30527B.mo30281b(WorkInfo$State.ENQUEUED, c1344p.f5578c);
                    mo30527B.mo30280c(c1344p.f5578c, -1L);
                }
            }
            mo30528A.mo30289b();
            m30388o.m31280r();
            m30388o.m31291g();
            if (z2 || m30451i) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            m30388o.m31291g();
            throw th;
        }
    }

    /* renamed from: b */
    public void m30244b() {
        boolean m30245a = m30245a();
        if (m30238h()) {
            AbstractC1404j.m30161c().mo30158a(f5626d, "Rescheduling Workers.", new Throwable[0]);
            this.f5629g.m30384s();
            this.f5629g.m30391l().m30212c(false);
        } else if (m30241e()) {
            AbstractC1404j.m30161c().mo30158a(f5626d, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f5629g.m30384s();
        } else if (!m30245a) {
        } else {
            AbstractC1404j.m30161c().mo30158a(f5626d, "Found unfinished work, scheduling it.", new Throwable[0]);
            C1269f.m30435b(this.f5629g.m30394i(), this.f5629g.m30388o(), this.f5629g.m30389n());
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: e */
    public boolean m30241e() {
        int i = 536870912;
        try {
            if (C0622a.m33200c()) {
                i = 570425344;
            }
            PendingIntent m30242d = m30242d(this.f5628f, i);
            if (Build.VERSION.SDK_INT < 30) {
                if (m30242d != null) {
                    return false;
                }
                m30239g(this.f5628f);
                return true;
            }
            if (m30242d != null) {
                m30242d.cancel();
            }
            List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.f5628f.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons == null || historicalProcessExitReasons.isEmpty()) {
                return false;
            }
            for (int i2 = 0; i2 < historicalProcessExitReasons.size(); i2++) {
                if (historicalProcessExitReasons.get(i2).getReason() == 10) {
                    return true;
                }
            }
            return false;
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC1404j.m30161c().mo30154h(f5626d, "Ignoring exception", e);
            return true;
        }
    }

    /* renamed from: f */
    public boolean m30240f() {
        C1230a m30394i = this.f5629g.m30394i();
        if (TextUtils.isEmpty(m30394i.m30595c())) {
            AbstractC1404j.m30161c().mo30158a(f5626d, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean m30210b = C1372f.m30210b(this.f5628f, m30394i);
        AbstractC1404j.m30161c().mo30158a(f5626d, String.format("Is default app process = %s", Boolean.valueOf(m30210b)), new Throwable[0]);
        return m30210b;
    }

    /* renamed from: h */
    boolean m30238h() {
        return this.f5629g.m30391l().m30214a();
    }

    /* renamed from: i */
    public void m30237i(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        try {
            if (!m30240f()) {
                return;
            }
            while (true) {
                C1288i.m30400e(this.f5628f);
                AbstractC1404j.m30161c().mo30158a(f5626d, "Performing cleanup operations.", new Throwable[0]);
                try {
                    m30244b();
                    break;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    i = this.f5630h + 1;
                    this.f5630h = i;
                    if (i >= 3) {
                        AbstractC1404j m30161c = AbstractC1404j.m30161c();
                        String str = f5626d;
                        m30161c.mo30157b(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        AbstractC1242g m30594d = this.f5629g.m30394i().m30594d();
                        if (m30594d == null) {
                            throw illegalStateException;
                        }
                        AbstractC1404j.m30161c().mo30158a(str, "Routing exception to the specified exception handler", illegalStateException);
                        m30594d.m30539a(illegalStateException);
                    } else {
                        AbstractC1404j.m30161c().mo30158a(f5626d, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                        m30237i(this.f5630h * 300);
                    }
                }
                AbstractC1404j.m30161c().mo30158a(f5626d, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                m30237i(this.f5630h * 300);
            }
        } finally {
            this.f5629g.m30385r();
        }
    }
}
