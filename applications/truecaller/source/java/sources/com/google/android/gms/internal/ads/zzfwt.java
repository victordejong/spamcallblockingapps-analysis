package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwt.class */
public final class zzfwt extends zzfts<zzfxi, zzfxf> {
    public zzfwt(zzfwu zzfwuVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzfxi zzfxiVar) throws GeneralSecurityException {
        zzfxi zzfxiVar2 = zzfxiVar;
        zzfwu.zzm(zzfxiVar2.zzc());
        zzfwu.zzn(zzfxiVar2.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfxi zzc(zzgex zzgexVar) throws zzggm {
        return zzfxi.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfxf zzd(zzfxi zzfxiVar) throws GeneralSecurityException {
        zzfxi zzfxiVar2 = zzfxiVar;
        zzfxe zzf = zzfxf.zzf();
        zzf.zza(0);
        zzf.zzb(zzgex.zzt(zzgds.zza(zzfxiVar2.zza())));
        zzf.zzc(zzfxiVar2.zzc());
        return zzf.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzfxi>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        zzfxh zze = zzfxi.zze();
        zze.zza(32);
        zzfxk zzc = zzfxl.zzc();
        zzc.zza(16);
        zze.zzb(zzc.zzah());
        hashMap.put("AES_CMAC", new zzftr(zze.zzah(), 1));
        zzfxh zze2 = zzfxi.zze();
        zze2.zza(32);
        zzfxk zzc2 = zzfxl.zzc();
        zzc2.zza(16);
        zze2.zzb(zzc2.zzah());
        hashMap.put("AES256_CMAC", new zzftr(zze2.zzah(), 1));
        zzfxh zze3 = zzfxi.zze();
        zze3.zza(32);
        zzfxk zzc3 = zzfxl.zzc();
        zzc3.zza(16);
        zze3.zzb(zzc3.zzah());
        hashMap.put("AES256_CMAC_RAW", new zzftr(zze3.zzah(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
