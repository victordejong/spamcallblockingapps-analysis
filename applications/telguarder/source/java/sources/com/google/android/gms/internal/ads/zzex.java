package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzcf;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzex.class */
public final class zzex implements zzdvb {
    private final zzfj zzxj;
    private final zzdtc zzyn;
    private final zzdto zzyo;
    private final zzfa zzyp;

    public zzex(zzdtc zzdtcVar, zzdto zzdtoVar, zzfj zzfjVar, zzfa zzfaVar) {
        this.zzyn = zzdtcVar;
        this.zzyo = zzdtoVar;
        this.zzxj = zzfjVar;
        this.zzyp = zzfaVar;
    }

    private final Map<String, Object> zzcb() {
        HashMap hashMap = new HashMap();
        zzcf.zza zzco = this.zzyo.zzco();
        hashMap.put("v", this.zzyn.zzaxp());
        hashMap.put("gms", Boolean.valueOf(this.zzyn.zzcm()));
        hashMap.put("int", zzco.zzaf());
        hashMap.put("up", Boolean.valueOf(this.zzyp.zzcf()));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    public final void zzc(View view) {
        this.zzxj.zze(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdvb
    public final Map<String, Object> zzcc() {
        Map<String, Object> zzcb = zzcb();
        zzcf.zza zzaxw = this.zzyo.zzaxw();
        zzcb.put("gai", Boolean.valueOf(this.zzyn.zzaxq()));
        zzcb.put("did", zzaxw.zzak());
        zzcb.put("dst", Integer.valueOf(zzaxw.zzal().zzv()));
        zzcb.put("doo", Boolean.valueOf(zzaxw.zzam()));
        return zzcb;
    }

    @Override // com.google.android.gms.internal.ads.zzdvb
    public final Map<String, Object> zzcd() {
        return zzcb();
    }

    @Override // com.google.android.gms.internal.ads.zzdvb
    public final Map<String, Object> zzce() {
        Map<String, Object> zzcb = zzcb();
        zzcb.put("lts", Long.valueOf(this.zzxj.zzcu()));
        return zzcb;
    }
}
