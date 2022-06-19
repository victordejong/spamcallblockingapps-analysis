package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.pubmatic.sdk.common.POBCommonConstants;
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
        return zzdzk.zzb(zzdzwVar, Exception.class, new zzdyu(null) { // from class: com.google.android.gms.internal.ads.zzcex
            private final Object zzgif = null;

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                Object obj2 = this.zzgif;
                zzd.zza("Error during loading assets.", (Exception) obj);
                return zzdzk.zzag(obj2);
            }
        }, zzazp.zzeih);
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
            return zzdzk.zzag(null);
        }
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return zzdzk.zzag(null);
        }
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        int optInt = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, -1);
        int optInt2 = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, -1);
        if (z) {
            return zzdzk.zzag(new zzaed(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zza(jSONObject.optBoolean("require"), zzdzk.zzb(this.zzghy.zza(optString, optDouble, optBoolean), new zzdvz(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.zzcet
            private final String zzdlh;
            private final int zzeff;
            private final int zzefg;
            private final double zzgid;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = optString;
                this.zzgid = optDouble;
                this.zzeff = optInt;
                this.zzefg = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                String str = this.zzdlh;
                return new zzaed(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.zzgid, this.zzeff, this.zzefg);
            }
        }, this.executor), (Object) null);
    }

    private static <T> zzdzw<T> zza(boolean z, zzdzw<T> zzdzwVar, T t) {
        return z ? zzdzk.zzb(zzdzwVar, new zzdyu(zzdzwVar) { // from class: com.google.android.gms.internal.ads.zzcfa
            private final zzdzw zzgig;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgig = zzdzwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return obj != null ? this.zzgig : zzdzk.immediateFailedFuture(new zzcva(zzdom.INTERNAL_ERROR, "Retrieve required value in native ad response failed."));
            }
        }, zzazp.zzeih) : zza(zzdzwVar, (Object) null);
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

    public final /* synthetic */ zzdzw zza(String str, Object obj) throws Exception {
        zzr.zzks();
        zzbeb zza = zzbej.zza(this.context, zzbft.zzael(), "native-omid", false, false, this.zzesm, null, this.zzbpn, null, null, this.zzghz, this.zzeqv, null, null);
        zzazx zzk = zzazx.zzk(zza);
        zza.zzacx().zza(new zzbfq(zzk) { // from class: com.google.android.gms.internal.ads.zzcez
            private final zzazx zzesg;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzesg = zzk;
            }

            @Override // com.google.android.gms.internal.ads.zzbfq
            public final void zzal(boolean z) {
                this.zzesg.zzaac();
            }
        });
        zza.loadData(str, "text/html", POBCommonConstants.URL_ENCODING);
        return zzk;
    }

    public final zzdzw<zzaed> zzc(JSONObject jSONObject, String str) {
        return zza(jSONObject.optJSONObject(str), this.zzdoe.zzdft);
    }

    public final zzdzw<List<zzaed>> zzd(JSONObject jSONObject, String str) {
        return zza(jSONObject.optJSONArray(str), this.zzdoe.zzdft, this.zzdoe.zzbnu);
    }

    public final zzdzw<zzady> zze(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return zzdzk.zzag(null);
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
        return zza(optJSONObject.optBoolean("require"), zzdzk.zzb(zza(jSONArray, false, true), new zzdvz(this, optJSONObject) { // from class: com.google.android.gms.internal.ads.zzcew
            private final JSONObject zzfst;
            private final zzcer zzgie;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgie = this;
                this.zzfst = optJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                return this.zzgie.zza(this.zzfst, (List) obj);
            }
        }, this.executor), (Object) null);
    }

    public final zzdzw<zzbeb> zzm(JSONObject jSONObject) {
        JSONObject zza = zzbh.zza(jSONObject, "html_containers", "instream");
        if (zza != null) {
            zzdzw<zzbeb> zzo = this.zzgia.zzo(zza.optString("base_url"), zza.optString("html"));
            return zzdzk.zzb(zzo, new zzdyu(zzo) { // from class: com.google.android.gms.internal.ads.zzcey
                private final zzdzw zzgig;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgig = zzo;
                }

                @Override // com.google.android.gms.internal.ads.zzdyu
                public final zzdzw zzf(Object obj) {
                    zzdzw zzdzwVar = this.zzgig;
                    zzbeb zzbebVar = (zzbeb) obj;
                    if (zzbebVar == null || zzbebVar.zzabc() == null) {
                        throw new zzcva(zzdom.INTERNAL_ERROR, "Retrieve video view in instream ad response failed.");
                    }
                    return zzdzwVar;
                }
            }, zzazp.zzeih);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("video");
        if (optJSONObject == null) {
            return zzdzk.zzag(null);
        }
        if (!TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
            return zza(zzdzk.zza(this.zzgia.zzn(optJSONObject), ((Integer) zzwr.zzqr().zzd(zzabp.zzcta)).intValue(), TimeUnit.SECONDS, this.zzfri), (Object) null);
        }
        zzd.zzex("Required field 'vast_xml' is missing");
        return zzdzk.zzag(null);
    }
}
