package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvd.class */
public final class zzfvd extends zzftu<zzfym> {
    public zzfvd() {
        super(zzfym.class, new zzfvb(zzftg.class));
    }

    public static /* synthetic */ zzftr<zzfyp> zzk(int i, int i2) {
        zzfyo zzd = zzfyp.zzd();
        zzd.zza(i);
        return new zzftr<>(zzd.zzah(), i2);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfym zzc(zzgex zzgexVar) throws zzggm {
        return zzfym.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfym zzfymVar) throws GeneralSecurityException {
        zzfym zzfymVar2 = zzfymVar;
        zzgdu.zzb(zzfymVar2.zza(), 0);
        zzgdu.zza(zzfymVar2.zzc().zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfym> zzh() {
        return new zzfvc(this, zzfyp.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzj() {
        return 2;
    }
}
