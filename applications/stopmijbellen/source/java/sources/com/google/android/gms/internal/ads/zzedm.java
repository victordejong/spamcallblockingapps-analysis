package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedm.class */
public final class zzedm {
    private final zzcqm zza;
    private final Context zzb;
    private final zzcjf zzc;
    private final zzfef zzd;
    private final Executor zze;
    private final String zzf;
    private final zzdhk zzg;
    private final zzdho zzh;

    public zzedm(zzcqm zzcqmVar, Context context, zzcjf zzcjfVar, zzfef zzfefVar, Executor executor, String str, zzdhk zzdhkVar, zzdho zzdhoVar) {
        this.zza = zzcqmVar;
        this.zzb = context;
        this.zzc = zzcjfVar;
        this.zzd = zzfefVar;
        this.zze = executor;
        this.zzf = str;
        this.zzg = zzdhkVar;
        this.zzh = zzdhoVar;
    }

    private final zzfxa<zzfdz> zze(final String str, final String str2) {
        zzbwh zza = zzt.zzf().zza(this.zzb, this.zzc);
        zzbwb<JSONObject> zzbwbVar = zzbwe.zza;
        final zzbvx zza2 = zza.zza("google.afma.response.normalize", zzbwbVar, zzbwbVar);
        zzfxa<zzfdz> zzn = zzfwq.zzn(zzfwq.zzn(zzfwq.zzn(zzfwq.zzi(""), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzedk
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                String str3 = str;
                String str4 = str2;
                String str5 = (String) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str3);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzfwq.zzi(jSONObject);
                } catch (JSONException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    throw new JSONException(valueOf.length() != 0 ? "Preloaded loader: ".concat(valueOf) : new String("Preloaded loader: "));
                }
            }
        }, this.zze), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzedi
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzbvx.this.zzb((JSONObject) obj);
            }
        }, this.zze), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzedj
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzedm.this.zzd((JSONObject) obj);
            }
        }, this.zze);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            zzfwq.zzr(zzn, new zzedl(this), zzcjm.zzf);
        }
        return zzn;
    }

    private final String zzf(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzf));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            zzciz.zzj("Failed to update the ad types for rendering. ".concat(e.toString()));
            return str;
        }
    }

    private static final String zzg(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException e) {
            return "";
        }
    }

    public final zzfxa<zzfdz> zzc() {
        String str = this.zzd.zzd.zzx;
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfp)).booleanValue()) {
                String zzg = zzg(str);
                if (TextUtils.isEmpty(zzg)) {
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
                        this.zzh.zzbM(true);
                    }
                    return zzfwq.zzh(new zzelj(15, "Invalid ad string."));
                }
                String zzb = this.zza.zzp().zzb(zzg);
                if (!TextUtils.isEmpty(zzb)) {
                    return zze(str, zzf(zzb));
                }
            }
        }
        zzbeu zzbeuVar = this.zzd.zzd.zzs;
        if (zzbeuVar != null) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfn)).booleanValue()) {
                String zzg2 = zzg(zzbeuVar.zza);
                String zzg3 = zzg(zzbeuVar.zzb);
                if (!TextUtils.isEmpty(zzg3) && zzg2.equals(zzg3)) {
                    this.zza.zzp().zzd(zzg2);
                }
            }
            return zze(zzbeuVar.zza, zzf(zzbeuVar.zzb));
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            this.zzh.zzbM(true);
        }
        return zzfwq.zzh(new zzelj(14, "Mismatch request IDs."));
    }

    public final /* synthetic */ zzfxa zzd(JSONObject jSONObject) throws Exception {
        return zzfwq.zzi(new zzfdz(new zzfdw(this.zzd), zzfdy.zza(new StringReader(jSONObject.toString()))));
    }
}
