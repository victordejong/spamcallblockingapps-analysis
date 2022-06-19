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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxc.class */
public final class zzbxc {
    public final List<zzbxb> zza;
    public final List<String> zzb;
    public final List<String> zzc;
    public final List<String> zzd;
    public final List<String> zze;
    public final List<String> zzf;
    public final String zzg;
    public final String zzh;

    public zzbxc(JSONObject jSONObject) throws JSONException {
        int i;
        if (zzciz.zzm(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zze.zza(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int i4 = i3;
            if (i2 >= jSONArray.length()) {
                break;
            }
            try {
                zzbxb zzbxbVar = new zzbxb(jSONArray.getJSONObject(i2));
                "banner".equalsIgnoreCase(zzbxbVar.zzv);
                arrayList.add(zzbxbVar);
                i = i4;
                if (i4 < 0) {
                    Iterator<String> it2 = zzbxbVar.zzc.iterator();
                    while (true) {
                        i = i4;
                        if (it2.hasNext()) {
                            if (it2.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                i = i2;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException e) {
                i = i4;
            }
            i2++;
            i3 = i;
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
        zzt.zzg();
        this.zzb = zzbxd.zza(optJSONObject, "click_urls");
        zzt.zzg();
        this.zzc = zzbxd.zza(optJSONObject, "imp_urls");
        zzt.zzg();
        this.zzd = zzbxd.zza(optJSONObject, "downloaded_imp_urls");
        zzt.zzg();
        this.zze = zzbxd.zza(optJSONObject, "nofill_urls");
        zzt.zzg();
        this.zzf = zzbxd.zza(optJSONObject, "remote_ping_urls");
        optJSONObject.optBoolean("render_in_browser", false);
        optJSONObject.optLong("refresh", -1L);
        zzces zza = zzces.zza(optJSONObject.optJSONArray("rewards"));
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
