package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmt.class */
public final class zzbmt implements zzeqb<zzcrj<zzblv>> {
    private final zzeqo<zzcsg> zzfnj;
    private final zzeqo<zzcta> zzfnk;
    private final zzeqo<zzdnp> zzfvf;

    public zzbmt(zzeqo<zzdnp> zzeqoVar, zzeqo<zzcta> zzeqoVar2, zzeqo<zzcsg> zzeqoVar3) {
        this.zzfvf = zzeqoVar;
        this.zzfnk = zzeqoVar2;
        this.zzfnj = zzeqoVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.zzcsg] */
    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzdnp zzdnpVar = this.zzfvf.get();
        zzcta zzctaVar = this.zzfnk.get();
        zzcta zzctaVar2 = this.zzfnj.get();
        if (zzdnpVar.zzavc() != null) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpz)).booleanValue()) {
                zzctaVar2 = zzctaVar;
            }
        }
        return (zzcrj) zzeqh.zza(zzctaVar2, "Cannot return null from a non-@Nullable @Provides method");
    }
}
