package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cra.class */
final class cra implements cwg {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ cuy f26287a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cra(cuy cuyVar) {
        this.f26287a = cuyVar;
    }

    @Override // com.google.android.gms.internal.ads.cwg
    public final void zza(int i, long j) {
        this.f26287a.a(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.cwg
    public final void zza(int i, long j, String str) {
        this.f26287a.b(i, System.currentTimeMillis() - j, str);
    }
}
