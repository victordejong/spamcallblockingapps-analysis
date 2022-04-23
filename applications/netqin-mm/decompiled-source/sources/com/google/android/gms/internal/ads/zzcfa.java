package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfa.class */
public final class zzcfa implements zzeoy<zzcei> {

    /* renamed from: a */
    public final zzceu f25902a;

    public zzcfa(zzceu zzceuVar) {
        this.f25902a = zzceuVar;
    }

    /* renamed from: a */
    public static zzcfa m14359a(zzceu zzceuVar) {
        return new zzcfa(zzceuVar);
    }

    /* renamed from: b */
    public static zzcei m14358b(zzceu zzceuVar) {
        zzcei a = zzceuVar.m14645a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14358b(this.f25902a);
    }
}
