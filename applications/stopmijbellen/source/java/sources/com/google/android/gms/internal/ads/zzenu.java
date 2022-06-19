package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenu.class */
public final class zzenu {
    private final Map<String, zzenw> zza = new HashMap();
    private final Map<String, zzeny> zzb = new HashMap();
    private final Map<String, Map<String, List<zzenw>>> zzc = new HashMap();
    private final Executor zzd;
    private JSONObject zze;

    public zzenu(Executor executor) {
        this.zzd = executor;
    }

    private final List<zzenw> zzg(JSONObject jSONObject, String str) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (jSONObject == null) {
                return arrayList;
            }
            Bundle zzl = zzl(jSONObject.optJSONObject("data"));
            JSONArray optJSONArray = jSONObject.optJSONArray("rtb_adapters");
            if (optJSONArray == null) {
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                String optString = optJSONArray.optString(i, "");
                if (!TextUtils.isEmpty(optString)) {
                    arrayList2.add(optString);
                }
            }
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) arrayList2.get(i2);
                zzf(str2);
                if (this.zza.get(str2) != null) {
                    arrayList.add(new zzenw(str2, str, zzl));
                }
            }
            return arrayList;
        }
    }

    public final void zzh() {
        synchronized (this) {
            this.zzb.clear();
            this.zza.clear();
            zzj();
            zzk();
        }
    }

    private final void zzi(String str, String str2, List<zzenw> list) {
        synchronized (this) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            Map<String, List<zzenw>> map = this.zzc.get(str);
            Map<String, List<zzenw>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            this.zzc.put(str, map2);
            List<zzenw> list2 = map2.get(str2);
            List<zzenw> list3 = list2;
            if (list2 == null) {
                list3 = new ArrayList<>();
            }
            list3.addAll(list);
            map2.put(str2, list3);
        }
    }

    private final void zzj() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject zzf = zzt.zzo().zzh().zzg().zzf();
            if (zzf != null) {
                try {
                    JSONArray optJSONArray2 = zzf.optJSONArray("ad_unit_id_settings");
                    this.zze = zzf.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String lowerCase = ((Boolean) zzbgq.zzc().zzb(zzblj.zzhp)).booleanValue() ? jSONObject.optString("ad_unit_id", "").toLowerCase(Locale.ROOT) : jSONObject.optString("ad_unit_id", "");
                            String optString = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.addAll(zzg(optJSONArray.getJSONObject(i2), optString));
                                }
                            }
                            zzi(optString, lowerCase, arrayList);
                        }
                    }
                } catch (JSONException e) {
                    zze.zzb("Malformed config loading JSON.", e);
                }
            }
        }
    }

    private final void zzk() {
        synchronized (this) {
            if (!zzbnb.zze.zze().booleanValue()) {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbn)).booleanValue()) {
                    JSONObject zzf = zzt.zzo().zzh().zzg().zzf();
                    if (zzf == null) {
                        return;
                    }
                    try {
                        JSONArray jSONArray = zzf.getJSONArray("signal_adapters");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            Bundle zzl = zzl(jSONObject.optJSONObject("data"));
                            String optString = jSONObject.optString("adapter_class_name");
                            boolean optBoolean = jSONObject.optBoolean("render", false);
                            boolean optBoolean2 = jSONObject.optBoolean("collect_signals", false);
                            if (!TextUtils.isEmpty(optString)) {
                                this.zzb.put(optString, new zzeny(optString, optBoolean2, optBoolean, zzl));
                            }
                        }
                    } catch (JSONException e) {
                        zze.zzb("Malformed config loading JSON.", e);
                    }
                }
            }
        }
    }

    private static final Bundle zzl(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next, ""));
            }
        }
        return bundle;
    }

    public final Map<String, List<Bundle>> zza(String str, String str2) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Map<String, List<zzenw>> map = this.zzc.get(str);
                if (map == null) {
                    return zzfsw.zzd();
                }
                List<zzenw> list = map.get(str2);
                List<zzenw> list2 = list;
                if (list == null) {
                    String zza = zzdxd.zza(this.zze, str2, str);
                    String str3 = zza;
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhp)).booleanValue()) {
                        str3 = zza.toLowerCase(Locale.ROOT);
                    }
                    list2 = map.get(str3);
                }
                if (list2 == null) {
                    return zzfsw.zzd();
                }
                HashMap hashMap = new HashMap();
                for (zzenw zzenwVar : list2) {
                    String str4 = zzenwVar.zza;
                    if (!hashMap.containsKey(str4)) {
                        hashMap.put(str4, new ArrayList());
                    }
                    ((List) hashMap.get(str4)).add(zzenwVar.zzc);
                }
                return zzfsw.zzc(hashMap);
            }
            return zzfsw.zzd();
        }
    }

    public final Map<String, zzeny> zzb() {
        zzfsw zzc;
        synchronized (this) {
            zzc = zzfsw.zzc(this.zzb);
        }
        return zzc;
    }

    public final void zzd() {
        zzt.zzo().zzh().zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzens
            @Override // java.lang.Runnable
            public final void run() {
                zzenu.this.zze();
            }
        });
        this.zzd.execute(new zzent(this));
    }

    public final /* synthetic */ void zze() {
        this.zzd.execute(new zzent(this));
    }

    public final void zzf(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.zza.containsKey(str)) {
                return;
            }
            this.zza.put(str, new zzenw(str, "", new Bundle()));
        }
    }
}
