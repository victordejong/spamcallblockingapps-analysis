package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg.class */
public final class zzfvg extends zzftu<zzfys> {
    public zzfvg() {
        super(zzfys.class, new zzfve(zzftg.class));
    }

    public static void zzk(boolean z) throws GeneralSecurityException {
        if (zzm()) {
            zzfum.zzc(new zzfvg(), true);
        }
    }

    public static /* synthetic */ zzftr<zzfyv> zzl(int i, int i2) {
        zzfyu zzd = zzfyv.zzd();
        zzd.zza(i);
        return new zzftr<>(zzd.zzah(), i2);
    }

    private static boolean zzm() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfys zzc(zzgex zzgexVar) throws zzggm {
        return zzfys.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfys zzfysVar) throws GeneralSecurityException {
        zzfys zzfysVar2 = zzfysVar;
        zzgdu.zzb(zzfysVar2.zza(), 0);
        zzgdu.zza(zzfysVar2.zzc().zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfys> zzh() {
        return new zzfvf(this, zzfyv.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
