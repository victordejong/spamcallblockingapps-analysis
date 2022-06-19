package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzcgs;
import com.google.android.gms.internal.ads.zzchl;
import com.google.android.gms.internal.ads.zzvy;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzwi;
import com.google.android.gms.internal.ads.zzwz;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbq.class */
public final class zzbq extends zzwc<zzvy> {
    private final zzchl<zzvy> zza;
    private final zzcgs zzb;

    public zzbq(String str, Map<String, String> map, zzchl<zzvy> zzchlVar) {
        super(0, str, new zzbp(zzchlVar));
        this.zza = zzchlVar;
        zzcgs zzcgsVar = new zzcgs(null);
        this.zzb = zzcgsVar;
        zzcgsVar.zzb(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final zzwi<zzvy> zzs(zzvy zzvyVar) {
        return zzwi.zza(zzvyVar, zzwz.zza(zzvyVar));
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final /* bridge */ /* synthetic */ void zzt(zzvy zzvyVar) {
        zzvy zzvyVar2 = zzvyVar;
        this.zzb.zzd(zzvyVar2.zzc, zzvyVar2.zza);
        zzcgs zzcgsVar = this.zzb;
        byte[] bArr = zzvyVar2.zzb;
        if (zzcgs.zzj() && bArr != null) {
            zzcgsVar.zzf(bArr);
        }
        this.zza.zzc(zzvyVar2);
    }
}
