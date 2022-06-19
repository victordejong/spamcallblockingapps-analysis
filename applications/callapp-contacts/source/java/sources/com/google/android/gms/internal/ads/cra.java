package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cra.class */
final class cra implements cwg {

    /* renamed from: a */
    private final /* synthetic */ cuy f46413a;

    public cra(cuy cuyVar) {
        this.f46413a = cuyVar;
    }

    @Override // com.google.android.gms.internal.ads.cwg
    public final void zza(int i, long j) {
        this.f46413a.m17193a(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.cwg
    public final void zza(int i, long j, String str) {
        this.f46413a.m17184b(i, System.currentTimeMillis() - j, str);
    }
}
