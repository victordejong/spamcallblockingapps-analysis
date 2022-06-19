package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.util.zzbq;
import com.google.android.gms.ads.internal.util.zzd;
import com.mopub.common.Constants;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahm.class */
public final class zzahm {
    public static final zzaif<zzbeb> zzdhb = zzahp.zzdhv;
    public static final zzaif<zzbeb> zzdhc = zzaho.zzdhv;
    public static final zzaif<zzbeb> zzdhd = zzahr.zzdhv;
    public static final zzaif<zzbeb> zzdhe = zzahq.zzdhv;
    public static final zzaif<zzbeb> zzdhf = new zzahv();
    public static final zzaif<zzbeb> zzdhg = new zzahx();
    public static final zzaif<zzbeb> zzdhh = zzaht.zzdhv;
    public static final zzaif<Object> zzdhi = new zzahw();
    public static final zzaif<zzbeb> zzdhj = new zzahz();
    public static final zzaif<zzbeb> zzdhk = zzahs.zzdhv;
    public static final zzaif<zzbeb> zzdhl = new zzahy();
    public static final zzaif<zzbeb> zzdhm = new zzaib();
    public static final zzaif<zzbbo> zzdhn = new zzbda();
    public static final zzaif<zzbbo> zzdho = new zzbcz();
    public static final zzaif<zzbeb> zzdhp = new zzahn();
    public static final zzain zzdhq = new zzain();
    public static final zzaif<zzbeb> zzdhr = new zzaia();
    public static final zzaif<zzbeb> zzdhs = new zzaid();
    public static final zzaif<zzbeb> zzdht = new zzaic();
    public static final zzaif<zzbeb> zzdhu = new zzahu();

    public static <T extends zzbfd & zzbfm & zzbfo> String zza(T t, String str) {
        Uri uri;
        Uri parse = Uri.parse(str);
        try {
            zzei zzada = t.zzada();
            uri = parse;
            if (zzada != null) {
                uri = parse;
                if (zzada.zzb(parse)) {
                    uri = zzada.zza(parse, t.getContext(), t.getView(), t.zzabe());
                }
            }
        } catch (zzeh e) {
            String valueOf = String.valueOf(str);
            zzazk.zzex(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        return zzaxu.zzb(uri, t.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ void zza(zzbdu zzbduVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzazk.zzex("URL missing from click GMSG.");
            return;
        }
        new zzbq(((zzbfd) zzbduVar).getContext(), ((zzbfl) zzbduVar).zzabj().zzbrp, zza(zzbduVar, str)).zzye();
    }

    public static final /* synthetic */ void zza(zzbfd zzbfdVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzazk.zzex("URL missing from httpTrack GMSG.");
        } else {
            new zzbq(zzbfdVar.getContext(), ((zzbfl) zzbfdVar).zzabj().zzbrp, str).zzye();
        }
    }

    public static final /* synthetic */ void zza(zzbfm zzbfmVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzei zzada = zzbfmVar.zzada();
            if (zzada == null) {
                return;
            }
            zzada.zzca().zza(parseInt, parseInt2, parseInt3);
        } catch (NumberFormatException e) {
            zzazk.zzex("Could not parse touch parameters from gmsg.");
        }
    }

    public static final /* synthetic */ void zzb(zzbfd zzbfdVar, Map map) {
        String str;
        JSONException e;
        String optString;
        boolean z;
        PackageManager packageManager = zzbfdVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString(TtmlNode.TAG_P);
                        String optString6 = jSONObject2.optString("c");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e2) {
                                String valueOf = String.valueOf(optString7);
                                zzazk.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                                intent = null;
                            }
                        }
                        z = true;
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
                    } catch (JSONException e3) {
                        e = e3;
                        str = "Error parsing the intent data.";
                    }
                    try {
                        jSONObject.put(optString, z);
                    } catch (JSONException e4) {
                        e = e4;
                        str = "Error constructing openable urls response.";
                        zzazk.zzc(str, e);
                    }
                }
                ((zzaki) zzbfdVar).zza("openableIntents", jSONObject);
            } catch (JSONException e5) {
                ((zzaki) zzbfdVar).zza("openableIntents", new JSONObject());
            }
        } catch (JSONException e6) {
            ((zzaki) zzbfdVar).zza("openableIntents", new JSONObject());
        }
    }

    public static final /* synthetic */ void zzc(zzbfd zzbfdVar, Map map) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczw)).booleanValue()) {
            zzazk.zzex("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            zzazk.zzex("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        Boolean valueOf = Boolean.valueOf(zzbfdVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
        hashMap.put(str, valueOf);
        String valueOf2 = String.valueOf(valueOf);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(valueOf2).length());
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(valueOf2);
        zzd.zzeb(sb.toString());
        ((zzaki) zzbfdVar).zza("openableApp", hashMap);
    }

    public static final /* synthetic */ void zzd(zzbfd zzbfdVar, Map map) {
        String str = (String) map.get(Constants.VIDEO_TRACKING_URLS_KEY);
        if (TextUtils.isEmpty(str)) {
            zzazk.zzex("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzbfdVar.getContext().getPackageManager();
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
            zzd.zzeb(sb.toString());
        }
        ((zzaki) zzbfdVar).zza("openableURLs", hashMap);
    }
}
