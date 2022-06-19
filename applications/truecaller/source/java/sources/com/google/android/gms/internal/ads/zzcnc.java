package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnc.class */
public final class zzcnc implements zzbpr<zzcml> {
    public final /* synthetic */ zzcne zza;

    public zzcnc(zzcne zzcneVar) {
        this.zza = zzcneVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.zza) {
                    i = this.zza.zzG;
                    if (i != parseInt) {
                        this.zza.zzG = parseInt;
                        this.zza.requestLayout();
                    }
                }
            } catch (Exception e) {
                zzcgt.zzj("Exception occurred while getting webview content height", e);
            }
        }
    }
}
