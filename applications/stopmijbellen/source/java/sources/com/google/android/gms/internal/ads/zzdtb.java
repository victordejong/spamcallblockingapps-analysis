package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtb.class */
public final class zzdtb {
    private final Context zza;
    private final zzdsk zzb;
    private final zzalt zzc;
    private final zzcjf zzd;
    private final zza zze;
    private final zzbay zzf;
    private final Executor zzg;
    private final zzbnw zzh;
    private final zzdtt zzi;
    private final zzdwj zzj;
    private final ScheduledExecutorService zzk;
    private final zzdve zzl;
    private final zzdyz zzm;
    private final zzfio zzn;
    private final zzfjs zzo;
    private final zzehh zzp;

    public zzdtb(Context context, zzdsk zzdskVar, zzalt zzaltVar, zzcjf zzcjfVar, zza zzaVar, zzbay zzbayVar, Executor executor, zzfef zzfefVar, zzdtt zzdttVar, zzdwj zzdwjVar, ScheduledExecutorService scheduledExecutorService, zzdyz zzdyzVar, zzfio zzfioVar, zzfjs zzfjsVar, zzehh zzehhVar, zzdve zzdveVar) {
        this.zza = context;
        this.zzb = zzdskVar;
        this.zzc = zzaltVar;
        this.zzd = zzcjfVar;
        this.zze = zzaVar;
        this.zzf = zzbayVar;
        this.zzg = executor;
        this.zzh = zzfefVar.zzi;
        this.zzi = zzdttVar;
        this.zzj = zzdwjVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdyzVar;
        this.zzn = zzfioVar;
        this.zzo = zzfjsVar;
        this.zzp = zzehhVar;
        this.zzl = zzdveVar;
    }

