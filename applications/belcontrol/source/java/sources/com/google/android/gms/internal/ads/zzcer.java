package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.ImagesContract;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcer.class */
public final class zzcer {
    private final Context context;
    private final Executor executor;
    private final zzazn zzbpn;
    private final zzaeh zzdoe;
    private final zztu zzeqv;
    private final zzei zzesm;
    private final ScheduledExecutorService zzfri;
    private final zzcem zzghy;
    private final zzb zzghz;
    private final zzcfi zzgia;

    public zzcer(Context context, zzcem zzcemVar, zzei zzeiVar, zzazn zzaznVar, zzb zzbVar, zztu zztuVar, Executor executor, zzdnp zzdnpVar, zzcfi zzcfiVar, ScheduledExecutorService scheduledExecutorService) {
        this.context = context;
        this.zzghy = zzcemVar;
        this.zzesm = zzeiVar;
        this.zzbpn = zzaznVar;
        this.zzghz = zzbVar;
        this.zzeqv = zztuVar;
        this.executor = executor;
        this.zzdoe = zzdnpVar.zzdoe;
        this.zzgia = zzcfiVar;
        this.zzfri = scheduledExecutorService;
    }

    private static <T> zzdzw<T> zza(zzdzw<T> zzdzwVar, T t) {
        return zzdzk.zzb(zzdzwVar, Exception.class, new zzcex((Object) null), zzazp.zzeih);
    }

    private final zzdzw<List<zzaed>> zza(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzdzk.zzag(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zza(jSONArray.optJSONObject(i), z));
        }
        return zzdzk.zzb(zzdzk.zzi(arrayList), zzceu.zzeaj, this.executor);
    }

    private final zzdzw<zzaed> zza(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzdzk.zzag((Object) null);
        }
        String optString = jSONObject.optString(ImagesContract.URL);
        if (TextUtils.isEmpty(optString)) {
            return zzdzk.zzag((Object) null);
        }
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        int optInt = jSONObject.optInt("width", -1);
        int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzdzk.zzag(new zzaed((Drawable) null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zza(jSONObject.optBoolean("require"), zzdzk.zzb(this.zzghy.zza(optString, optDouble, optBoolean), new zzcet(optString, optDouble, optInt, optInt2), this.executor), (Object) null);
    }

    private static <T> zzdzw<T> zza(boolean z, zzdzw<T> zzdzwVar, T t) {
        return z ? zzdzk.zzb(zzdzwVar, new zzcfa(zzdzwVar), zzazp.zzeih) : zza(zzdzwVar, (Object) null);
    }

    private static Integer zzf(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    public static List<zzzu> zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzdxd.zzazm();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzdxd.zzazm();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            zzzu zzl = zzl(optJSONArray.optJSONObject(i));
            if (zzl != null) {
                arrayList.add(zzl);
            }
        }
        return zzdxd.zzb(arrayList);
    }

    public static zzzu zzk(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzl(optJSONObject);
    }

    private static zzzu zzl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        zzzu zzzuVar = null;
        if (!TextUtils.isEmpty(optString)) {
            zzzuVar = TextUtils.isEmpty(optString2) ? null : new zzzu(optString, optString2);
        }
        return zzzuVar;
    }

    public final /* synthetic */ zzady zza(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer zzf = zzf(jSONObject, "bg_color");
        Integer zzf2 = zzf(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        int optInt3 = jSONObject.optInt("presentation_ms", 4000);
        Integer num = null;
        if (optInt > 0) {
            num = Integer.valueOf(optInt);
        }
        return new zzady(optString, list, zzf, zzf2, num, optInt3 + optInt2, this.zzdoe.zzbnv, optBoolean);
    }

    public final /* synthetic */ zzdzw zza(String str, Object obj) {
        zzr.zzks();
        zzbeb zza = zzbej.zza(this.context, zzbft.zzael(), "native-omid", false, false, this.zzesm, null, this.zzbpn, null, null, this.zzghz, this.zzeqv, null, null);
        zzazx zzk = zzazx.zzk(zza);
        zza.zzacx().zza(new zzcez(zzk));
        zza.loadData(str, "text/html", C0515C.UTF8_NAME);
        return zzk;
    }

    public final zzdzw<zzaed> zzc(JSONObject jSONObject, String str) {
        return zza(jSONObject.optJSONObject(str), this.zzdoe.zzdft);
    }

    public final zzdzw<List<zzaed>> zzd(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        zzaeh zzaehVar = this.zzdoe;
        return zza(optJSONArray, zzaehVar.zzdft, zzaehVar.zzbnu);
    }

    public final zzdzw<zzady> zze(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return zzdzk.zzag((Object) null);
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
        return zza(optJSONObject.optBoolean("require"), zzdzk.zzb(zza(jSONArray, false, true), new zzcew(this, optJSONObject), this.executor), (Object) null);
    }

    public final zzdzw<zzbeb> zzm(JSONObject jSONObject) {
        JSONObject zza = zzbh.zza(jSONObject, "html_containers", "instream");
        if (zza != null) {
            zzdzw<zzbeb> zzo = this.zzgia.zzo(zza.optString("base_url"), zza.optString(AdType.HTML));
            return zzdzk.zzb(zzo, new zzcey(zzo), zzazp.zzeih);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("video");
        if (optJSONObject == null) {
            return zzdzk.zzag((Object) null);
        }
        if (!TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
            return zza(zzdzk.zza(this.zzgia.zzn(optJSONObject), ((Integer) zzwr.zzqr().zzd(zzabp.zzcta)).intValue(), TimeUnit.SECONDS, this.zzfri), (Object) null);
        }
        zzazk.zzex("Required field 'vast_xml' is missing");
        return zzdzk.zzag((Object) null);
    }
}
