package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqs.class */
final class zzbqs implements zzbsh, zzbtb {
    private final Context context;
    private final zzarz zzboo;
    private final zzdmw zzesr;

    public zzbqs(Context context, zzdmw zzdmwVar, zzarz zzarzVar) {
        this.context = context;
        this.zzesr = zzdmwVar;
        this.zzboo = zzarzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        if (this.zzesr.zzhju == null || !this.zzesr.zzhju.zzdtk) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.zzesr.zzhju.zzdtl.isEmpty()) {
            arrayList.add(this.zzesr.zzhju.zzdtl);
        }
        this.zzboo.zza(this.context, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        this.zzboo.detach();
    }
}
