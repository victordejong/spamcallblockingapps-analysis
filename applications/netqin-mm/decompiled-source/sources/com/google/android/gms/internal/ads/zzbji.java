package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbji.class */
public final class zzbji implements zzeoy<String> {

    /* renamed from: a */
    public final zzbja f25053a;

    public zzbji(zzbja zzbjaVar) {
        this.f25053a = zzbjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        String d = this.f25053a.m15425d();
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }
}
