package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvb.class */
public final class zzbvb {
    public final List<zzbva> zza;
    public final List<String> zzb;
    public final List<String> zzc;
    public final List<String> zzd;
    public final List<String> zze;
    public final List<String> zzf;
    public final String zzg;
    public final String zzh;

    public zzbvb(JSONObject jSONObject) throws JSONException {
        int i;
        if (zzcgt.zzm(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zze.zza(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i2 = -1;
        int i3 = 0;
        while (i3 < jSONArray.length()) {
            try {
                zzbva zzbvaVar = new zzbva(jSONArray.getJSONObject(i3));
                "banner".equalsIgnoreCase(zzbvaVar.zzv);
                arrayList.add(zzbvaVar);
                i = i2;
                if (i2 < 0) {
                    Iterator<String> it = zzbvaVar.zzc.iterator();
                    while (true) {
                        i = i2;
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                i = i3;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException e) {
                i = i2;
            }
            i3++;
            i2 = i;
        }
        jSONArray.length();
        this.zza = Collections.unmodifiableList(arrayList);
        this.zzg = jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject == null) {
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzf = null;
            this.zzh = null;
            return;
        }
        optJSONObject.optLong("ad_network_timeout_millis", -1L);
        zzt.zzu();
        this.zzb = zzbvc.zza(optJSONObject, "click_urls");
        zzt.zzu();
        this.zzc = zzbvc.zza(optJSONObject, "imp_urls");
        zzt.zzu();
        this.zzd = zzbvc.zza(optJSONObject, "downloaded_imp_urls");
        zzt.zzu();
        this.zze = zzbvc.zza(optJSONObject, "nofill_urls");
        zzt.zzu();
        this.zzf = zzbvc.zza(optJSONObject, "remote_ping_urls");
        optJSONObject.optBoolean("render_in_browser", false);
        optJSONObject.optLong("refresh", -1L);
        zzccl zza = zzccl.zza(optJSONObject.optJSONArray("rewards"));
        if (zza == null) {
            this.zzh = null;
        } else {
            this.zzh = zza.zza;
        }
        optJSONObject.optBoolean("use_displayed_impression", false);
        optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        optJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
