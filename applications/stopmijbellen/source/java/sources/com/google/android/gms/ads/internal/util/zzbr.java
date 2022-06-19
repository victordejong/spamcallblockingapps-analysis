package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzago;
import com.google.android.gms.internal.ads.zzags;
import com.google.android.gms.internal.ads.zzagy;
import com.google.android.gms.internal.ads.zzahp;
import com.google.android.gms.internal.ads.zzciy;
import com.google.android.gms.internal.ads.zzcjr;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbr.class */
public final class zzbr extends zzags<zzago> {
    private final zzcjr<zzago> zza;
    private final zzciy zzb;

    public zzbr(String str, Map<String, String> map, zzcjr<zzago> zzcjrVar) {
        super(0, str, new zzbq(zzcjrVar));
        this.zza = zzcjrVar;
        zzciy zzciyVar = new zzciy(null);
        this.zzb = zzciyVar;
        zzciyVar.zzd(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzags
    public final zzagy<zzago> zzh(zzago zzagoVar) {
        return zzagy.zzb(zzagoVar, zzahp.zzb(zzagoVar));
    }

    @Override // com.google.android.gms.internal.ads.zzags
    public final /* bridge */ /* synthetic */ void zzo(zzago zzagoVar) {
        zzago zzagoVar2 = zzagoVar;
        this.zzb.zzf(zzagoVar2.zzc, zzagoVar2.zza);
        zzciy zzciyVar = this.zzb;
        byte[] bArr = zzagoVar2.zzb;
        if (zzciy.zzl() && bArr != null) {
            zzciyVar.zzh(bArr);
        }
        this.zza.zzd(zzagoVar2);
    }
}
