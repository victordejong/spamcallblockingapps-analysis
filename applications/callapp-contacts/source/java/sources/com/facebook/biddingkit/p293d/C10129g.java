package com.facebook.biddingkit.p293d;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.facebook.biddingkit.d.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/g.class */
public class C10129g {

    /* renamed from: g */
    private static volatile C10129g f33513g;

    /* renamed from: a */
    private int f33514a;

    /* renamed from: f */
    private C10139j f33519f;

    /* renamed from: b */
    private final Handler f33515b = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    private final ThreadPoolExecutor f33518e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* renamed from: c */
    private final Runnable f33516c = new Runnable() { // from class: com.facebook.biddingkit.d.g.1
        @Override // java.lang.Runnable
        public final void run() {
            C10129g.m23357a(C10129g.this);
            C10129g.this.f33515b.postDelayed(C10129g.this.f33517d, C10129g.this.f33514a);
        }
    };

    /* renamed from: d */
    private final Runnable f33517d = new Runnable() { // from class: com.facebook.biddingkit.d.g.2
        @Override // java.lang.Runnable
        public final void run() {
            if (C10129g.this.f33518e.getQueue().isEmpty()) {
                C10129g.this.f33518e.execute(C10129g.this.f33516c);
            }
        }
    };

    private C10129g() {
    }

    /* renamed from: a */
    private static C10129g m23358a() {
        if (f33513g == null) {
            synchronized (C10129g.class) {
                try {
                    if (f33513g == null) {
                        f33513g = new C10129g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f33513g;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[Catch: all -> 0x00bb, LOOP:1: B:20:0x009f->B:23:0x00a8, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x00bb, blocks: (B:3:0x0010, B:6:0x0020, B:8:0x002a, B:10:0x0032, B:11:0x0047, B:13:0x0071, B:16:0x007f, B:17:0x008d, B:19:0x0099, B:21:0x00a0, B:23:0x00a8), top: B:28:0x0010 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void m23357a(com.facebook.biddingkit.p293d.C10129g r4) {
        /*
            org.json.JSONArray r0 = new org.json.JSONArray
            r1 = r0
            r1.<init>()
            r5 = r0
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = 10
            java.util.List r0 = com.facebook.biddingkit.p293d.C10128f.m23362a(r0)     // Catch: java.lang.Throwable -> Lbb
            r7 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbb
            if (r0 == 0) goto L20
            return
        L20:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lbb
            r8 = r0
        L28:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Lbb
            if (r0 == 0) goto L47
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> Lbb
            com.facebook.biddingkit.d.e r1 = (com.facebook.biddingkit.p293d.C10126e) r1     // Catch: java.lang.Throwable -> Lbb
            org.json.JSONObject r1 = r1.m23365b()     // Catch: java.lang.Throwable -> Lbb
            org.json.JSONArray r0 = r0.put(r1)     // Catch: java.lang.Throwable -> Lbb
            goto L28
        L47:
            r0 = r6
            java.lang.String r1 = "tokens"
            org.json.JSONObject r2 = com.facebook.biddingkit.p293d.C10122a.m23372a()     // Catch: java.lang.Throwable -> Lbb
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lbb
            r0 = r6
            java.lang.String r1 = "events"
            r2 = r5
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lbb
            r0 = r4
            com.facebook.biddingkit.d.j r0 = r0.f33519f     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r0 = r0.f33531c     // Catch: java.lang.Throwable -> Lbb
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = r6
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lbb
            com.facebook.biddingkit.http.client.f r0 = com.facebook.biddingkit.http.p296a.C10156c.m23335a(r0, r1, r2)     // Catch: java.lang.Throwable -> Lbb
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L8d
            r0 = r8
            int r0 = r0.f33581a     // Catch: java.lang.Throwable -> Lbb
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 == r1) goto L7f
            goto L8d
        L7f:
            r0 = r4
            r1 = r4
            com.facebook.biddingkit.d.j r1 = r1.f33519f     // Catch: java.lang.Throwable -> Lbb
            int r1 = r1.f33529a     // Catch: java.lang.Throwable -> Lbb
            r0.f33514a = r1     // Catch: java.lang.Throwable -> Lbb
            goto L98
        L8d:
            r0 = r4
            r1 = r4
            com.facebook.biddingkit.d.j r1 = r1.f33519f     // Catch: java.lang.Throwable -> Lbb
            int r1 = r1.f33530b     // Catch: java.lang.Throwable -> Lbb
            r0.f33514a = r1     // Catch: java.lang.Throwable -> Lbb
        L98:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lbb
            r4 = r0
        L9f:
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Lbb
            if (r0 == 0) goto Lba
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Lbb
            com.facebook.biddingkit.d.e r0 = (com.facebook.biddingkit.p293d.C10126e) r0     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r0 = r0.f33506a     // Catch: java.lang.Throwable -> Lbb
            com.facebook.biddingkit.p293d.C10128f.m23359a(r0)     // Catch: java.lang.Throwable -> Lbb
            goto L9f
        Lba:
            return
        Lbb:
            r4 = move-exception
            boolean r0 = com.facebook.biddingkit.p293d.C10138i.m23347a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.biddingkit.p293d.C10129g.m23357a(com.facebook.biddingkit.d.g):void");
    }

    /* renamed from: a */
    public static void m23356a(C10139j c10139j) {
        C10129g m23358a = m23358a();
        m23358a.f33519f = c10139j;
        m23358a.f33514a = c10139j.f33529a;
        C10129g m23358a2 = m23358a();
        m23358a2.f33515b.postDelayed(m23358a2.f33517d, m23358a2.f33514a);
    }
}
