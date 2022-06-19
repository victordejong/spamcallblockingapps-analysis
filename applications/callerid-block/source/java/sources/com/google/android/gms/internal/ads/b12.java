package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/b12.class */
public final class b12<P> {

    /* renamed from: a */
    private final P f6109a;

    /* renamed from: b */
    private final byte[] f6110b;

    /* renamed from: c */
    private final zzeoa f6111c;

    /* renamed from: d */
    private final zzepe f6112d;

    public b12(P p, byte[] bArr, zzeoa zzeoaVar, zzepe zzepeVar, int i) {
        this.f6109a = p;
        this.f6110b = Arrays.copyOf(bArr, bArr.length);
        this.f6111c = zzeoaVar;
        this.f6112d = zzepeVar;
    }

    /* renamed from: a */
    public final P m8063a() {
        return this.f6109a;
    }

    /* renamed from: b */
    public final zzeoa m8062b() {
        return this.f6111c;
    }

    /* renamed from: c */
    public final zzepe m8061c() {
        return this.f6112d;
    }

    /* renamed from: d */
    public final byte[] m8060d() {
        byte[] bArr = this.f6110b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
