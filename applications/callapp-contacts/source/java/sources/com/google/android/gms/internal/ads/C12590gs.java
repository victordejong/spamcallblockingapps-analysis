package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.share.Constants;
import com.google.android.gms.ads.internal.util.zzbq;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.gs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gs.class */
public final class C12590gs {

    /* renamed from: a */
    public static final AbstractC12607hi<adt> f49311a = C12589gr.f49310a;

    /* renamed from: b */
    public static final AbstractC12607hi<adt> f49312b = C12592gu.f49332a;

    /* renamed from: c */
    public static final AbstractC12607hi<adt> f49313c = C12591gt.f49331a;

    /* renamed from: d */
    public static final AbstractC12607hi<adt> f49314d = C12594gw.f49334a;

    /* renamed from: e */
    public static final AbstractC12607hi<adt> f49315e = new C12595gx();

    /* renamed from: f */
    public static final AbstractC12607hi<adt> f49316f = new C12597gz();

    /* renamed from: g */
    public static final AbstractC12607hi<adt> f49317g = C12593gv.f49333a;

    /* renamed from: h */
    public static final AbstractC12607hi<Object> f49318h = new C12602hd();

    /* renamed from: i */
    public static final AbstractC12607hi<adt> f49319i = new C12601hc();

    /* renamed from: j */
    public static final AbstractC12607hi<adt> f49320j = C12596gy.f49335a;

    /* renamed from: k */
    public static final AbstractC12607hi<adt> f49321k = new C12604hf();

    /* renamed from: l */
    public static final AbstractC12607hi<adt> f49322l = new C12603he();

    /* renamed from: m */
    public static final AbstractC12607hi<abb> f49323m = new acn();

    /* renamed from: n */
    public static final AbstractC12607hi<abb> f49324n = new acq();

    /* renamed from: o */
    public static final AbstractC12607hi<adt> f49325o = new C12587gp();

    /* renamed from: p */
    public static final C12619hu f49326p = new C12619hu();

    /* renamed from: q */
    public static final AbstractC12607hi<adt> f49327q = new C12606hh();

    /* renamed from: r */
    public static final AbstractC12607hi<adt> f49328r = new C12605hg();

    /* renamed from: s */
    public static final AbstractC12607hi<adt> f49329s = new C12608hj();

    /* renamed from: t */
    public static final AbstractC12607hi<adt> f49330t = new C12599ha();

    /* renamed from: a */
    public static <T extends aeu & aez & afb> String m14634a(T t, String str) {
        Uri uri;
        String m14024f;
        Uri parse = Uri.parse(str);
        try {
            die mo13805E = t.mo13805E();
            uri = parse;
            if (mo13805E != null) {
                uri = parse;
                if (mo13805E.m16643a(parse)) {
                    uri = mo13805E.m16642a(parse, t.getContext(), t.mo13731s(), t.mo13751d());
                }
            }
        } catch (zzeh e) {
            String valueOf = String.valueOf(str);
            zzd.zzez(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        Context context = t.getContext();
        if (zzr.zzlt().m14044a(context) && (m14024f = zzr.zzlt().m14024f(context)) != null) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42633W)).booleanValue()) {
                String str2 = (String) ekb.m14831e().m18571a(C12187aq.f42634X);
                String uri2 = uri.toString();
                if (uri2.contains(str2)) {
                    zzr.zzlt().m14043a(context, m14024f);
                    return C13040xg.m14008a(uri2, context).replace(str2, m14024f);
                }
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = C13040xg.m14006a(C13040xg.m14008a(uri.toString(), context), "fbs_aeid", m14024f).toString();
                zzr.zzlt().m14043a(context, m14024f);
                return uri3;
            }
        }
        return uri.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final /* synthetic */ void m14635a(adh adhVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzd.zzez("URL missing from click GMSG.");
            return;
        }
        new zzbq(((aeu) adhVar).getContext(), ((afc) adhVar).mo13739k().zzbrz, m14634a(adhVar, str)).zzyx();
    }

    /* renamed from: a */
    public static final /* synthetic */ void m14633a(aeu aeuVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzd.zzez("URL missing from httpTrack GMSG.");
        } else {
            new zzbq(aeuVar.getContext(), ((afc) aeuVar).mo13739k().zzbrz, str).zzyx();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m14632a(aez aezVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            die mo13805E = aezVar.mo13805E();
            if (mo13805E == null) {
                return;
            }
            mo13805E.f47085b.zza(parseInt, parseInt2, parseInt3);
        } catch (NumberFormatException e) {
            zzd.zzez("Could not parse touch parameters from gmsg.");
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ void m14631b(aeu aeuVar, Map map) {
        PackageManager packageManager = aeuVar.getContext().getPackageManager();
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
                        String optString6 = jSONObject2.optString(Constants.URL_CAMPAIGN);
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                zzd.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
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
                        if (packageManager.resolveActivity(intent2, 65536) == null) {
                            z = false;
                        }
                        try {
                            jSONObject.put(optString, z);
                        } catch (JSONException e2) {
                            zzd.zzc("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        zzd.zzc("Error parsing the intent data.", e3);
                    }
                }
                ((AbstractC12669jq) aeuVar).mo13769a("openableIntents", jSONObject);
            } catch (JSONException e4) {
                ((AbstractC12669jq) aeuVar).mo13769a("openableIntents", new JSONObject());
            }
        } catch (JSONException e5) {
            ((AbstractC12669jq) aeuVar).mo13769a("openableIntents", new JSONObject());
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ void m14630c(aeu aeuVar, Map map) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42865eP)).booleanValue()) {
            zzd.zzez("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            zzd.zzez("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        Boolean valueOf = Boolean.valueOf(aeuVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
        hashMap.put(str, valueOf);
        String valueOf2 = String.valueOf(valueOf);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(valueOf2).length());
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(valueOf2);
        zzd.zzed(sb.toString());
        ((AbstractC12669jq) aeuVar).mo13770a("openableApp", hashMap);
    }

    /* renamed from: d */
    public static final /* synthetic */ void m14629d(aeu aeuVar, Map map) {
        String str = (String) map.get(com.mopub.common.Constants.VIDEO_TRACKING_URLS_KEY);
        if (TextUtils.isEmpty(str)) {
            zzd.zzez("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = aeuVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str2, valueOf);
            String valueOf2 = String.valueOf(valueOf);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("/canOpenURLs;");
            sb.append(str2);
            sb.append(";");
            sb.append(valueOf2);
            zzd.zzed(sb.toString());
        }
        ((AbstractC12669jq) aeuVar).mo13770a("openableURLs", hashMap);
    }
}
