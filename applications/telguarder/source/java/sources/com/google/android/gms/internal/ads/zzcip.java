package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcip.class */
public final class zzcip {
    private final Executor executor;
    private final Map<String, Map<String, JSONObject>> zzgkn = new ConcurrentHashMap();
    private JSONObject zzgko;
    private JSONObject zzgkp;
    private boolean zzxe;

    public zzcip(Executor executor) {
        this.executor = executor;
    }

    /* renamed from: zzapy */
    public final void zzaqb() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.zzxe = true;
            zzayp zzyn = zzr.zzkv().zzxs().zzyn();
            if (zzyn == null) {
                return;
            }
            JSONObject zzyb = zzyn.zzyb();
            if (zzyb == null) {
                return;
            }
            this.zzgko = ((Boolean) zzwr.zzqr().zzd(zzabp.zzctu)).booleanValue() ? zzyb.optJSONObject("common_settings") : null;
            this.zzgkp = zzyb.optJSONObject("ad_unit_patterns");
            JSONArray optJSONArray = zzyb.optJSONArray("ad_unit_id_settings");
            if (optJSONArray == null) {
                return;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("ad_unit_id");
                    String optString2 = optJSONObject.optString(POBConstants.KEY_FORMAT);
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                    if (optString != null && optJSONObject2 != null && optString2 != null) {
                        if (this.zzgkn.containsKey(optString2)) {
                            map = this.zzgkn.get(optString2);
                        } else {
                            map = new ConcurrentHashMap<>();
                            this.zzgkn.put(optString2, map);
                        }
                        map.put(optString, optJSONObject2);
                    }
                }
            }
        }
    }

    public final void zzapw() {
        zzr.zzkv().zzxs().zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcis
            private final zzcip zzgkq;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgkq = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgkq.zzaqa();
            }
        });
        this.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcir
            private final zzcip zzgkq;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgkq = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgkq.zzapz();
            }
        });
    }

    @CheckForNull
    public final JSONObject zzapx() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzctu)).booleanValue()) {
            return null;
        }
        return this.zzgko;
    }

    public final /* synthetic */ void zzaqa() {
        this.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzciu
            private final zzcip zzgkq;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgkq = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgkq.zzaqb();
            }
        });
    }

    @CheckForNull
    public final JSONObject zzq(String str, String str2) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzctt)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.zzxe) {
            zzaqb();
        }
        Map<String, JSONObject> map = this.zzgkn.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String zza = zzciw.zza(this.zzgkp, str, str2);
        if (zza != null) {
            return map.get(zza);
        }
        return null;
    }
}
