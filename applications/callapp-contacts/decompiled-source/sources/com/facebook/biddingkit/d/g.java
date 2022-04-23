package com.facebook.biddingkit.d;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/g.class */
public class g {
    private static volatile g g;

    /* renamed from: a  reason: collision with root package name */
    private int f19712a;
    private j f;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f19713b = new Handler(Looper.getMainLooper());
    private final ThreadPoolExecutor e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f19714c = new Runnable() { // from class: com.facebook.biddingkit.d.g.1
        @Override // java.lang.Runnable
        public final void run() {
            g.a(g.this);
            g.this.f19713b.postDelayed(g.this.f19715d, g.this.f19712a);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f19715d = new Runnable() { // from class: com.facebook.biddingkit.d.g.2
        @Override // java.lang.Runnable
        public final void run() {
            if (g.this.e.getQueue().isEmpty()) {
                g.this.e.execute(g.this.f19714c);
            }
        }
    };

    private g() {
    }

    private static g a() {
        if (g == null) {
            synchronized (g.class) {
                try {
                    if (g == null) {
                        g = new g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[Catch: all -> 0x00bb, LOOP:1: B:20:0x009f->B:23:0x00a8, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x00bb, blocks: (B:3:0x0010, B:6:0x0020, B:8:0x002a, B:10:0x0032, B:11:0x0047, B:13:0x0071, B:16:0x007f, B:17:0x008d, B:19:0x0099, B:21:0x00a0, B:23:0x00a8), top: B:28:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.facebook.biddingkit.d.g r4) {
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
            java.util.List r0 = com.facebook.biddingkit.d.f.a(r0)     // Catch: all -> 0x00bb
            r7 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00bb
            if (r0 == 0) goto L_0x0020
            return
        L_0x0020:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00bb
            r8 = r0
        L_0x0028:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00bb
            if (r0 == 0) goto L_0x0047
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.next()     // Catch: all -> 0x00bb
            com.facebook.biddingkit.d.e r1 = (com.facebook.biddingkit.d.e) r1     // Catch: all -> 0x00bb
            org.json.JSONObject r1 = r1.b()     // Catch: all -> 0x00bb
            org.json.JSONArray r0 = r0.put(r1)     // Catch: all -> 0x00bb
            goto L_0x0028
        L_0x0047:
            r0 = r6
            java.lang.String r1 = "tokens"
            org.json.JSONObject r2 = com.facebook.biddingkit.d.a.a()     // Catch: all -> 0x00bb
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: all -> 0x00bb
            r0 = r6
            java.lang.String r1 = "events"
            r2 = r5
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: all -> 0x00bb
            r0 = r4
            com.facebook.biddingkit.d.j r0 = r0.f     // Catch: all -> 0x00bb
            java.lang.String r0 = r0.f19727c     // Catch: all -> 0x00bb
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = r6
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00bb
            com.facebook.biddingkit.http.client.f r0 = com.facebook.biddingkit.http.a.c.a(r0, r1, r2)     // Catch: all -> 0x00bb
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x008d
            r0 = r8
            int r0 = r0.f19765a     // Catch: all -> 0x00bb
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 == r1) goto L_0x007f
            goto L_0x008d
        L_0x007f:
            r0 = r4
            r1 = r4
            com.facebook.biddingkit.d.j r1 = r1.f     // Catch: all -> 0x00bb
            int r1 = r1.f19725a     // Catch: all -> 0x00bb
            r0.f19712a = r1     // Catch: all -> 0x00bb
            goto L_0x0098
        L_0x008d:
            r0 = r4
            r1 = r4
            com.facebook.biddingkit.d.j r1 = r1.f     // Catch: all -> 0x00bb
            int r1 = r1.f19726b     // Catch: all -> 0x00bb
            r0.f19712a = r1     // Catch: all -> 0x00bb
        L_0x0098:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00bb
            r4 = r0
        L_0x009f:
            r0 = r4
            boolean r0 = r0.hasNext()     // Catch: all -> 0x00bb
            if (r0 == 0) goto L_0x00ba
            r0 = r4
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00bb
            com.facebook.biddingkit.d.e r0 = (com.facebook.biddingkit.d.e) r0     // Catch: all -> 0x00bb
            java.lang.String r0 = r0.f19705a     // Catch: all -> 0x00bb
            com.facebook.biddingkit.d.f.a(r0)     // Catch: all -> 0x00bb
            goto L_0x009f
        L_0x00ba:
            return
        L_0x00bb:
            r4 = move-exception
            boolean r0 = com.facebook.biddingkit.d.i.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.biddingkit.d.g.a(com.facebook.biddingkit.d.g):void");
    }

    public static void a(j jVar) {
        g a2 = a();
        a2.f = jVar;
        a2.f19712a = jVar.f19725a;
        g a3 = a();
        a3.f19713b.postDelayed(a3.f19715d, a3.f19712a);
    }
}
