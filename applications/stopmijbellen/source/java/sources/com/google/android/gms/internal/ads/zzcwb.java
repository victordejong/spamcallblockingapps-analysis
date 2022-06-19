package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwb.class */
public final class zzcwb implements zzcvr {
    private final Context zza;
    private final zzg zzb = zzt.zzo().zzh();

    public zzcwb(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcvr
    public final void zza(Map<String, String> map) {
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            boolean parseBoolean = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzao)).booleanValue()) {
                this.zzb.zzD(parseBoolean);
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue() && parseBoolean) {
                    this.zza.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzaj)).booleanValue()) {
            return;
        }
        zzt.zzn().zzr(bundle);
    }
}
