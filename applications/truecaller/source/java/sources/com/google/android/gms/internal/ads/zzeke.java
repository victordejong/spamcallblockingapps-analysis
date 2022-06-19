package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeke.class */
public final class zzeke {
    private final Map<String, zzekg> zza = new HashMap();
    private final Map<String, zzeki> zzb = new HashMap();
    private final Map<String, Map<String, List<zzekg>>> zzc = new HashMap();
    private final Executor zzd;
    private JSONObject zze;

    public zzeke(Executor executor) {
        this.zzd = executor;
    }

    /* renamed from: zzg */
    public final void zzf() {
        synchronized (this) {
            this.zzb.clear();
            this.zza.clear();
            zzi();
            zzh();
        }
    }

    private final void zzh() {
        synchronized (this) {
            if (!zzblc.zze.zze().booleanValue()) {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbh)).booleanValue()) {
                    JSONObject zzg = zzt.zzg().zzp().zzn().zzg();
                    if (zzg == null) {
                        return;
                    }
                    try {
                        JSONArray jSONArray = zzg.getJSONArray("signal_adapters");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            Bundle zzl = zzl(jSONObject.optJSONObject(RemoteMessageConst.DATA));
                            String optString = jSONObject.optString("adapter_class_name");
                            boolean optBoolean = jSONObject.optBoolean(AnalyticsConstants.RENDER, false);
                            boolean optBoolean2 = jSONObject.optBoolean("collect_signals", false);
                            if (!TextUtils.isEmpty(optString)) {
                                this.zzb.put(optString, new zzeki(optString, optBoolean2, optBoolean, zzl));
                            }
                        }
                    } catch (JSONException e) {
                        zze.zzb("Malformed config loading JSON.", e);
                    }
                }
            }
        }
    }

    private final void zzi() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject zzg = zzt.zzg().zzp().zzn().zzg();
            if (zzg != null) {
                try {
                    JSONArray optJSONArray2 = zzg.optJSONArray("ad_unit_id_settings");
                    this.zze = zzg.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject.optString("ad_unit_id", "");
                            String optString2 = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.addAll(zzj(optJSONArray.getJSONObject(i2), optString2));
                                }
                            }
                            zzk(optString2, optString, arrayList);
                        }
                    }
                } catch (JSONException e) {
                    zze.zzb("Malformed config loading JSON.", e);
                }
            }
        }
    }

    private final List<zzekg> zzj(JSONObject jSONObject, String str) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (jSONObject == null) {
                return arrayList;
            }
            Bundle zzl = zzl(jSONObject.optJSONObject(RemoteMessageConst.DATA));
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
                zzd(str2);
                if (this.zza.get(str2) != null) {
                    arrayList.add(new zzekg(str2, str, zzl));
                }
            }
            return arrayList;
        }
    }

    private final void zzk(String str, String str2, List<zzekg> list) {
        synchronized (this) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            Map<String, List<zzekg>> map = this.zzc.get(str);
            Map<String, List<zzekg>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            this.zzc.put(str, map2);
            List<zzekg> list2 = map2.get(str2);
            List<zzekg> list3 = list2;
            if (list2 == null) {
                list3 = new ArrayList<>();
            }
            list3.addAll(list);
            map2.put(str2, list3);
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

    public final void zza() {
        zzt.zzg().zzp().zzp(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzekb
            private final zzeke zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze();
            }
        });
        this.zzd.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzekc
            private final zzeke zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf();
            }
        });
    }

    public final Map<String, zzeki> zzb() {
        zzfon zzb;
        synchronized (this) {
            zzb = zzfon.zzb(this.zzb);
        }
        return zzb;
    }

    public final Map<String, List<Bundle>> zzc(String str, String str2) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Map<String, List<zzekg>> map = this.zzc.get(str);
                if (map == null) {
                    return zzfon.zza();
                }
                List<zzekg> list = map.get(str2);
                List<zzekg> list2 = list;
                if (list == null) {
                    list2 = map.get(zzdtm.zza(this.zze, str2, str));
                }
                if (list2 == null) {
                    return zzfon.zza();
                }
                HashMap hashMap = new HashMap();
                for (zzekg zzekgVar : list2) {
                    String str3 = zzekgVar.zza;
                    if (!hashMap.containsKey(str3)) {
                        hashMap.put(str3, new ArrayList());
                    }
                    ((List) hashMap.get(str3)).add(zzekgVar.zzc);
                }
                return zzfon.zzb(hashMap);
            }
            return zzfon.zza();
        }
    }

    public final void zzd(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.zza.containsKey(str)) {
                return;
            }
            this.zza.put(str, new zzekg(str, "", new Bundle()));
        }
    }

    public final /* synthetic */ void zze() {
        this.zzd.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzekd
            private final zzeke zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf();
            }
        });
    }
}
