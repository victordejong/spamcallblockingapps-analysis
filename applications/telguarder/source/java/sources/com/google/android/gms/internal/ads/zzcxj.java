package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxj.class */
public final class zzcxj {
    private final Executor executor;
    private JSONObject zzgkp;
    private final Map<String, zzcxq> zzgxi = new ConcurrentHashMap();
    private final Map<String, Map<String, List<zzcxq>>> zzgxj = new ConcurrentHashMap();

    public zzcxj(Executor executor) {
        this.executor = executor;
    }

    /* renamed from: zzase */
    public final void zzash() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject zzyb = zzr.zzkv().zzxs().zzyn().zzyb();
            if (zzyb != null) {
                try {
                    JSONArray optJSONArray2 = zzyb.optJSONArray("ad_unit_id_settings");
                    this.zzgkp = zzyb.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject.optString("ad_unit_id", "");
                            String optString2 = jSONObject.optString(POBConstants.KEY_FORMAT, "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                                    ArrayList arrayList2 = new ArrayList();
                                    if (jSONObject2 != null) {
                                        JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                                        Bundle bundle = new Bundle();
                                        if (optJSONObject2 != null) {
                                            Iterator<String> keys = optJSONObject2.keys();
                                            while (keys.hasNext()) {
                                                String next = keys.next();
                                                bundle.putString(next, optJSONObject2.optString(next, ""));
                                            }
                                        }
                                        JSONArray optJSONArray3 = jSONObject2.optJSONArray("rtb_adapters");
                                        if (optJSONArray3 != null) {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                                                String optString3 = optJSONArray3.optString(i3, "");
                                                if (!TextUtils.isEmpty(optString3)) {
                                                    arrayList3.add(optString3);
                                                }
                                            }
                                            ArrayList arrayList4 = arrayList3;
                                            int size = arrayList4.size();
                                            int i4 = 0;
                                            while (i4 < size) {
                                                Object obj = arrayList4.get(i4);
                                                int i5 = i4 + 1;
                                                String str = (String) obj;
                                                zzgp(str);
                                                i4 = i5;
                                                if (this.zzgxi.get(str) != null) {
                                                    arrayList2.add(new zzcxq(str, optString2, bundle));
                                                    i4 = i5;
                                                }
                                            }
                                        }
                                    }
                                    arrayList.addAll(arrayList2);
                                }
                            }
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                                Map<String, List<zzcxq>> map = this.zzgxj.get(optString2);
                                Map<String, List<zzcxq>> map2 = map;
                                if (map == null) {
                                    map2 = new ConcurrentHashMap<>();
                                }
                                this.zzgxj.put(optString2, map2);
                                List<zzcxq> list = map2.get(optString);
                                List<zzcxq> list2 = list;
                                if (list == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.addAll(arrayList);
                                map2.put(optString, list2);
                            }
                        }
                    }
                } catch (JSONException e) {
                    zzd.zza("Malformed config loading JSON.", e);
                }
            }
        }
    }

    public final void zzapw() {
        zzr.zzkv().zzxs().zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcxm
            private final zzcxj zzgxk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgxk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgxk.zzasg();
            }
        });
        this.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcxl
            private final zzcxj zzgxk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgxk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgxk.zzasf();
            }
        });
    }

    public final /* synthetic */ void zzasg() {
        this.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcxo
            private final zzcxj zzgxk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgxk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgxk.zzash();
            }
        });
    }

    public final void zzgp(String str) {
        if (!TextUtils.isEmpty(str) && !this.zzgxi.containsKey(str)) {
            this.zzgxi.put(str, new zzcxq(str, "", new Bundle()));
        }
    }

    public final Map<String, List<Bundle>> zzt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return Collections.emptyMap();
        }
        Map<String, List<zzcxq>> map = this.zzgxj.get(str);
        if (map == null) {
            return Collections.emptyMap();
        }
        List<zzcxq> list = map.get(str2);
        List<zzcxq> list2 = list;
        if (list == null) {
            list2 = map.get(zzciw.zza(this.zzgkp, str2, str));
        }
        if (list2 == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (zzcxq zzcxqVar : list2) {
            String str3 = zzcxqVar.zzcio;
            if (!hashMap.containsKey(str3)) {
                hashMap.put(str3, new ArrayList());
            }
            ((List) hashMap.get(str3)).add(zzcxqVar.zzeup);
        }
        return hashMap;
    }
}