    public static final zzbjs zzi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzr(optJSONObject);
    }

    public static final List<zzbjs> zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzfss.zzo();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzfss.zzo();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            zzbjs zzr = zzr(optJSONArray.optJSONObject(i));
            if (zzr != null) {
                arrayList.add(zzr);
            }
        }
        return zzfss.zzm(arrayList);
    }

    private final zzbfi zzk(int i, int i2) {
        int i3 = i;
        if (i == 0) {
            if (i2 == 0) {
                return zzbfi.zzc();
            }
            i3 = 0;
        }
        return new zzbfi(this.zza, new AdSize(i3, i2));
    }

    private static <T> zzfxa<T> zzl(zzfxa<T> zzfxaVar, T t) {
        return zzfwq.zzg(zzfxaVar, Exception.class, new zzfvx(null) { // from class: com.google.android.gms.internal.ads.zzdsr
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                zze.zzb("Error during loading assets.", (Exception) obj);
                return zzfwq.zzi(null);
            }
        }, zzcjm.zzf);
    }

    private static <T> zzfxa<T> zzm(boolean z, final zzfxa<T> zzfxaVar, T t) {
        return z ? zzfwq.zzn(zzfxaVar, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdsy
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return obj != null ? zzfxa.this : zzfwq.zzh(new zzelj(1, "Retrieve required value in native ad response failed."));
            }
        }, zzcjm.zzf) : zzl(zzfxaVar, null);
    }

    private final zzfxa<zzbnu> zzn(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzfwq.zzi(null);
        }
        final String optString = jSONObject.optString(ImagesContract.URL);
        if (TextUtils.isEmpty(optString)) {
            return zzfwq.zzi(null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzfwq.zzi(new zzbnu(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zzm(jSONObject.optBoolean("require"), zzfwq.zzm(this.zzb.zzb(optString, optDouble, optBoolean), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzdsu
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                String str = optString;
                return new zzbnu(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), optDouble, optInt, optInt2);
            }
        }, this.zzg), null);
    }

    private final zzfxa<List<zzbnu>> zzo(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzfwq.zzi(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zzn(jSONArray.optJSONObject(i), z));
        }
        return zzfwq.zzm(zzfwq.zze(arrayList), zzdsv.zza, this.zzg);
    }

    private final zzfxa<zzcop> zzp(JSONObject jSONObject, zzfdn zzfdnVar, zzfdq zzfdqVar) {
        final zzfxa<zzcop> zzb = this.zzi.zzb(jSONObject.optString("base_url"), jSONObject.optString("html"), zzfdnVar, zzfdqVar, zzk(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)));
        return zzfwq.zzn(zzb, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdta
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                zzfxa zzfxaVar = zzfxa.this;
                zzcop zzcopVar = (zzcop) obj;
                if (zzcopVar == null || zzcopVar.zzs() == null) {
                    throw new zzelj(1, "Retrieve video view in html5 ad response failed.");
                }
                return zzfxaVar;
            }
        }, zzcjm.zzf);
    }

    private static Integer zzq(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    private static final zzbjs zzr(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        zzbjs zzbjsVar = null;
        if (!TextUtils.isEmpty(optString)) {
            zzbjsVar = TextUtils.isEmpty(optString2) ? null : new zzbjs(optString, optString2);
        }
        return zzbjsVar;
    }

    public final /* synthetic */ zzbnr zza(JSONObject jSONObject, List list) {
        zzbnr zzbnrVar = null;
        if (list != null) {
            if (list.isEmpty()) {
                zzbnrVar = null;
            } else {
                String optString = jSONObject.optString("text");
                Integer zzq = zzq(jSONObject, "bg_color");
                Integer zzq2 = zzq(jSONObject, "text_color");
                int optInt = jSONObject.optInt("text_size", -1);
                boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
                int optInt2 = jSONObject.optInt("animation_ms", 1000);
                int optInt3 = jSONObject.optInt("presentation_ms", 4000);
                Integer num = null;
                if (optInt > 0) {
                    num = Integer.valueOf(optInt);
                }
                zzbnrVar = new zzbnr(optString, list, zzq, zzq2, num, optInt3 + optInt2, this.zzh.zze, optBoolean);
            }
        }
        return zzbnrVar;
    }

    public final /* synthetic */ zzfxa zzb(zzbfi zzbfiVar, zzfdn zzfdnVar, zzfdq zzfdqVar, String str, String str2, Object obj) throws Exception {
        zzcop zza = this.zzj.zza(zzbfiVar, zzfdnVar, zzfdqVar);
        final zzcjq zza2 = zzcjq.zza(zza);
        zzdvb zzb = this.zzl.zzb();
        zza.zzP().zzL(zzb, zzb, zzb, zzb, zzb, false, null, new zzb(this.zza, null, null), null, null, this.zzp, this.zzo, this.zzm, this.zzn, null, zzb);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcr)).booleanValue()) {
            zza.zzaf("/getNativeAdViewSignals", zzbrs.zzs);
        }
        zza.zzaf("/getNativeClickMeta", zzbrs.zzt);
        zza.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdsq
            @Override // com.google.android.gms.internal.ads.zzcqa
            public final void zza(boolean z) {
                zzcjq zzcjqVar = zzcjq.this;
                if (z) {
                    zzcjqVar.zzb();
                } else {
                    zzcjqVar.zze(new zzelj(1, "Image Web View failed to load."));
                }
            }
        });
        zza.zzad(str, str2, null);
        return zza2;
    }

    public final /* synthetic */ zzfxa zzc(String str, Object obj) throws Exception {
        zzt.zzz();
        zzcop zza = zzcpb.zza(this.zza, zzcqe.zza(), "native-omid", false, false, this.zzc, null, this.zzd, null, null, this.zze, this.zzf, null, null);
        final zzcjq zza2 = zzcjq.zza(zza);
        zza.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdss
            @Override // com.google.android.gms.internal.ads.zzcqa
            public final void zza(boolean z) {
                zzcjq.this.zzb();
            }
        });
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdE)).booleanValue()) {
            zza.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            zza.loadData(str, "text/html", "UTF-8");
        }
        return zza2;
    }

    public final zzfxa<zzbnr> zzd(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzfwq.zzi(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        JSONArray jSONArray = optJSONArray;
        if (optJSONArray == null) {
            jSONArray = optJSONArray;
            if (optJSONObject2 != null) {
                jSONArray = new JSONArray();
                jSONArray.put(optJSONObject2);
            }
        }
        return zzm(optJSONObject.optBoolean("require"), zzfwq.zzm(zzo(jSONArray, false, true), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzdst
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                return zzdtb.this.zza(optJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final zzfxa<zzbnu> zze(JSONObject jSONObject, String str) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb);
    }

    public final zzfxa<List<zzbnu>> zzf(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        zzbnw zzbnwVar = this.zzh;
        return zzo(optJSONArray, zzbnwVar.zzb, zzbnwVar.zzd);
    }

    public final zzfxa<zzcop> zzg(JSONObject jSONObject, String str, final zzfdn zzfdnVar, final zzfdq zzfdqVar) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgZ)).booleanValue()) {
            return zzfwq.zzi(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzfwq.zzi(null);
        }
        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
        if (optJSONObject == null) {
            return zzfwq.zzi(null);
        }
        final String optString = optJSONObject.optString("base_url");
        final String optString2 = optJSONObject.optString("html");
        final zzbfi zzk = zzk(optJSONObject.optInt("width", 0), optJSONObject.optInt("height", 0));
        if (TextUtils.isEmpty(optString2)) {
            return zzfwq.zzi(null);
        }
        final zzfxa zzn = zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdsw
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzdtb.this.zzb(zzk, zzfdnVar, zzfdqVar, optString, optString2, obj);
            }
        }, zzcjm.zze);
        return zzfwq.zzn(zzn, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdsz
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                zzfxa zzfxaVar = zzfxa.this;
                if (((zzcop) obj) != null) {
                    return zzfxaVar;
                }
                throw new zzelj(1, "Retrieve Web View from image ad response failed.");
            }
        }, zzcjm.zzf);
    }

    public final zzfxa<zzcop> zzh(JSONObject jSONObject, zzfdn zzfdnVar, zzfdq zzfdqVar) {
        zzfxa<zzcop> zzfxaVar;
        zzfxa<zzcop> zzfxaVar2;
        JSONObject zzg = zzby.zzg(jSONObject, "html_containers", "instream");
        if (zzg == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                zzfxaVar = zzfwq.zzi(null);
            } else {
                String optString = optJSONObject.optString("vast_xml");
                boolean z = false;
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgY)).booleanValue()) {
                    z = false;
                    if (optJSONObject.has("html")) {
                        z = true;
                    }
                }
                if (TextUtils.isEmpty(optString)) {
                    if (!z) {
                        zzciz.zzj("Required field 'vast_xml' or 'html' is missing");
                        zzfxaVar = zzfwq.zzi(null);
                    }
                } else if (!z) {
                    zzfxaVar2 = this.zzi.zza(optJSONObject);
                    zzfxaVar = zzl(zzfwq.zzo(zzfxaVar2, ((Integer) zzbgq.zzc().zzb(zzblj.zzcs)).intValue(), TimeUnit.SECONDS, this.zzk), null);
                }
                zzfxaVar2 = zzp(optJSONObject, zzfdnVar, zzfdqVar);
                zzfxaVar = zzl(zzfwq.zzo(zzfxaVar2, ((Integer) zzbgq.zzc().zzb(zzblj.zzcs)).intValue(), TimeUnit.SECONDS, this.zzk), null);
            }
            return zzfxaVar;
        }
        return zzp(zzg, zzfdnVar, zzfdqVar);
    }
}
