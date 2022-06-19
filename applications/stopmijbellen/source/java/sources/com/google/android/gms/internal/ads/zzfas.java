package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdea;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfas.class */
public final class zzfas<RequestComponentT extends zzdea<AdT>, AdT> implements zzfbc<RequestComponentT, AdT> {
    private final zzfbc<RequestComponentT, AdT> zza;
    @GuardedBy("this")
    private RequestComponentT zzb;

    public zzfas(zzfbc<RequestComponentT, AdT> zzfbcVar) {
        this.zza = zzfbcVar;
    }

    /* renamed from: zza */
    public final RequestComponentT zzd() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.zzb;
        }
        return requestcomponentt;
    }

    public final zzfxa<AdT> zzb(zzfbd zzfbdVar, zzfbb<RequestComponentT> zzfbbVar, RequestComponentT requestcomponentt) {
        synchronized (this) {
            this.zzb = requestcomponentt;
            if (zzfbdVar.zza == null) {
                return ((zzfar) this.zza).zzb(zzfbdVar, zzfbbVar, requestcomponentt);
            }
            zzdby<AdT> zzb = requestcomponentt.zzb();
            return zzb.zzh(zzb.zzj(zzfwq.zzi(zzfbdVar.zza)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* bridge */ /* synthetic */ zzfxa zzc(zzfbd zzfbdVar, zzfbb zzfbbVar, Object obj) {
        return zzb(zzfbdVar, zzfbbVar, null);
    }
}
