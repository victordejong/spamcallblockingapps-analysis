package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.android.volley.Request;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbch;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcgw;
import com.google.android.gms.internal.ads.zzcwn;
import com.google.android.gms.internal.ads.zzdpg;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import com.inmobi.ads.C8302r;
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
import p131c.p161d.p170b.p224d.p252g.p253a.C3806mi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgw.class */
public final class zzcgw {

    /* renamed from: a */
    public final Context f26002a;

    /* renamed from: b */
    public final zzcgn f26003b;

    /* renamed from: c */
    public final zzeg f26004c;

    /* renamed from: d */
    public final zzbbx f26005d;

    /* renamed from: e */
    public final zzb f26006e;

    /* renamed from: f */
    public final zzts f26007f;

    /* renamed from: g */
    public final Executor f26008g;

    /* renamed from: h */
    public final zzadu f26009h;

    /* renamed from: i */
    public final zzchj f26010i;

    /* renamed from: j */
    public final ScheduledExecutorService f26011j;

    public zzcgw(Context context, zzcgn zzcgnVar, zzeg zzegVar, zzbbx zzbbxVar, zzb zzbVar, zzts zztsVar, Executor executor, zzdok zzdokVar, zzchj zzchjVar, ScheduledExecutorService scheduledExecutorService) {
        this.f26002a = context;
        this.f26003b = zzcgnVar;
        this.f26004c = zzegVar;
        this.f26005d = zzbbxVar;
        this.f26006e = zzbVar;
        this.f26007f = zztsVar;
        this.f26008g = executor;
        this.f26009h = zzdokVar.f27647i;
        this.f26010i = zzchjVar;
        this.f26011j = scheduledExecutorService;
    }

    /* renamed from: a */
    public static <T> zzdzc<T> m14287a(zzdzc<T> zzdzcVar, T t) {
        return zzdyq.m12990a(zzdzcVar, Exception.class, new zzdya(null) { // from class: c.d.b.d.g.a.ti

            /* renamed from: a */
            public final Object f15410a;

            {
                this.f15410a = r4;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                Object obj2 = this.f15410a;
                zzayp.m16154e("Error during loading assets.", (Exception) obj);
                return zzdyq.m12988a(obj2);
            }
        }, zzbbz.f24769f);
    }

    /* renamed from: a */
    public static <T> zzdzc<T> m14280a(boolean z, final zzdzc<T> zzdzcVar, T t) {
        return z ? zzdyq.m12992a(zzdzcVar, new zzdya(zzdzcVar) { // from class: c.d.b.d.g.a.si

            /* renamed from: a */
            public final zzdzc f15309a;

            {
                this.f15309a = zzdzcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return obj != null ? this.f15309a : zzdyq.m12987a((Throwable) new zzcwn(zzdpg.INTERNAL_ERROR, "Retrieve required value in native ad response failed."));
            }
        }, zzbbz.f24769f) : m14287a(zzdzcVar, (Object) null);
    }

