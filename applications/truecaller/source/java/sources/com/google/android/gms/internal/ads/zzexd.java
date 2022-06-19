package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzexd.class */
public final class zzexd<RequestComponentT extends zzdal<AdT>, AdT> implements zzexo<RequestComponentT, AdT> {
    private RequestComponentT zza;

    /* renamed from: zza */
    public final RequestComponentT zzd() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.zza;
        }
        return requestcomponentt;
    }

    public final zzfsm<AdT> zzb(zzexp zzexpVar, zzexn<RequestComponentT> zzexnVar, RequestComponentT requestcomponentt) {
        zzfsm<AdT> zzd;
        synchronized (this) {
            if (requestcomponentt != null) {
                this.zza = requestcomponentt;
            } else {
                this.zza = zzexnVar.zza(zzexpVar.zzb).zzf();
            }
            zzcyj<AdT> zzP = this.zza.zzP();
            zzd = zzP.zzd(zzP.zzc());
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ zzfsm zzc(zzexp zzexpVar, zzexn zzexnVar, Object obj) {
        return zzb(zzexpVar, zzexnVar, null);
    }
}
