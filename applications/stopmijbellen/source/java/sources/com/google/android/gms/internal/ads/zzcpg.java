package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpg.class */
final class zzcpg implements zzbrt<zzcop> {
    public final /* synthetic */ zzcpi zza;

    public zzcpg(zzcpi zzcpiVar) {
        this.zza = zzcpiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
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
                zzciz.zzk("Exception occurred while getting webview content height", e);
            }
        }
    }
}
