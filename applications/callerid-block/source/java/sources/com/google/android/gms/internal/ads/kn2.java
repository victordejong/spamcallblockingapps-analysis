package com.google.android.gms.internal.ads;

import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kn2.class */
final class kn2 {

    /* renamed from: a */
    private final byte[] f7008a = new byte[8];

    /* renamed from: b */
    private final Stack<jn2> f7009b = new Stack<>();

    /* renamed from: c */
    private final qn2 f7010c = new qn2();

    /* renamed from: d */
    private int f7011d;

    /* renamed from: e */
    private int f7012e;

    /* renamed from: f */
    private long f7013f;

    /* renamed from: g */
    private mn2 f7014g;

    kn2() {
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: d */
    private final long m6779d(xm2 xm2Var, int i) {
        xm2Var.m4894b(this.f7008a, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f7008a[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final void m6782a() {
        this.f7011d = 0;
        this.f7009b.clear();
        this.f7010c.m6086a();
    }

    /* renamed from: b */
    public final void m6781b(mn2 mn2Var) {
        this.f7014g = mn2Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ec, code lost:
        if (r0 == 1) goto L32;
     */
    /* JADX WARN: Type inference failed for: r0v114, types: [double] */
    /* JADX WARN: Type inference failed for: r0v118, types: [double] */
    /* JADX WARN: Type inference failed for: r0v135, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6780c(com.google.android.gms.internal.ads.xm2 r10) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kn2.m6780c(com.google.android.gms.internal.ads.xm2):boolean");
    }
}
