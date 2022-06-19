package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzu.class */
public final class zzfzu extends zzfyi<zzgdg> {
    public zzfzu() {
        super(zzgdg.class, new zzfzs(zzfxu.class));
    }

    public static void zzk(boolean z) throws GeneralSecurityException {
        if (zzm()) {
            zzfza.zzm(new zzfzu(), true);
        }
    }

    public static /* bridge */ /* synthetic */ zzfyf zzl(int i, int i2) {
        zzgdi zzc = zzgdj.zzc();
        zzc.zza(i);
        return new zzfyf(zzc.zzah(), i2);
    }

    private static boolean zzm() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgdg> zza() {
        return new zzfzt(this, zzgdj.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgdg zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgdg.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgdg zzgdgVar) throws GeneralSecurityException {
        zzgdg zzgdgVar2 = zzgdgVar;
        zzgii.zzb(zzgdgVar2.zza(), 0);
        zzgii.zza(zzgdgVar2.zzf().zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
