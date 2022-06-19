package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzr.class */
public final class zzfzr extends zzfyi<zzgda> {
    public zzfzr() {
        super(zzgda.class, new zzfzp(zzfxu.class));
    }

    public static /* bridge */ /* synthetic */ zzfyf zzk(int i, int i2) {
        zzgdc zzc = zzgdd.zzc();
        zzc.zza(i);
        return new zzfyf(zzc.zzah(), i2);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgda> zza() {
        return new zzfzq(this, zzgdd.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgda zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgda.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgda zzgdaVar) throws GeneralSecurityException {
        zzgda zzgdaVar2 = zzgdaVar;
        zzgii.zzb(zzgdaVar2.zza(), 0);
        zzgii.zza(zzgdaVar2.zzf().zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzi() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
