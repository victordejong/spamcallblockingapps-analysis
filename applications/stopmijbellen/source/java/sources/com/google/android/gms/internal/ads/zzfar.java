package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdea;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfar.class */
public final class zzfar<RequestComponentT extends zzdea<AdT>, AdT> implements zzfbc<RequestComponentT, AdT> {
    @GuardedBy("this")
    private RequestComponentT zza;

    /* renamed from: zza */
    public final RequestComponentT zzd() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.zza;
        }
        return requestcomponentt;
    }

    public final zzfxa<AdT> zzb(zzfbd zzfbdVar, zzfbb<RequestComponentT> zzfbbVar, RequestComponentT requestcomponentt) {
        zzfxa<AdT> zzh;
        synchronized (this) {
            if (requestcomponentt != null) {
                this.zza = requestcomponentt;
            } else {
                this.zza = zzfbbVar.zza(zzfbdVar.zzb).zzh();
            }
            zzdby<AdT> zzb = this.zza.zzb();
            zzh = zzb.zzh(zzb.zzi());
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* bridge */ /* synthetic */ zzfxa zzc(zzfbd zzfbdVar, zzfbb zzfbbVar, Object obj) {
        return zzb(zzfbdVar, zzfbbVar, null);
    }
}
