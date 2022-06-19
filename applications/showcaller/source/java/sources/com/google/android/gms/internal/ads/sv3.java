package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sv3.class */
public final class sv3 extends qv3 {

    /* renamed from: n */
    private rv3 f29710n;

    /* renamed from: o */
    private int f29711o;

    /* renamed from: p */
    private boolean f29712p;

    /* renamed from: q */
    private ds3 f29713q;

    /* renamed from: r */
    private as3 f29714r;

    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: a */
    public final void mo10897a(boolean z) {
        super.mo10897a(z);
        if (z) {
            this.f29710n = null;
            this.f29713q = null;
            this.f29714r = null;
        }
        this.f29711o = 0;
        this.f29712p = false;
    }

    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: b */
    protected final long mo10896b(C6694la c6694la) {
        int i = 0;
        if ((c6694la.m13634q()[0] & 1) == 1) {
            return -1L;
        }
        byte b = c6694la.m13634q()[0];
        rv3 rv3Var = this.f29710n;
        C7173y8.m8894e(rv3Var);
        int i2 = !rv3Var.f29262d[(b >> 1) & (255 >>> (8 - rv3Var.f29263e))].f21370a ? rv3Var.f29259a.f21852e : rv3Var.f29259a.f21853f;
        if (this.f29712p) {
            i = (this.f29711o + i2) / 4;
        }
        long j = i;
        if (c6694la.m13633r() < c6694la.m13638m() + 4) {
            byte[] copyOf = Arrays.copyOf(c6694la.m13634q(), c6694la.m13638m() + 4);
            c6694la.m13641j(copyOf, copyOf.length);
        } else {
            c6694la.m13637n(c6694la.m13638m() + 4);
        }
        byte[] m13634q = c6694la.m13634q();
        m13634q[c6694la.m13638m() - 4] = (byte) (j & 255);
        m13634q[c6694la.m13638m() - 3] = (byte) ((j >>> 8) & 255);
        m13634q[c6694la.m13638m() - 2] = (byte) ((j >>> 16) & 255);
        m13634q[c6694la.m13638m() - 1] = (byte) ((j >>> 24) & 255);
        this.f29712p = true;
        this.f29711o = i2;
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x06bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x06be  */
    /* JADX WARN: Type inference failed for: r0v263, types: [long] */
    /* JADX WARN: Type inference failed for: r0v270, types: [long] */
    @Override // com.google.android.gms.internal.ads.qv3
    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean mo10895c(com.google.android.gms.internal.ads.C6694la r15, long r16, com.google.android.gms.internal.ads.ov3 r18) {
        /*
            Method dump skipped, instructions count: 1843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sv3.mo10895c(com.google.android.gms.internal.ads.la, long, com.google.android.gms.internal.ads.ov3):boolean");
    }

    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: i */
    public final void mo10894i(long j) {
        super.mo10894i(j);
        int i = 0;
        this.f29712p = j != 0;
        ds3 ds3Var = this.f29713q;
        if (ds3Var != null) {
            i = ds3Var.f21852e;
        }
        this.f29711o = i;
    }
}
