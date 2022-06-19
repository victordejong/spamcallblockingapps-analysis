package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: c */
    public static final String f1674c = x40.f("ForceStopRunnable");

    /* renamed from: d */
    public static final long f1675d = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: a */
    public final Context f1676a;

    /* renamed from: b */
    public final o50 f1677b;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        public static final String f1678a = x40.f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            x40.c().g(f1678a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
            ForceStopRunnable.m5877e(context);
        }
    }

    public ForceStopRunnable(Context context, o50 o50Var) {
        this.f1676a = context.getApplicationContext();
        this.f1677b = o50Var;
    }

    /* renamed from: b */
    public static Intent m5880b(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    /* renamed from: c */
    public static PendingIntent m5879c(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m5880b(context), i);
    }

    /* renamed from: e */
    public static void m5877e(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m5879c = m5879c(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f1675d;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, m5879c);
            } else {
                alarmManager.set(0, currentTimeMillis, m5879c);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public boolean m5881a() {
        if (Build.VERSION.SDK_INT >= 23) {
            z50.d(this.f1676a);
        }
        WorkDatabase n = this.f1677b.n();
        d70 y = n.y();
        n.c();
        try {
            List<c70> m2793o = y.m2793o();
            boolean z = m2793o != null && !m2793o.isEmpty();
            if (z) {
                for (c70 c70Var : m2793o) {
                    y.m2807a(d50.ENQUEUED, c70Var.f2162a);
                    y.m2798j(c70Var.f2162a, -1L);
                }
            }
            n.q();
            n.g();
            return z;
        } catch (Throwable th) {
            n.g();
            throw th;
        }
    }

    /* renamed from: d */
    public boolean m5878d() {
        if (m5879c(this.f1676a, PKIFailureInfo.duplicateCertReq) == null) {
            m5877e(this.f1676a);
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public boolean m5876f() {
        return this.f1677b.k().b();
    }

    @Override // java.lang.Runnable
    public void run() {
        x40 c = x40.c();
        String str = f1674c;
        c.a(str, "Performing cleanup operations.", new Throwable[0]);
        boolean m5881a = m5881a();
        if (m5876f()) {
            x40.c().a(str, "Rescheduling Workers.", new Throwable[0]);
            this.f1677b.r();
            this.f1677b.k().c(false);
        } else if (m5878d()) {
            x40.c().a(str, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f1677b.r();
        } else if (m5881a) {
            x40.c().a(str, "Found unfinished work, scheduling it.", new Throwable[0]);
            l50.b(this.f1677b.h(), this.f1677b.n(), this.f1677b.m());
        }
        this.f1677b.q();
    }
}
