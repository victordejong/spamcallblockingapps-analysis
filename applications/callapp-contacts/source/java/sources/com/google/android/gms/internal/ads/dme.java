package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dme.class */
public final class dme {

    /* renamed from: a */
    final zzemk f47205a;

    /* renamed from: b */
    private final byte[] f47206b;

    private dme(int i) {
        byte[] bArr = new byte[i];
        this.f47206b = bArr;
        this.f47205a = zzemk.m13710a(bArr);
    }

    public /* synthetic */ dme(int i, dlv dlvVar) {
        this(i);
    }

    /* renamed from: a */
    public final dlw m16462a() {
        this.f47205a.m13673i();
        return new dmh(this.f47206b);
    }
}
