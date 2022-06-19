package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kw3.class */
final class kw3 {

    /* renamed from: a */
    private final yr3 f25858a;

    /* renamed from: b */
    private boolean f25859b;

    /* renamed from: c */
    private boolean f25860c;

    /* renamed from: d */
    private boolean f25861d;

    /* renamed from: e */
    private int f25862e;

    /* renamed from: f */
    private int f25863f;

    /* renamed from: g */
    private long f25864g;

    /* renamed from: h */
    private long f25865h;

    public kw3(yr3 yr3Var) {
        this.f25858a = yr3Var;
    }

    /* renamed from: a */
    public final void m13766a() {
        this.f25859b = false;
        this.f25860c = false;
        this.f25861d = false;
        this.f25862e = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13765b(int r5, long r6) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.f25862e = r1
            r0 = r4
            r1 = 0
            r0.f25861d = r1
            r0 = 1
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r5
            r1 = 182(0xb6, float:2.55E-43)
            if (r0 == r1) goto L2c
            r0 = r5
            r1 = 179(0xb3, float:2.51E-43)
            if (r0 != r1) goto L26
            r0 = 179(0xb3, float:2.51E-43)
            r9 = r0
            goto L2c
        L26:
            r0 = 0
            r10 = r0
            goto L32
        L2c:
            r0 = 1
            r10 = r0
            r0 = r9
            r5 = r0
        L32:
            r0 = r4
            r1 = r10
            r0.f25859b = r1
            r0 = r5
            r1 = 182(0xb6, float:2.55E-43)
            if (r0 != r1) goto L46
            r0 = r8
            r10 = r0
            goto L49
        L46:
            r0 = 0
            r10 = r0
        L49:
            r0 = r4
            r1 = r10
            r0.f25860c = r1
            r0 = r4
            r1 = 0
            r0.f25863f = r1
            r0 = r4
            r1 = r6
            r0.f25865h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kw3.m13765b(int, long):void");
    }

    /* renamed from: c */
    public final void m13764c(byte[] bArr, int i, int i2) {
        if (this.f25860c) {
            int i3 = this.f25863f;
            int i4 = (i + 1) - i3;
            if (i4 >= i2) {
                this.f25863f = i3 + (i2 - i);
                return;
            }
            this.f25861d = ((bArr[i4] & 192) >> 6) == 0;
            this.f25860c = false;
        }
    }

    /* renamed from: d */
    public final void m13763d(long j, int i, boolean z) {
        if (this.f25862e == 182 && z && this.f25859b) {
            long j2 = this.f25865h;
            if (j2 != -9223372036854775807L) {
                long j3 = this.f25864g;
                this.f25858a.mo8705c(j2, this.f25861d ? 1 : 0, (int) (j - j3), i, null);
            }
        }
        if (this.f25862e != 179) {
            this.f25864g = j;
        }
    }
}
