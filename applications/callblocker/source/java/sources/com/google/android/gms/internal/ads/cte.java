package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cte.class */
public final class cte<P> {

    /* renamed from: a */
    private final P f13654a;

    /* renamed from: b */
    private final byte[] f13655b;

    /* renamed from: c */
    private final cxy f13656c;

    /* renamed from: d */
    private final cyq f13657d;

    /* renamed from: e */
    private final int f13658e;

    public cte(P p, byte[] bArr, cxy cxyVar, cyq cyqVar, int i) {
        this.f13654a = p;
        this.f13655b = Arrays.copyOf(bArr, bArr.length);
        this.f13656c = cxyVar;
        this.f13657d = cyqVar;
        this.f13658e = i;
    }

    /* renamed from: a */
    public final P m10698a() {
        return this.f13654a;
    }

    /* renamed from: b */
    public final cxy m10697b() {
        return this.f13656c;
    }

    /* renamed from: c */
    public final cyq m10696c() {
        return this.f13657d;
    }

    /* renamed from: d */
    public final byte[] m10695d() {
        return this.f13655b == null ? null : Arrays.copyOf(this.f13655b, this.f13655b.length);
    }
}
