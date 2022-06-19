package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddf.class */
public final class ddf<P> {

    /* renamed from: a */
    final P f46972a;

    /* renamed from: b */
    final dii f46973b;

    /* renamed from: c */
    final djb f46974c;

    /* renamed from: d */
    private final byte[] f46975d;

    /* renamed from: e */
    private final int f46976e;

    public ddf(P p, byte[] bArr, dii diiVar, djb djbVar, int i) {
        this.f46972a = p;
        this.f46975d = Arrays.copyOf(bArr, bArr.length);
        this.f46973b = diiVar;
        this.f46974c = djbVar;
        this.f46976e = i;
    }

    /* renamed from: a */
    public final byte[] m16851a() {
        byte[] bArr = this.f46975d;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
