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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gs.class */
public final class gs {

    /* renamed from: a  reason: collision with root package name */
    public static final hi<adt> f28021a = gr.f28020a;

    /* renamed from: b  reason: collision with root package name */
    public static final hi<adt> f28022b = gu.f28026a;

    /* renamed from: c  reason: collision with root package name */
    public static final hi<adt> f28023c = gt.f28025a;

    /* renamed from: d  reason: collision with root package name */
    public static final hi<adt> f28024d = gw.f28028a;
    public static final hi<adt> e = new gx();
    public static final hi<adt> f = new gz();
    public static final hi<adt> g = gv.f28027a;
    public static final hi<Object> h = new hd();
    public static final hi<adt> i = new hc();
    public static final hi<adt> j = gy.f28029a;
    public static final hi<adt> k = new hf();
    public static final hi<adt> l = new he();
    public static final hi<abb> m = new acn();
    public static final hi<abb> n = new acq();
    public static final hi<adt> o = new gp();
    public static final hu p = new hu();
    public static final hi<adt> q = new hh();
    public static final hi<adt> r = new hg();
    public static final hi<adt> s = new hj();
    public static final hi<adt> t = new ha();

    public static <T extends aeu & aez & afb> String a(T t2, String str) {
        Uri uri;
        String f2;
        Uri parse = Uri.parse(str);
        try {
            die E = t2.E();
            uri = parse;
            if (E != null) {
                uri = parse;
                if (E.a(parse)) {
                    uri = E.a(parse, t2.getContext(), t2.s(), t2.d());
                }
            }
        } catch (zzeh e2) {
            String valueOf = String.valueOf(str);
            zzd.zzez(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        Context context = t2.getContext();
        if (zzr.zzlt().a(context) && (f2 = zzr.zzlt().f(context)) != null) {
            if (((Boolean) ekb.e().a(aq.W)).booleanValue()) {
                String str2 = (String) ekb.e().a(aq.X);
                String uri2 = uri.toString();
                if (uri2.contains(str2)) {
                    zzr.zzlt().a(context, f2);
                    return xg.a(uri2, context).replace(str2, f2);
                }
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = xg.a(xg.a(uri.toString(), context), "fbs_aeid", f2).toString();
                zzr.zzlt().a(context, f2);
                return uri3;
            }
        }
        return uri.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ void a(adh adhVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzd.zzez("URL missing from click GMSG.");
            return;
        }
        new zzbq(((aeu) adhVar).getContext(), ((afc) adhVar).k().zzbrz, a(adhVar, str)).zzyx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(aeu aeuVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzd.zzez("URL missing from httpTrack GMSG.");
        } else {
            new zzbq(aeuVar.getContext(), ((afc) aeuVar).k().zzbrz, str).zzyx();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(aez aezVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            die E = aezVar.E();
            if (E != null) {
                E.f26844b.zza(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException e2) {
            zzd.zzez("Could not parse touch parameters from gmsg.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void b(aeu aeuVar, Map map) {
        PackageManager packageManager = aeuVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
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
                            } catch (URISyntaxException e2) {
                                String valueOf = String.valueOf(optString7);
                                zzd.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
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
                        } catch (JSONException e3) {
                            zzd.zzc("Error constructing openable urls response.", e3);
                        }
                    } catch (JSONException e4) {
                        zzd.zzc("Error parsing the intent data.", e4);
                    }
                }
                ((jq) aeuVar).a("openableIntents", jSONObject);
            } catch (JSONException e5) {
                ((jq) aeuVar).a("openableIntents", new JSONObject());
            }
        } catch (JSONException e6) {
            ((jq) aeuVar).a("openableIntents", new JSONObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void c(aeu aeuVar, Map map) {
        if (!((Boolean) ekb.e().a(aq.eP)).booleanValue()) {
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
        ((jq) aeuVar).a("openableApp", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void d(aeu aeuVar, Map map) {
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
        ((jq) aeuVar).a("openableURLs", hashMap);
    }
}
