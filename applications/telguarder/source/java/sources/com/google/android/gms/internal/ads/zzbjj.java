package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjj.class */
public final class zzbjj implements zzbjf {
    private final zzf zzeaw = zzr.zzkv().zzxs();

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            map.remove("gad_idless");
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcos)).booleanValue()) {
                this.zzeaw.zzar(Boolean.parseBoolean(str));
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcor)).booleanValue()) {
            return;
        }
        zzr.zzlp().setConsent(bundle);
    }
}