    /* renamed from: b */
    public static List<zzzk> m14279b(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzdwp.zzaxo();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzdwp.zzaxo();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            zzzk d = m14275d(optJSONArray.optJSONObject(i));
            if (d != null) {
                arrayList.add(d);
            }
        }
        return zzdwp.zzb(arrayList);
    }

    /* renamed from: c */
    public static zzzk m14277c(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return m14275d(optJSONObject);
    }

    /* renamed from: d */
    public static zzzk m14275d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        zzzk zzzkVar = null;
        if (!TextUtils.isEmpty(optString)) {
            zzzkVar = TextUtils.isEmpty(optString2) ? null : new zzzk(optString, optString2);
        }
        return zzzkVar;
    }

    /* renamed from: d */
    public static Integer m14274d(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt(C8302r.f32303d), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final /* synthetic */ zzadl m14282a(JSONObject jSONObject, List list) {
        Integer num = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer d = m14274d(jSONObject, "bg_color");
        Integer d2 = m14274d(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        int optInt3 = jSONObject.optInt("presentation_ms", 4000);
        if (optInt > 0) {
            num = Integer.valueOf(optInt);
        }
        return new zzadl(optString, list, d, d2, num, optInt3 + optInt2, this.f26009h.f24043e, optBoolean);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m14286a(String str, Object obj) throws Exception {
        zzp.m17968d();
        zzbgj a = zzbgr.m15609a(this.f26002a, zzbhy.m15506f(), "native-omid", false, false, this.f26004c, null, this.f26005d, null, null, this.f26006e, this.f26007f, null, false, null, null);
        final zzbch c = zzbch.m15831c(a);
        a.mo15543z().mo15492a(new zzbhu(c) { // from class: c.d.b.d.g.a.ui

            /* renamed from: a */
            public final zzbch f15647a;

            {
                this.f15647a = c;
            }

            @Override // com.google.android.gms.internal.ads.zzbhu
            /* renamed from: a */
            public final void mo15515a(boolean z) {
                this.f15647a.m15832a();
            }
        });
        a.loadData(str, "text/html", Request.DEFAULT_PARAMS_ENCODING);
        return c;
    }

    /* renamed from: a */
    public final zzdzc<List<zzadq>> m14285a(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzdyq.m12988a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(m14281a(jSONArray.optJSONObject(i), z));
        }
        return zzdyq.m12993a(zzdyq.m12989a((Iterable) arrayList), C3806mi.f14176a, this.f26008g);
    }

    /* renamed from: a */
    public final zzdzc<zzbgj> m14284a(JSONObject jSONObject) {
        JSONObject a = zzbao.m15954a(jSONObject, "html_containers", "instream");
        if (a == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                return zzdyq.m12988a((Object) null);
            }
            if (!TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
                return m14287a(zzdyq.m12994a(this.f26010i.m14267a(optJSONObject), ((Integer) zzwm.m11166e().m16921a(zzabb.f23655B1)).intValue(), TimeUnit.SECONDS, this.f26011j), (Object) null);
            }
            zzbbq.m15852d("Required field 'vast_xml' is missing");
            return zzdyq.m12988a((Object) null);
        }
        final zzdzc<zzbgj> a2 = this.f26010i.m14269a(a.optString("base_url"), a.optString(AdType.HTML));
        return zzdyq.m12992a(a2, new zzdya(a2) { // from class: c.d.b.d.g.a.pi

            /* renamed from: a */
            public final zzdzc f14548a;

            {
                this.f14548a = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                zzdzc zzdzcVar = this.f14548a;
                zzbgj zzbgjVar = (zzbgj) obj;
                if (zzbgjVar != null && zzbgjVar.mo15558i() != null) {
                    return zzdzcVar;
                }
                throw new zzcwn(zzdpg.INTERNAL_ERROR, "Retrieve video view in instream ad response failed.");
            }
        }, zzbbz.f24769f);
    }

    /* renamed from: a */
    public final zzdzc<zzadq> m14283a(JSONObject jSONObject, String str) {
        return m14281a(jSONObject.optJSONObject(str), this.f26009h.f24040b);
    }

    /* renamed from: a */
    public final zzdzc<zzadq> m14281a(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzdyq.m12988a((Object) null);
        }
        final String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return zzdyq.m12988a((Object) null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzdyq.m12988a(new zzadq(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return m14280a(jSONObject.optBoolean("require"), zzdyq.m12993a(this.f26003b.m14291a(optString, optDouble, optBoolean), new zzdvu(optString, optDouble, optInt, optInt2) { // from class: c.d.b.d.g.a.oi

            /* renamed from: a */
            public final String f14342a;

            /* renamed from: b */
            public final double f14343b;

            /* renamed from: c */
            public final int f14344c;

            /* renamed from: d */
            public final int f14345d;

            {
                this.f14342a = optString;
                this.f14343b = optDouble;
                this.f14344c = optInt;
                this.f14345d = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                String str = this.f14342a;
                return new zzadq(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f14343b, this.f14344c, this.f14345d);
            }
        }, this.f26008g), (Object) null);
    }

    /* renamed from: b */
    public final zzdzc<List<zzadq>> m14278b(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        zzadu zzaduVar = this.f26009h;
        return m14285a(optJSONArray, zzaduVar.f24040b, zzaduVar.f24042d);
    }

    /* renamed from: c */
    public final zzdzc<zzadl> m14276c(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return zzdyq.m12988a((Object) null);
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
        return m14280a(optJSONObject.optBoolean("require"), zzdyq.m12993a(m14285a(jSONArray, false, true), new zzdvu(this, optJSONObject) { // from class: c.d.b.d.g.a.ni

            /* renamed from: a */
            public final zzcgw f14254a;

            /* renamed from: b */
            public final JSONObject f14255b;

            {
                this.f14254a = this;
                this.f14255b = optJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return this.f14254a.m14282a(this.f14255b, (List) obj);
            }
        }, this.f26008g), (Object) null);
    }
}
