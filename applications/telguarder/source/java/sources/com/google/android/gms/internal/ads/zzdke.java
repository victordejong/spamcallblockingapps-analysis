package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdke.class */
public final class zzdke<RequestComponentT extends zzbqv<AdT>, AdT> implements zzdkn<RequestComponentT, AdT> {
    private RequestComponentT zzhhb;
    private final zzdkn<RequestComponentT, AdT> zzhho;

    public zzdke(zzdkn<RequestComponentT, AdT> zzdknVar) {
        this.zzhho = zzdknVar;
    }

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
        synchronized (this) {
            if (zzdkoVar.zzhhs == null) {
                zzdzw<AdT> zza = this.zzhho.zza(zzdkoVar, zzdkpVar);
                this.zzhhb = this.zzhho.zzaun();
                return zza;
            }
            RequestComponentT zzagm = zzdkpVar.zzc(zzdkoVar.zzhht).zzagm();
            this.zzhhb = zzagm;
            return zzagm.zzagj().zzb(zzdkoVar.zzhhs);
        }
    }
}
