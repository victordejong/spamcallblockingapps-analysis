package com.kedlin.cca.core.sync;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.SystemClock;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.k61;
import p000.m91;
import p000.q71;
import p000.r71;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/sync/ServerSync.class */
public class ServerSync {

    /* renamed from: a */
    public static final String f3721a = "ServerSync";

    /* renamed from: d */
    public static ScheduledFuture<?> f3724d;

    /* renamed from: b */
    public static final String f3722b = ServerSync.class.getCanonicalName() + ".AWKSNK";

    /* renamed from: c */
    public static ScheduledExecutorService f3723c = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: e */
    public static SyncReceiver f3725e = null;

    /* renamed from: f */
    public static long f3726f = 0;

    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/sync/ServerSync$SyncReceiver.class */
    public static class SyncReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long unused = ServerSync.f3726f = r71.EnumC1638a.f7935Z0.m689g();
            ServerSync.m4354n();
        }
    }

    /* renamed from: com.kedlin.cca.core.sync.ServerSync$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/sync/ServerSync$a.class */
    public static final class RunnableC0640a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f3727a;

        public RunnableC0640a(Context context) {
            this.f3727a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentFilter intentFilter = new IntentFilter(ServerSync.f3722b);
            SyncReceiver unused = ServerSync.f3725e = new SyncReceiver();
            this.f3727a.registerReceiver(ServerSync.f3725e, intentFilter);
            ((AlarmManager) this.f3727a.getSystemService("alarm")).setInexactRepeating(2, SystemClock.elapsedRealtime(), 3600000L, PendingIntent.getBroadcast(this.f3727a, 0, new Intent(ServerSync.f3722b), 134217728));
        }
    }

    /* renamed from: com.kedlin.cca.core.sync.ServerSync$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/sync/ServerSync$b.class */
    public static final class RunnableC0641b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            ServerSync.m4355m();
        }
    }

    /* renamed from: com.kedlin.cca.core.sync.ServerSync$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/sync/ServerSync$c.class */
    public static final class RunnableC0642c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f3728a;

        public RunnableC0642c(Context context) {
            this.f3728a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3728a.sendBroadcast(new Intent(ServerSync.f3722b));
        }
    }

    /* renamed from: com.kedlin.cca.core.sync.ServerSync$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/sync/ServerSync$d.class */
    public static final class RunnableC0643d implements Runnable {
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0152 -> B:55:0x0022). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0156 -> B:42:0x013d). Please submit an issue!!! */
        @Override // java.lang.Runnable
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7933Y0;
            if (currentTimeMillis - enumC1638a.m689g() > 43200000) {
                try {
                    k61.m1444r();
                    enumC1638a.m682n(Long.valueOf(System.currentTimeMillis()));
                } catch (Throwable th) {
                }
            }
            try {
            } catch (Throwable th2) {
                if (!(th2 instanceof k61.C1456a) || th2.m1434b() != -500) {
                    j91.m1494v(th2, ServerSync.f3721a + " Unable to synchronize with server");
                } else {
                    j91.m1504l(ServerSync.f3721a, "Unable to synchronize with server", th2);
                }
            }
            if (ServerSync.f3726f > r71.EnumC1638a.f7992u0.m689g() && ServerSync.f3726f > r71.EnumC1638a.f7995v0.m689g() && ServerSync.f3726f > r71.EnumC1638a.f7998w0.m689g() && System.currentTimeMillis() - r71.EnumC1638a.f7931X0.m689g() < 86400000 && !ServerSync.m4358j()) {
                String unused = ServerSync.f3721a;
                return;
            }
            k61.m1436z();
            long unused2 = ServerSync.f3726f = System.currentTimeMillis();
            r71.EnumC1638a.f7935Z0.m682n(Long.valueOf(ServerSync.f3726f));
            try {
                k61.m1440v();
            } catch (Throwable th3) {
            }
            m91.m1281a(this, m91.EnumC1470c.SERVER_SYNC_MAIN_DATA_COMPLETE, null);
            if (!ServerSync.m4358j()) {
                m91.m1281a(this, m91.EnumC1470c.SERVER_SYNC_COMMUNITY_COMPLETE, null);
                return;
            }
            ServerSync.m4355m();
            try {
                ka1.m1412l();
            } catch (Throwable th4) {
                String str = ServerSync.f3721a;
                j91.m1505k(str, "Unable to deliver stats - " + th4.getMessage());
            }
            if (System.currentTimeMillis() - r71.EnumC1638a.f7937a1.m689g() >= 86400000) {
                k61.m1456f();
            }
            if (System.currentTimeMillis() - r71.EnumC1638a.f7939b1.m689g() >= 86400000) {
                try {
                    k61.m1441u();
                } catch (Throwable th5) {
                }
            }
            new j81().m1529F();
            new n81().m1219F();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
        if ((java.lang.System.currentTimeMillis() - p000.r71.EnumC1638a.f7931X0.m689g()) < p000.r71.EnumC1638a.f7999w1.m689g()) goto L6;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m4358j() {
        /*
            r71$a r0 = p000.r71.EnumC1638a.f8002x1
            r5 = r0
            r0 = r5
            int r0 = r0.m691e()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L26
            r0 = r7
            r8 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r71$a r1 = p000.r71.EnumC1638a.f7931X0
            long r1 = r1.m689g()
            long r0 = r0 - r1
            r71$a r1 = p000.r71.EnumC1638a.f7999w1
            long r1 = r1.m689g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L46
        L26:
            r0 = r5
            int r0 = r0.m691e()
            r1 = 1
            if (r0 == r1) goto L44
            long r0 = java.lang.System.currentTimeMillis()
            r71$a r1 = p000.r71.EnumC1638a.f7931X0
            long r1 = r1.m689g()
            long r0 = r0 - r1
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L44
            r0 = r7
            r8 = r0
            goto L46
        L44:
            r0 = 0
            r8 = r0
        L46:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.core.sync.ServerSync.m4358j():boolean");
    }

    /* renamed from: k */
    public static void m4357k() {
        if (!ta1.GROUP_PHONE.m531d() || r71.m709m().length < 1) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = f3724d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            f3724d = null;
        }
        f3724d = f3723c.schedule(new RunnableC0641b(), 1000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: l */
    public static void m4356l() {
        if (f3725e == null) {
            Application m1840j = fa1.m1840j();
            new Handler(m1840j.getMainLooper()).post(new RunnableC0640a(m1840j));
        }
        f3726f = 0L;
        m4354n();
    }

    /* renamed from: m */
    public static void m4355m() {
        r71.m730F(q71.EnumC1617d.UNKNOWN);
        try {
            k61.m1454h();
            r71.m730F(q71.EnumC1617d.SUCCESS);
        } catch (Throwable th) {
            if (!(th instanceof k61.C1456a) || th.m1434b() != -500) {
                j91.m1494v(th, f3721a + " Unable to synchronize with server");
            } else {
                j91.m1504l(f3721a, "Unable to synchronize with server", th);
            }
            r71.m730F(q71.EnumC1617d.ERROR);
        }
        m91.m1281a(fa1.m1839k(), m91.EnumC1470c.SERVER_SYNC_COMMUNITY_COMPLETE, null);
    }

    /* renamed from: n */
    public static void m4354n() {
        if (ta1.GROUP_PHONE.m531d() && fa1.m1827w()) {
            ScheduledFuture<?> scheduledFuture = f3724d;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                f3724d = null;
            }
            f3724d = f3723c.schedule(new RunnableC0643d(), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: o */
    public static void m4353o() {
        Application m1840j = fa1.m1840j();
        new Handler(m1840j.getMainLooper()).post(new RunnableC0642c(m1840j));
    }
}
