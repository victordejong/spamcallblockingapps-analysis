package androidx.work.impl.utils;

import android.annotation.SuppressLint;
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
import android.text.TextUtils;
import androidx.work.C0677a;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p120i0.C3055a;
import p186o1.AbstractC3824h;
import p197p1.C4005i;
import p197p1.C4006j;
import p292y1.C4962i;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: d */
    public static final String f2730d = AbstractC3824h.m1773e("ForceStopRunnable");

    /* renamed from: e */
    public static final long f2731e = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: a */
    public final Context f2732a;

    /* renamed from: b */
    public final C4006j f2733b;

    /* renamed from: c */
    public int f2734c = 0;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        static {
            AbstractC3824h.m1773e("ForceStopRunnable$Rcvr");
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            int i = ((AbstractC3824h.C3825a) AbstractC3824h.m1774c()).f12312b;
            ForceStopRunnable.m7450e(context);
        }
    }

    public ForceStopRunnable(Context context, C4006j c4006j) {
        this.f2732a = context.getApplicationContext();
        this.f2733b = c4006j;
    }

    /* renamed from: c */
    public static PendingIntent m7452c(Context context, int i) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return PendingIntent.getBroadcast(context, -1, intent, i);
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: e */
    public static void m7450e(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m7452c = m7452c(context, C3055a.m2668a() ? 167772160 : 134217728);
        long currentTimeMillis = System.currentTimeMillis();
        long j = f2731e;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis + j, m7452c);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x039d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7453b() {
        /*
            Method dump skipped, instructions count: 978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.ForceStopRunnable.m7453b():void");
    }

    /* renamed from: d */
    public boolean m7451d() {
        C0677a c0677a = this.f2733b.f12583b;
        Objects.requireNonNull(c0677a);
        if (TextUtils.isEmpty(null)) {
            AbstractC3824h.m1774c().mo1772a(f2730d, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean m173a = C4962i.m173a(this.f2732a, c0677a);
        AbstractC3824h.m1774c().mo1772a(f2730d, String.format("Is default app process = %s", Boolean.valueOf(m173a)), new Throwable[0]);
        return m173a;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!m7451d()) {
                return;
            }
            while (true) {
                C4005i.m1537a(this.f2732a);
                AbstractC3824h.m1774c().mo1772a(f2730d, "Performing cleanup operations.", new Throwable[0]);
                try {
                    m7453b();
                    return;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    int i = this.f2734c + 1;
                    this.f2734c = i;
                    if (i >= 3) {
                        AbstractC3824h.m1774c().mo1771b(f2730d, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        Objects.requireNonNull(this.f2733b.f12583b);
                        throw illegalStateException;
                    }
                    AbstractC3824h.m1774c().mo1772a(f2730d, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                    try {
                        Thread.sleep(this.f2734c * 300);
                    } catch (InterruptedException e2) {
                    }
                }
            }
        } finally {
            this.f2733b.m1533e();
        }
    }
}
