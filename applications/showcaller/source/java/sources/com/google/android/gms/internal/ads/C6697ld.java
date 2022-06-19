package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ld */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ld.class */
public final class C6697ld implements AbstractC7030ud {

    /* renamed from: a */
    public final int[] f26041a;

    /* renamed from: b */
    public final long[] f26042b;

    /* renamed from: c */
    public final long[] f26043c;

    /* renamed from: d */
    public final long[] f26044d;

    /* renamed from: e */
    private final long f26045e;

    public C6697ld(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f26041a = iArr;
        this.f26042b = jArr;
        this.f26043c = jArr2;
        this.f26044d = jArr3;
        int length = iArr.length;
        if (length <= 0) {
            this.f26045e = 0L;
            return;
        }
        int i = length - 1;
        this.f26045e = jArr2[i] + jArr3[i];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7030ud
    /* renamed from: a */
    public final long mo10352a(long j) {
        return this.f26042b[C6961si.m11014h(this.f26044d, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7030ud
    /* renamed from: b */
    public final long mo10351b() {
        return this.f26045e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7030ud
    public final boolean zza() {
        return true;
    }
}
