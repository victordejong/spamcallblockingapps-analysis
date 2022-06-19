package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetp.class */
public final class zzetp implements zzgla<zzetn> {
    private final zzgln<zzcft> zza;
    private final zzgln<zzfsn> zzb;
    private final zzgln<String> zzc;

    public zzetp(zzgln<zzcft> zzglnVar, zzgln<zzfsn> zzglnVar2, zzgln<String> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcft zzcftVar = new zzcft();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzetn(zzcftVar, zzfsnVar, ((zzety) this.zzc).zza(), null);
    }
}
