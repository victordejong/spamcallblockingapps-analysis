package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ip3.class */
public final class ip3 {

    /* renamed from: a */
    private final xo3 f24374a = new xo3();

    /* renamed from: b */
    private final ep3 f24375b;

    /* renamed from: c */
    private final hp3 f24376c;

    /* renamed from: d */
    private boolean f24377d;

    /* renamed from: e */
    private Surface f24378e;

    /* renamed from: f */
    private float f24379f;

    /* renamed from: g */
    private float f24380g;

    /* renamed from: h */
    private float f24381h;

    /* renamed from: i */
    private float f24382i;

    /* renamed from: j */
    private int f24383j;

    /* renamed from: k */
    private long f24384k;

    /* renamed from: l */
    private long f24385l;

    /* renamed from: m */
    private long f24386m;

    /* renamed from: n */
    private long f24387n;

    /* renamed from: o */
    private long f24388o;

    /* renamed from: p */
    private long f24389p;

    /* renamed from: q */
    private long f24390q;

    public ip3(Context context) {
        ep3 ep3Var;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            ep3 m14876c = C7101wa.f31475a >= 17 ? gp3.m14876c(applicationContext) : null;
            ep3Var = m14876c;
            if (m14876c == null) {
                ep3Var = fp3.m15117c(applicationContext);
            }
        } else {
            ep3Var = null;
        }
        this.f24375b = ep3Var;
        this.f24376c = ep3Var != null ? hp3.m14575a() : null;
        this.f24384k = -9223372036854775807L;
        this.f24385l = -9223372036854775807L;
        this.f24379f = -1.0f;
        this.f24382i = 1.0f;
        this.f24383j = 0;
    }

    /* renamed from: m */
    private final void m14312m() {
        this.f24386m = 0L;
        this.f24389p = -1L;
        this.f24387n = -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
        if (java.lang.Math.abs(r6 - r5.f24380g) >= r7) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0093, code lost:
        if (r5.f24374a.m9100d() >= 30) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009c, code lost:
        if (r8 == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
        return;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m14311n() {
        /*
            r5 = this;
            int r0 = com.google.android.gms.internal.ads.C7101wa.f31475a
            r1 = 30
            if (r0 < r1) goto Lad
            r0 = r5
            android.view.Surface r0 = r0.f24378e
            if (r0 != 0) goto L12
            goto Lad
        L12:
            r0 = r5
            com.google.android.gms.internal.ads.xo3 r0 = r0.f24374a
            boolean r0 = r0.m9101c()
            if (r0 == 0) goto L27
            r0 = r5
            com.google.android.gms.internal.ads.xo3 r0 = r0.f24374a
            float r0 = r0.m9097g()
            r6 = r0
            goto L2c
        L27:
            r0 = r5
            float r0 = r0.f24379f
            r6 = r0
        L2c:
            r0 = r5
            float r0 = r0.f24380g
            r7 = r0
            r0 = r6
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L38
            return
        L38:
            r0 = 1
            r8 = r0
            r0 = r6
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L85
            r0 = r7
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L85
            r0 = r5
            com.google.android.gms.internal.ads.xo3 r0 = r0.f24374a
            boolean r0 = r0.m9101c()
            r10 = r0
            r0 = 1065353216(0x3f800000, float:1.0)
            r11 = r0
            r0 = r11
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L74
            r0 = r11
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.xo3 r0 = r0.f24374a
            long r0 = r0.m9099e()
            r1 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L74
            r0 = 1017370378(0x3ca3d70a, float:0.02)
            r7 = r0
        L74:
            r0 = r6
            r1 = r5
            float r1 = r1.f24380g
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L99
            goto L9b
        L85:
            r0 = r9
            if (r0 != 0) goto La3
            r0 = r5
            com.google.android.gms.internal.ads.xo3 r0 = r0.f24374a
            int r0 = r0.m9100d()
            r1 = 30
            if (r0 < r1) goto L99
            goto L9b
        L99:
            r0 = 0
            r8 = r0
        L9b:
            r0 = r8
            if (r0 == 0) goto La2
            goto La3
        La2:
            return
        La3:
            r0 = r5
            r1 = r6
            r0.f24380g = r1
            r0 = r5
            r1 = 0
            r0.m14310o(r1)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ip3.m14311n():void");
    }

    /* renamed from: o */
    private final void m14310o(boolean z) {
        Surface surface;
        if (C7101wa.f31475a < 30 || (surface = this.f24378e) == null || this.f24383j == Integer.MIN_VALUE) {
            return;
        }
        float f = 0.0f;
        if (this.f24377d) {
            float f2 = this.f24380g;
            f = 0.0f;
            if (f2 != -1.0f) {
                f = this.f24382i * f2;
            }
        }
        if (!z && this.f24381h == f) {
            return;
        }
        this.f24381h = f;
        cp3.m15999a(surface, f);
    }

    /* renamed from: p */
    private final void m14309p() {
        Surface surface;
        if (C7101wa.f31475a < 30 || (surface = this.f24378e) == null || this.f24383j == Integer.MIN_VALUE || this.f24381h == 0.0f) {
            return;
        }
        this.f24381h = 0.0f;
        cp3.m15999a(surface, 0.0f);
    }

    /* renamed from: a */
    public final void m14324a(int i) {
        if (this.f24383j == i) {
            return;
        }
        this.f24383j = i;
        m14310o(true);
    }

    /* renamed from: b */
    public final void m14323b() {
        if (this.f24375b != null) {
            hp3 hp3Var = this.f24376c;
            Objects.requireNonNull(hp3Var);
            hp3Var.m14574b();
            this.f24375b.mo14878a(new dp3(this) { // from class: com.google.android.gms.internal.ads.bp3

                /* renamed from: a */
                private final ip3 f20548a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20548a = this;
                }

                @Override // com.google.android.gms.internal.ads.dp3
                /* renamed from: a */
                public final void mo15714a(Display display) {
                    this.f20548a.m14313l(display);
                }
            });
        }
    }

    /* renamed from: c */
    public final void m14322c() {
        this.f24377d = true;
        m14312m();
        m14310o(false);
    }

    /* renamed from: d */
    public final void m14321d(Surface surface) {
        Surface surface2 = surface;
        if (true == (surface instanceof zzlu)) {
            surface2 = null;
        }
        if (this.f24378e == surface2) {
            return;
        }
        m14309p();
        this.f24378e = surface2;
        m14310o(true);
    }

    /* renamed from: e */
    public final void m14320e() {
        m14312m();
    }

    /* renamed from: f */
    public final void m14319f(float f) {
        this.f24382i = f;
        m14312m();
        m14310o(false);
    }

    /* renamed from: g */
    public final void m14318g(float f) {
        this.f24379f = f;
        this.f24374a.m9103a();
        m14311n();
    }

    /* renamed from: h */
    public final void m14317h(long j) {
        long j2 = this.f24387n;
        if (j2 != -1) {
            this.f24389p = j2;
            this.f24390q = this.f24388o;
        }
        this.f24386m++;
        this.f24374a.m9102b(j * 1000);
        m14311n();
    }

    /* renamed from: i */
    public final void m14316i() {
        this.f24377d = false;
        m14309p();
    }

    /* renamed from: j */
    public final void m14315j() {
        ep3 ep3Var = this.f24375b;
        if (ep3Var != null) {
            ep3Var.mo14877b();
            hp3 hp3Var = this.f24376c;
            Objects.requireNonNull(hp3Var);
            hp3Var.m14573c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* renamed from: k */
    public final long m14314k(long j) {
        char c;
        char c2 = j;
        if (this.f24389p != -1) {
            c2 = j;
            if (this.f24374a.m9101c()) {
                c2 = this.f24390q + (((float) (this.f24374a.m9098f() * (this.f24386m - this.f24389p))) / this.f24382i);
                if (Math.abs(j - c2) > 20000000) {
                    m14312m();
                    c2 = j;
                }
            }
        }
        this.f24387n = this.f24386m;
        this.f24388o = c2;
        hp3 hp3Var = this.f24376c;
        if (hp3Var == null || this.f24384k == -9223372036854775807L) {
            return c2;
        }
        long j2 = hp3Var.f24005e;
        if (j2 == -9223372036854775807L) {
            return c2;
        }
        long j3 = this.f24384k;
        char c3 = j2 + (((c2 - j2) / j3) * j3);
        if (c2 <= c3) {
            c = c3 - j3;
        } else {
            c = c3;
            c3 = j3 + c3;
        }
        if (c3 - c2 >= c2 - c) {
            c3 = c;
        }
        return c3 - this.f24385l;
    }

    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void m14313l(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f24384k = refreshRate;
            this.f24385l = (refreshRate * 80) / 100;
            return;
        }
        Log.w("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f24384k = -9223372036854775807L;
        this.f24385l = -9223372036854775807L;
    }
}
