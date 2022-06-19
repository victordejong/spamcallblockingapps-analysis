package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfb.class */
public abstract class zzcfb {
    @VisibleForTesting
    public static zzcfb zza;

    public static zzcfb zzd(Context context) {
        synchronized (zzcfb.class) {
            try {
                zzcfb zzcfbVar = zza;
                if (zzcfbVar != null) {
                    return zzcfbVar;
                }
                Context applicationContext = context.getApplicationContext();
                zzbjl.zza(applicationContext);
                zzg zzp = zzt.zzg().zzp();
                zzp.zza(applicationContext);
                zzcef zzcefVar = new zzcef(null);
                zzcefVar.zza(applicationContext);
                zzcefVar.zzb(zzt.zzj());
                zzcefVar.zzc(zzp);
                zzcefVar.zzd(zzt.zzA());
                zzcfb zze = zzcefVar.zze();
                zza = zze;
                zze.zza().zza();
                zza.zzb().zze();
                zzcfg zzc = zza.zzc();
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzal)).booleanValue()) {
                    HashMap hashMap = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject((String) zzbet.zzc().zzc(zzbjl.zzan));
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
                        zzc.zzb(new zzcff(zzc, hashMap) { // from class: com.google.android.gms.internal.ads.zzcfd
                            private final zzcfg zza;
                            private final Map zzb;

                            {
                                this.zza = zzc;
                                this.zzb = hashMap;
                            }

                            @Override // com.google.android.gms.internal.ads.zzcff
                            public final void zza(SharedPreferences sharedPreferences, String str2, String str3) {
                                this.zza.zzd(this.zzb, sharedPreferences, str2, str3);
                            }
                        });
                    } catch (JSONException e) {
                        zzcgt.zze("Failed to parse listening list", e);
                    }
                }
                return zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzcdz zza();

    public abstract zzced zzb();

    public abstract zzcfg zzc();
}
