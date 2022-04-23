package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkz.class */
public final class zzbkz implements zzeoy<zzacg> {

    /* renamed from: a */
    public final zzbky f25120a;

    public zzbkz(zzbky zzbkyVar) {
        this.f25120a = zzbkyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzacg d = this.f25120a.m15343d();
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }
}
