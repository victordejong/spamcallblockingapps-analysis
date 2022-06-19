package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzk.class */
public final class zzfzk extends zzfyg<zzgcl, zzgci> {
    public final /* synthetic */ zzfzl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzk(zzfzl zzfzlVar, Class cls) {
        super(cls);
        this.zza = zzfzlVar;
    }

    public static final zzgci zzg(zzgcl zzgclVar) throws GeneralSecurityException {
        zzgch zzc = zzgci.zzc();
        zzc.zzb(zzgclVar.zzg());
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgclVar.zza())));
        zzc.zzc(0);
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgcl zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgcl.zzf(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgci zzc(zzgcl zzgclVar) throws GeneralSecurityException {
        return zzg(zzgclVar);
    }

    /* renamed from: zzf */
    public final void zze(zzgcl zzgclVar) throws GeneralSecurityException {
        zzgii.zza(zzgclVar.zza());
        zzfzl zzfzlVar = this.zza;
        zzfzl.zzm(zzgclVar.zzg());
    }
}
