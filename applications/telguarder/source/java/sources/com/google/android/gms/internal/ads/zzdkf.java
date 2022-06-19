package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkf.class */
public final class zzdkf<RequestComponentT extends zzbqv<AdT>, AdT> implements zzdkn<RequestComponentT, AdT> {
    private RequestComponentT zzhhb;

    /* renamed from: zzauo */
    public final RequestComponentT zzaun() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.zzhhb;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final zzdzw<AdT> zza(zzdko zzdkoVar, zzdkp<RequestComponentT> zzdkpVar) {
        zzdzw<AdT> zzalb;
        synchronized (this) {
            RequestComponentT zzagm = zzdkpVar.zzc(zzdkoVar.zzhht).zzagm();
            this.zzhhb = zzagm;
            zzalb = zzagm.zzagj().zzalb();
        }
        return zzalb;
    }
}
