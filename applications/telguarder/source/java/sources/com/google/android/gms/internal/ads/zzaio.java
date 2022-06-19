package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaio.class */
public final class zzaio implements zzaif<Object> {
    private final zzair zzdim;

    private zzaio(zzair zzairVar) {
        this.zzdim = zzairVar;
    }

    public static void zza(zzbeb zzbebVar, zzair zzairVar) {
        zzbebVar.zza("/reward", new zzaio(zzairVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        zzavj zzavjVar;
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.zzdim.zzuc();
                return;
            } else if (!"video_complete".equals(str)) {
                return;
            } else {
                this.zzdim.zzud();
                return;
            }
        }
        try {
            int parseInt = Integer.parseInt(map.get("amount"));
            String str2 = map.get("type");
            zzavjVar = null;
            if (!TextUtils.isEmpty(str2)) {
                zzavjVar = new zzavj(str2, parseInt);
            }
        } catch (NumberFormatException e) {
            zzd.zzd("Unable to parse reward amount.", e);
            zzavjVar = null;
        }
        this.zzdim.zza(zzavjVar);
    }
}
