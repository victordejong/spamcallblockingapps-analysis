package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjf.class */
public final class zzdjf implements zzeoy<String> {

    /* renamed from: a */
    public final zzdiy f27409a;

    public zzdjf(zzdiy zzdiyVar) {
        this.f27409a = zzdiyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        String g = this.f27409a.m13583g();
        zzepe.m12187a(g, "Cannot return null from a non-@Nullable @Provides method");
        return g;
    }
}
