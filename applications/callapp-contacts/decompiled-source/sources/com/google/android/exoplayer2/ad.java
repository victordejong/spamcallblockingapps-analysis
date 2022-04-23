package com.google.android.exoplayer2;

import android.os.Looper;
import com.google.android.exoplayer2.util.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    final b f20650a;

    /* renamed from: b  reason: collision with root package name */
    final al f20651b;

    /* renamed from: c  reason: collision with root package name */
    int f20652c;

    /* renamed from: d  reason: collision with root package name */
    Object f20653d;
    Looper e;
    int f;
    long g = -9223372036854775807L;
    boolean h = true;
    private final a i;
    private final c j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ad$a.class */
    public interface a {
        void a(ad adVar);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ad$b.class */
    public interface b {
        void a(int i, Object obj) throws ExoPlaybackException;
    }

    public ad(a aVar, b bVar, al alVar, int i, c cVar, Looper looper) {
        this.i = aVar;
        this.f20650a = bVar;
        this.f20651b = alVar;
        this.e = looper;
        this.j = cVar;
        this.f = i;
    }

    public final ad a() {
        com.google.android.exoplayer2.util.a.b(!this.k);
        if (this.g == -9223372036854775807L) {
            com.google.android.exoplayer2.util.a.a(this.h);
        }
        this.k = true;
        this.i.a(this);
        return this;
    }

    public final ad a(int i) {
        com.google.android.exoplayer2.util.a.b(!this.k);
        this.f20652c = i;
        return this;
    }

    public final ad a(Object obj) {
        com.google.android.exoplayer2.util.a.b(!this.k);
        this.f20653d = obj;
        return this;
    }

    public final void a(boolean z) {
        synchronized (this) {
            this.l = z | this.l;
            this.m = true;
            notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, com.google.android.exoplayer2.ad] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r6) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            boolean r0 = r0.k     // Catch: all -> 0x0074
            com.google.android.exoplayer2.util.a.b(r0)     // Catch: all -> 0x0074
            r0 = r5
            android.os.Looper r0 = r0.e     // Catch: all -> 0x0074
            java.lang.Thread r0 = r0.getThread()     // Catch: all -> 0x0074
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: all -> 0x0074
            if (r0 == r1) goto L_0x001b
            r0 = 1
            r8 = r0
            goto L_0x001d
        L_0x001b:
            r0 = 0
            r8 = r0
        L_0x001d:
            r0 = r8
            com.google.android.exoplayer2.util.a.b(r0)     // Catch: all -> 0x0074
            r0 = r5
            com.google.android.exoplayer2.util.c r0 = r0.j     // Catch: all -> 0x0074
            long r0 = r0.a()     // Catch: all -> 0x0074
            r9 = r0
            r0 = r6
            r11 = r0
        L_0x002f:
            r0 = r5
            boolean r0 = r0.m     // Catch: all -> 0x0074
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0058
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0058
            r0 = r5
            r1 = r11
            r0.wait(r1)     // Catch: all -> 0x0074
            r0 = r9
            r1 = r6
            long r0 = r0 + r1
            r1 = r5
            com.google.android.exoplayer2.util.c r1 = r1.j     // Catch: all -> 0x0074
            long r1 = r1.a()     // Catch: all -> 0x0074
            long r0 = r0 - r1
            r11 = r0
            goto L_0x002f
        L_0x0058:
            r0 = r8
            if (r0 == 0) goto L_0x0065
            r0 = r5
            boolean r0 = r0.l     // Catch: all -> 0x0074
            r8 = r0
            r0 = r5
            monitor-exit(r0)
            r0 = r8
            return r0
        L_0x0065:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException     // Catch: all -> 0x0074
            r13 = r0
            r0 = r13
            java.lang.String r1 = "Message delivery timed out."
            r0.<init>(r1)     // Catch: all -> 0x0074
            r0 = r13
            throw r0     // Catch: all -> 0x0074
        L_0x0074:
            r13 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ad.a(long):boolean");
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.n;
        }
        return z;
    }
}
