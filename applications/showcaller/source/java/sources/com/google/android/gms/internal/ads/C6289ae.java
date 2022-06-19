package com.google.android.gms.internal.ads;

import java.util.Stack;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ae */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ae.class */
public final class C6289ae {

    /* renamed from: a */
    private final byte[] f19914a = new byte[8];

    /* renamed from: b */
    private final Stack<C7141xd> f19915b = new Stack<>();

    /* renamed from: c */
    private final C6549he f19916c = new C6549he();

    /* renamed from: d */
    private int f19917d;

    /* renamed from: e */
    private int f19918e;

    /* renamed from: f */
    private long f19919f;

    /* renamed from: g */
    private C6363ce f19920g;

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: d */
    private final long m16620d(C6734md c6734md, int i) {
        c6734md.m13295b(this.f19914a, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f19914a[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final void m16623a() {
        this.f19917d = 0;
        this.f19915b.clear();
        this.f19916c.m14700a();
    }

    /* renamed from: b */
    public final void m16622b(C6363ce c6363ce) {
        this.f19920g = c6363ce;
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
    public final boolean m16621c(com.google.android.gms.internal.ads.C6734md r10) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6289ae.m16621c(com.google.android.gms.internal.ads.md):boolean");
    }
}
