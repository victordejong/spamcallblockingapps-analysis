package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d23.class */
public final class d23<P> {

    /* renamed from: a */
    private final P f21464a;

    /* renamed from: b */
    private final byte[] f21465b;

    /* renamed from: c */
    private final int f21466c;

    /* renamed from: d */
    private final int f21467d;

    public d23(P p, byte[] bArr, int i, int i2, int i3) {
        this.f21464a = p;
        this.f21465b = Arrays.copyOf(bArr, bArr.length);
        this.f21466c = i;
        this.f21467d = i2;
    }

    /* renamed from: a */
    public final P m15958a() {
        return this.f21464a;
    }

    /* renamed from: b */
    public final byte[] m15957b() {
        byte[] bArr = this.f21465b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* renamed from: c */
    public final int m15956c() {
        return this.f21466c;
    }

    /* renamed from: d */
    public final int m15955d() {
        return this.f21467d;
    }
}
