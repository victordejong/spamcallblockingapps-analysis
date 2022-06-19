package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsm.class */
public final class zzcsm implements zzcsc {
    private final Context zza;
    private final zzg zzb = zzt.zzg().zzp();

    public zzcsm(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcsc
    public final void zza(Map<String, String> map) {
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            boolean parseBoolean = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzao)).booleanValue()) {
                this.zzb.zzB(parseBoolean);
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue() && parseBoolean) {
                    this.zza.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzaj)).booleanValue()) {
            return;
        }
        zzt.zzA().zze(bundle);
    }
}
