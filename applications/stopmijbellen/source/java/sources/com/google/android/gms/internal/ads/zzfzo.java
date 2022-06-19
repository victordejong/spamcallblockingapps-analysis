package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzo.class */
public final class zzfzo extends zzfyi<zzgcr> {
    public zzfzo() {
        super(zzgcr.class, new zzfzm(zzfxu.class));
    }

    public static /* bridge */ /* synthetic */ zzfyf zzk(int i, int i2, int i3) {
        zzgct zzc = zzgcu.zzc();
        zzc.zza(i);
        zzgcw zzc2 = zzgcx.zzc();
        zzc2.zza(16);
        zzc.zzb(zzc2.zzah());
        return new zzfyf(zzc.zzah(), i3);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgcr> zza() {
        return new zzfzn(this, zzgcu.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgcr zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgcr.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgcr zzgcrVar) throws GeneralSecurityException {
        zzgcr zzgcrVar2 = zzgcrVar;
        zzgii.zzb(zzgcrVar2.zza(), 0);
        zzgii.zza(zzgcrVar2.zzg().zzd());
        if (zzgcrVar2.zzf().zza() == 12 || zzgcrVar2.zzf().zza() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
