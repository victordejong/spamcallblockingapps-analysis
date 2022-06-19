package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgau.class */
public final class zzgau extends zzfyu<zzgej, zzgem> {
    private static final byte[] zza = new byte[0];

    public zzgau() {
        super(zzgej.class, zzgem.class, new zzgas(zzfxy.class));
    }

    public static /* bridge */ /* synthetic */ zzfyf zzl(int i, int i2, int i3, zzfyd zzfydVar, byte[] bArr, int i4) {
        zzgec zza2 = zzged.zza();
        zzgeo zza3 = zzgep.zza();
        int i5 = 4;
        zza3.zzb(4);
        zza3.zzc(5);
        zza3.zza(zzgjf.zzv(bArr));
        zzgep zzah = zza3.zzah();
        zzgfh zza4 = zzgfi.zza();
        zza4.zza(zzfydVar.zza());
        zza4.zzb(zzgjf.zzv(zzfydVar.zzb()));
        int zzc = zzfydVar.zzc() - 1;
        if (zzc == 0) {
            i5 = 3;
        } else if (zzc != 1) {
            i5 = zzc != 2 ? 6 : 5;
        }
        zza4.zzc(i5);
        zzgfi zzah2 = zza4.zzah();
        zzgdz zza5 = zzgea.zza();
        zza5.zza(zzah2);
        zzgea zzah3 = zza5.zzah();
        zzgef zzc2 = zzgeg.zzc();
        zzc2.zzb(zzah);
        zzc2.zza(zzah3);
        zzc2.zzc(i3);
        zza2.zza(zzc2.zzah());
        return new zzfyf(zza2.zzah(), i4);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<zzged, zzgej> zza() {
        return new zzgat(this, zzged.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzglv zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgej.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzglv zzglvVar) throws GeneralSecurityException {
        zzgej zzgejVar = (zzgej) zzglvVar;
        if (!zzgejVar.zzg().zzD()) {
            zzgii.zzb(zzgejVar.zza(), 0);
            zzgbd.zza(zzgejVar.zzf().zzc());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 4;
    }
}
