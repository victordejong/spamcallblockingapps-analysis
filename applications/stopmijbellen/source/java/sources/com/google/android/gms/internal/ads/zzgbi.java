package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbi.class */
public final class zzgbi extends zzfyi<zzgbt> {
    public zzgbi() {
        super(zzgbt.class, new zzgbg(zzfym.class));
    }

    public static void zzm(zzgbz zzgbzVar) throws GeneralSecurityException {
        if (zzgbzVar.zza() >= 10) {
            if (zzgbzVar.zza() > 16) {
                throw new GeneralSecurityException("tag size too long");
            }
            return;
        }
        throw new GeneralSecurityException("tag size too short");
    }

    public static void zzn(int i) throws GeneralSecurityException {
        if (i == 32) {
            return;
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgbt> zza() {
        return new zzgbh(this, zzgbw.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgbt zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgbt.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgbt zzgbtVar) throws GeneralSecurityException {
        zzgbt zzgbtVar2 = zzgbtVar;
        zzgii.zzb(zzgbtVar2.zza(), 0);
        zzn(zzgbtVar2.zzg().zzd());
        zzm(zzgbtVar2.zzf());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
