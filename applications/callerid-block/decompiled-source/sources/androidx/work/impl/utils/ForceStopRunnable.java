package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.AbstractC0555f;
import androidx.work.WorkInfo$State;
import androidx.work.impl.C0571e;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.h;
import androidx.work.impl.p009l.AbstractC0591k;
import androidx.work.impl.p009l.C0589j;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: d */
    private static final String f3108d = AbstractC0555f.m11738f("ForceStopRunnable");

    /* renamed from: e */
    private static final long f3109e = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: b */
    private final Context f3110b;

    /* renamed from: c */
    private final h f3111c;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        private static final String f3112a = AbstractC0555f.m11738f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                AbstractC0555f.m11741c().m11737g(f3112a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
                ForceStopRunnable.m11631e(context);
            }
        }
    }

    public ForceStopRunnable(Context context, h hVar) {
        this.f3110b = context.getApplicationContext();
        this.f3111c = hVar;
    }

    /* renamed from: b */
    static Intent m11634b(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    /* renamed from: c */
    private static PendingIntent m11633c(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m11634b(context), i);
    }

    /* renamed from: e */
    static void m11631e(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent c = m11633c(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f3109e;
        if (alarmManager == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, currentTimeMillis, c);
        } else {
            alarmManager.set(0, currentTimeMillis, c);
        }
    }

    /* renamed from: a */
    public boolean m11635a() {
        if (Build.VERSION.SDK_INT >= 23) {
            b.d(this.f3110b);
        }
        WorkDatabase n = this.f3111c.n();
        AbstractC0591k y = n.y();
        n.m12319c();
        try {
            List<C0589j> b = y.m11663b();
            boolean z = b != null && !b.isEmpty();
            if (z) {
                for (C0589j jVar : b) {
                    y.m11664a(WorkInfo$State.ENQUEUED, jVar.f3085a);
                    y.m11661d(jVar.f3085a, -1L);
                }
            }
            n.m12305q();
            n.m12315g();
            return z;
        } catch (Throwable th) {
            n.m12315g();
            throw th;
        }
    }

    /* renamed from: d */
    public boolean m11632d() {
        if (m11633c(this.f3110b, 536870912) != null) {
            return false;
        }
        m11631e(this.f3110b);
        return true;
    }

    /* renamed from: f */
    boolean m11630f() {
        return this.f3111c.k().m11607b();
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC0555f c = AbstractC0555f.m11741c();
        String str = f3108d;
        c.m11743a(str, "Performing cleanup operations.", new Throwable[0]);
        boolean a = m11635a();
        if (m11630f()) {
            AbstractC0555f.m11741c().m11743a(str, "Rescheduling Workers.", new Throwable[0]);
            this.f3111c.r();
            this.f3111c.k().m11606c(false);
        } else if (m11632d()) {
            AbstractC0555f.m11741c().m11743a(str, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f3111c.r();
        } else if (a) {
            AbstractC0555f.m11741c().m11743a(str, "Found unfinished work, scheduling it.", new Throwable[0]);
            C0571e.m11716b(this.f3111c.h(), this.f3111c.n(), this.f3111c.m());
        }
        this.f3111c.q();
    }
}
