package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfuw.class */
public final class zzfuw extends zzfts<zzfxx, zzfxu> {
    public final /* synthetic */ zzfux zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfuw(zzfux zzfuxVar, Class cls) {
        super(cls);
        this.zza = zzfuxVar;
    }

    public static final zzfxu zzg(zzfxx zzfxxVar) throws GeneralSecurityException {
        zzfxt zzf = zzfxu.zzf();
        zzf.zzb(zzfxxVar.zza());
        zzf.zzc(zzgex.zzt(zzgds.zza(zzfxxVar.zzc())));
        zzf.zza(0);
        return zzf.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfxx zzc(zzgex zzgexVar) throws zzggm {
        return zzfxx.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfxu zzd(zzfxx zzfxxVar) throws GeneralSecurityException {
        return zzg(zzfxxVar);
    }

    /* renamed from: zzf */
    public final void zzb(zzfxx zzfxxVar) throws GeneralSecurityException {
        zzgdu.zza(zzfxxVar.zzc());
        zzfux zzfuxVar = this.zza;
        zzfux.zzm(zzfxxVar.zza());
    }
}
