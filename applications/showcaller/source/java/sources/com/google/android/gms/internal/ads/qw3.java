package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qw3.class */
final class qw3 {

    /* renamed from: a */
    private final yr3 f28663a;

    /* renamed from: b */
    private long f28664b;

    /* renamed from: c */
    private boolean f28665c;

    /* renamed from: d */
    private int f28666d;

    /* renamed from: e */
    private long f28667e;

    /* renamed from: f */
    private boolean f28668f;

    /* renamed from: g */
    private boolean f28669g;

    /* renamed from: h */
    private boolean f28670h;

    /* renamed from: i */
    private boolean f28671i;

    /* renamed from: j */
    private boolean f28672j;

    /* renamed from: k */
    private long f28673k;

    /* renamed from: l */
    private long f28674l;

    /* renamed from: m */
    private boolean f28675m;

    public qw3(yr3 yr3Var) {
        this.f28663a = yr3Var;
    }

    /* renamed from: e */
    private final void m11770e(int i) {
        long j = this.f28674l;
        if (j == -9223372036854775807L) {
            return;
        }
        boolean z = this.f28675m;
        long j2 = this.f28664b;
        long j3 = this.f28673k;
        this.f28663a.mo8705c(j, z ? 1 : 0, (int) (j2 - j3), i, null);
    }

    /* renamed from: a */
    public final void m11774a() {
        this.f28668f = false;
        this.f28669g = false;
        this.f28670h = false;
        this.f28671i = false;
        this.f28672j = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0092, code lost:
        if (r8 <= 9) goto L29;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11773b(long r5, int r7, int r8, long r9, boolean r11) {
        /*
            r4 = this;
            r0 = 0
            r12 = r0
            r0 = r4
            r1 = 0
            r0.f28669g = r1
            r0 = r4
            r1 = 0
            r0.f28670h = r1
            r0 = r4
            r1 = r9
            r0.f28667e = r1
            r0 = r4
            r1 = 0
            r0.f28666d = r1
            r0 = r4
            r1 = r5
            r0.f28664b = r1
            r0 = r8
            r1 = 32
            if (r0 < r1) goto L68
            r0 = r8
            r1 = 40
            if (r0 != r1) goto L2e
            goto L68
        L2e:
            r0 = r4
            boolean r0 = r0.f28671i
            if (r0 == 0) goto L4b
            r0 = r4
            boolean r0 = r0.f28672j
            if (r0 != 0) goto L4b
            r0 = r11
            if (r0 == 0) goto L46
            r0 = r4
            r1 = r7
            r0.m11770e(r1)
        L46:
            r0 = r4
            r1 = 0
            r0.f28671i = r1
        L4b:
            r0 = r8
            r1 = 35
            if (r0 <= r1) goto L59
            r0 = r8
            r1 = 39
            if (r0 != r1) goto L68
        L59:
            r0 = r4
            r1 = r4
            boolean r1 = r1.f28672j
            r2 = 1
            r1 = r1 ^ r2
            r0.f28670h = r1
            r0 = r4
            r1 = 1
            r0.f28672j = r1
        L68:
            r0 = r8
            r1 = 16
            if (r0 < r1) goto L7c
            r0 = r8
            r1 = 21
            if (r0 > r1) goto L7c
            r0 = 1
            r11 = r0
            goto L7f
        L7c:
            r0 = 0
            r11 = r0
        L7f:
            r0 = r4
            r1 = r11
            r0.f28665c = r1
            r0 = r11
            if (r0 != 0) goto L95
            r0 = r12
            r11 = r0
            r0 = r8
            r1 = 9
            if (r0 > r1) goto L98
        L95:
            r0 = 1
            r11 = r0
        L98:
            r0 = r4
            r1 = r11
            r0.f28668f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qw3.m11773b(long, int, int, long, boolean):void");
    }

    /* renamed from: c */
    public final void m11772c(byte[] bArr, int i, int i2) {
        if (this.f28668f) {
            int i3 = this.f28666d;
            int i4 = (i + 2) - i3;
            if (i4 >= i2) {
                this.f28666d = i3 + (i2 - i);
                return;
            }
            this.f28669g = (bArr[i4] & 128) != 0;
            this.f28668f = false;
        }
    }

    /* renamed from: d */
    public final void m11771d(long j, int i, boolean z) {
        if (this.f28672j && this.f28669g) {
            this.f28675m = this.f28665c;
            this.f28672j = false;
        } else if (!this.f28670h && !this.f28669g) {
        } else {
            if (z && this.f28671i) {
                m11770e(i + ((int) (j - this.f28664b)));
            }
            this.f28673k = this.f28664b;
            this.f28674l = this.f28667e;
            this.f28675m = this.f28665c;
            this.f28671i = true;
        }
    }
}
