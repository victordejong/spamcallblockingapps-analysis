package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchi.class */
public abstract class zzchi {
    @VisibleForTesting
    public static zzchi zza;

    public static zzchi zzd(Context context) {
        synchronized (zzchi.class) {
            try {
                zzchi zzchiVar = zza;
                if (zzchiVar != null) {
                    return zzchiVar;
                }
                Context applicationContext = context.getApplicationContext();
                zzblj.zzc(applicationContext);
                zzg zzh = zzt.zzo().zzh();
                zzh.zzp(applicationContext);
                zzcgn zzcgnVar = new zzcgn(null);
                zzcgnVar.zzb(applicationContext);
                zzcgnVar.zzc(zzt.zzA());
                zzcgnVar.zza(zzh);
                zzcgnVar.zzd(zzt.zzn());
                zzchi zze = zzcgnVar.zze();
                zza = zze;
                zze.zza().zza();
                zza.zzb().zzc();
                zzchm zzc = zza.zzc();
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzal)).booleanValue()) {
                    HashMap hashMap = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject((String) zzbgq.zzc().zzb(zzblj.zzan));
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            HashSet hashSet = new HashSet();
                            JSONArray optJSONArray = jSONObject.optJSONArray(next);
                            if (optJSONArray != null) {
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    String optString = optJSONArray.optString(i);
                                    if (optString != null) {
                                        hashSet.add(optString);
                                    }
                                }
                                hashMap.put(next, hashSet);
                            }
                        }
                        for (String str : hashMap.keySet()) {
                            zzc.zzc(str);
                        }
                        zzc.zzd(new zzchk(zzc, hashMap));
                    } catch (JSONException e) {
                        zzciz.zzf("Failed to parse listening list", e);
                    }
                }
                return zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzcgg zza();

    public abstract zzcgk zzb();

    public abstract zzchm zzc();
}
