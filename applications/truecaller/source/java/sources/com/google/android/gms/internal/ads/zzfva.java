package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfva.class */
public final class zzfva extends zzftu<zzfyd> {
    public zzfva() {
        super(zzfyd.class, new zzfuy(zzftg.class));
    }

    public static /* synthetic */ zzftr<zzfyg> zzk(int i, int i2, int i3) {
        zzfyf zze = zzfyg.zze();
        zze.zzb(i);
        zzfyi zzc = zzfyj.zzc();
        zzc.zza(16);
        zze.zza(zzc.zzah());
        return new zzftr<>(zze.zzah(), i3);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfyd zzc(zzgex zzgexVar) throws zzggm {
        return zzfyd.zze(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfyd zzfydVar) throws GeneralSecurityException {
        zzfyd zzfydVar2 = zzfydVar;
        zzgdu.zzb(zzfydVar2.zza(), 0);
        zzgdu.zza(zzfydVar2.zzd().zzc());
        if (zzfydVar2.zzc().zza() == 12 || zzfydVar2.zzc().zza() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfyd> zzh() {
        return new zzfuz(this, zzfyg.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
