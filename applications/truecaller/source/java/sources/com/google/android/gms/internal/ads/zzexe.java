package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzexe.class */
public final class zzexe<RequestComponentT extends zzdal<AdT>, AdT> implements zzexo<RequestComponentT, AdT> {
    private final zzexo<RequestComponentT, AdT> zza;
    private RequestComponentT zzb;

    public zzexe(zzexo<RequestComponentT, AdT> zzexoVar) {
        this.zza = zzexoVar;
    }

    /* renamed from: zza */
    public final RequestComponentT zzd() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.zzb;
        }
        return requestcomponentt;
    }

    public final zzfsm<AdT> zzb(zzexp zzexpVar, zzexn<RequestComponentT> zzexnVar, RequestComponentT requestcomponentt) {
        synchronized (this) {
            this.zzb = requestcomponentt;
            if (zzexpVar.zza == null) {
                return ((zzexd) this.zza).zzb(zzexpVar, zzexnVar, requestcomponentt);
            }
            zzcyj<AdT> zzP = requestcomponentt.zzP();
            return zzP.zzd(zzP.zzb(zzfsd.zza(zzexpVar.zza)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ zzfsm zzc(zzexp zzexpVar, zzexn zzexnVar, Object obj) {
        return zzb(zzexpVar, zzexnVar, null);
    }
}
