package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdli.class */
public final class zzdli implements zzbpr<Object> {
    private final WeakReference<zzdlm> zza;

    public /* synthetic */ zzdli(zzdlm zzdlmVar, zzdll zzdllVar) {
        this.zza = new WeakReference<>(zzdlmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        zzdba zzdbaVar;
        zzdim zzdimVar;
        zzdlm zzdlmVar = this.zza.get();
        if (zzdlmVar != null && "_ac".equals(map.get("eventName"))) {
            zzdbaVar = zzdlmVar.zzh;
            zzdbaVar.onAdClicked();
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzhb)).booleanValue()) {
                return;
            }
            zzdimVar = zzdlmVar.zzi;
            zzdimVar.zzb();
        }
    }
}
