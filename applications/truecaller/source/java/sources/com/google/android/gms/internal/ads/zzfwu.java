package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwu.class */
public final class zzfwu extends zzftu<zzfxf> {
    public zzfwu() {
        super(zzfxf.class, new zzfws(zzfty.class));
    }

    public static void zzm(zzfxl zzfxlVar) throws GeneralSecurityException {
        if (zzfxlVar.zza() >= 10) {
            if (zzfxlVar.zza() > 16) {
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

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfxf zzc(zzgex zzgexVar) throws zzggm {
        return zzfxf.zze(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfxf zzfxfVar) throws GeneralSecurityException {
        zzfxf zzfxfVar2 = zzfxfVar;
        zzgdu.zzb(zzfxfVar2.zza(), 0);
        zzn(zzfxfVar2.zzc().zzc());
        zzm(zzfxfVar2.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfxf> zzh() {
        return new zzfwt(this, zzfxi.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
