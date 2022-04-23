package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.ExtraHints;
import com.google.common.collect.MapMakerInternalMap;
import com.mopub.common.Constants;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3338a0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3375b0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3416c0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3454d0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3491e0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3528f0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3565g0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3602h0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3639i0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3677j0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3714k0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3751l0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3788m0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3825n0;
import p131c.p161d.p170b.p224d.p252g.p253a.C3862o0;
import p131c.p161d.p170b.p224d.p252g.p253a.C4271z;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagx.class */
public final class zzagx {

    /* renamed from: a */
    public static final zzahq<zzbgj> f24091a = C3338a0.f12052a;

    /* renamed from: b */
    public static final zzahq<zzbgj> f24092b = C4271z.f16243a;

    /* renamed from: c */
    public static final zzahq<zzbgj> f24093c = C3416c0.f12506a;

    /* renamed from: d */
    public static final zzahq<zzbgj> f24094d = C3375b0.f12319a;

    /* renamed from: e */
    public static final zzahq<zzbgj> f24095e = new C3565g0();

    /* renamed from: f */
    public static final zzahq<zzbgj> f24096f = new C3639i0();

    /* renamed from: g */
    public static final zzahq<zzbgj> f24097g = C3491e0.f12786a;

    /* renamed from: h */
    public static final zzahq<Object> f24098h = new C3602h0();

    /* renamed from: i */
    public static final zzahq<zzbgj> f24099i = new C3714k0();

    /* renamed from: j */
    public static final zzahq<zzbgj> f24100j = C3454d0.f12590a;

    /* renamed from: k */
    public static final zzahq<zzbgj> f24101k = new C3677j0();

    /* renamed from: l */
    public static final zzahq<zzbgj> f24102l = new C3788m0();

    /* renamed from: m */
    public static final zzahq<zzbdu> f24103m = new zzbfe();

    /* renamed from: n */
    public static final zzahq<zzbdu> f24104n = new zzbfh();

    /* renamed from: o */
    public static final zzahq<zzbgj> f24105o = new zzagy();

    /* renamed from: p */
    public static final zzahw f24106p = new zzahw();

    /* renamed from: q */
    public static final zzahq<zzbgj> f24107q = new C3751l0();

    /* renamed from: r */
    public static final zzahq<zzbgj> f24108r = new C3862o0();

    /* renamed from: s */
    public static final zzahq<zzbgj> f24109s = new C3825n0();

    /* renamed from: t */
    public static final zzahq<zzbgj> f24110t = new C3528f0();

    /* renamed from: a */
    public static final /* synthetic */ void m16766a(zzbfy zzbfyVar, Map map) {
        Uri uri;
        String str = (String) map.get("u");
        if (str == null) {
            zzbbq.m15852d("URL missing from click GMSG.");
            return;
        }
        Uri parse = Uri.parse(str);
        try {
            zzeg h = ((zzbhq) zzbfyVar).mo15518h();
            uri = parse;
            if (h != null) {
                uri = parse;
                if (h.m12598b(parse)) {
                    uri = h.m12601a(parse, ((zzbhi) zzbfyVar).getContext(), ((zzbhs) zzbfyVar).getView(), ((zzbhi) zzbfyVar).mo15528b());
                }
            }
        } catch (zzef e) {
            String valueOf = String.valueOf(str);
            zzbbq.m15852d(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        zzbhi zzbhiVar = (zzbhi) zzbfyVar;
        new zzbax(zzbhiVar.getContext(), ((zzbht) zzbfyVar).mo15516a().f24759a, zzaxh.m16221a(uri, zzbhiVar.getContext())).m16157b();
    }

    /* renamed from: a */
    public static final /* synthetic */ void m16765a(zzbhi zzbhiVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzbbq.m15852d("URL missing from httpTrack GMSG.");
        } else {
            new zzbax(zzbhiVar.getContext(), ((zzbht) zzbhiVar).mo15516a().f24759a, str).m16157b();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m16764a(zzbhq zzbhqVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzeg h = zzbhqVar.mo15518h();
            if (h != null) {
                h.m12604a().mo13025a(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException e) {
            zzbbq.m15852d("Could not parse touch parameters from gmsg.");
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ void m16763b(zzbhi zzbhiVar, Map map) {
        PackageManager packageManager = zzbhiVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                zzbbq.m15855b(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                                intent = null;
                            }
                        }
                        boolean z = true;
                        Intent intent2 = intent;
                        if (intent == null) {
                            Intent intent3 = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent3.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent3.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent3.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent3.setPackage(optString5);
                            }
                            intent2 = intent3;
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                intent2 = intent3;
                                if (split.length == 2) {
                                    intent3.setComponent(new ComponentName(split[0], split[1]));
                                    intent2 = intent3;
                                }
                            }
                        }
                        if (packageManager.resolveActivity(intent2, MapMakerInternalMap.MAX_SEGMENTS) == null) {
                            z = false;
                        }
                        try {
                            jSONObject.put(optString, z);
                        } catch (JSONException e2) {
                            zzbbq.m15855b("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        zzbbq.m15855b("Error parsing the intent data.", e3);
                    }
                }
                ((zzajr) zzbhiVar).mo15576a("openableIntents", jSONObject);
            } catch (JSONException e4) {
                ((zzajr) zzbhiVar).mo15576a("openableIntents", new JSONObject());
            }
        } catch (JSONException e5) {
            ((zzajr) zzbhiVar).mo15576a("openableIntents", new JSONObject());
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ void m16762c(zzbhi zzbhiVar, Map map) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23837j4)).booleanValue()) {
            zzbbq.m15852d("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            zzbbq.m15852d("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(str, Boolean.valueOf(zzbhiVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null));
        ((zzajr) zzbhiVar).mo15577a("openableApp", hashMap);
    }

    /* renamed from: d */
    public static final /* synthetic */ void m16761d(zzbhi zzbhiVar, Map map) {
        String str = (String) map.get(Constants.VIDEO_TRACKING_URLS_KEY);
        if (TextUtils.isEmpty(str)) {
            zzbbq.m15852d("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzbhiVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(ExtraHints.KEYWORD_SEPARATOR, 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), MapMakerInternalMap.MAX_SEGMENTS) == null) {
                z = false;
            }
            hashMap.put(str2, Boolean.valueOf(z));
        }
        ((zzajr) zzbhiVar).mo15577a("openableURLs", hashMap);
    }
}
