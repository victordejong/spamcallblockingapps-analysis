package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwg.class */
public final class zzfwg extends zzfug<zzfzv, zzfzy> {
    private static final byte[] zza = new byte[0];

    public zzfwg() {
        super(zzfzv.class, zzfzy.class, new zzfwe(zzftk.class));
    }

    public static /* synthetic */ zzftr<zzfzp> zzl(int i, int i2, int i3, zzftp zzftpVar, byte[] bArr, int i4) {
        zzfzo zzd = zzfzp.zzd();
        zzgaa zzc = zzgab.zzc();
        int i5 = 4;
        zzc.zzb(4);
        zzc.zzc(5);
        zzc.zza(zzgex.zzt(bArr));
        zzgab zzah = zzc.zzah();
        zzgat zzd2 = zzgau.zzd();
        zzd2.zza(zzftpVar.zza());
        zzd2.zzb(zzgex.zzt(zzftpVar.zzb()));
        int zzd3 = zzftpVar.zzd() - 1;
        if (zzd3 == 0) {
            i5 = 3;
        } else if (zzd3 != 1) {
            i5 = zzd3 != 2 ? 6 : 5;
        }
        zzd2.zzc(i5);
        zzgau zzah2 = zzd2.zzah();
        zzfzl zzc2 = zzfzm.zzc();
        zzc2.zza(zzah2);
        zzfzm zzah3 = zzc2.zzah();
        zzfzr zzd4 = zzfzs.zzd();
        zzd4.zza(zzah);
        zzd4.zzb(zzah3);
        zzd4.zzc(i3);
        zzd.zza(zzd4.zzah());
        return new zzftr<>(zzd.zzah(), i4);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzghi zzc(zzgex zzgexVar) throws zzggm {
        return zzfzv.zze(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzghi zzghiVar) throws GeneralSecurityException {
        zzfzv zzfzvVar = (zzfzv) zzghiVar;
        if (!zzfzvVar.zzd().zzr()) {
            zzgdu.zzb(zzfzvVar.zza(), 0);
            zzfwp.zza(zzfzvVar.zzc().zzc());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<zzfzp, zzfzv> zzh() {
        return new zzfwf(this, zzfzp.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 4;
    }
}
