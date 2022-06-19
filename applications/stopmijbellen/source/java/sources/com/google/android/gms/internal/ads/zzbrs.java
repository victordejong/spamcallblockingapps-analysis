package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.zzt;
import java.net.URISyntaxException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrs.class */
public final class zzbrs {
    public static final zzbrt<zzcop> zza = zzbra.zza;
    public static final zzbrt<zzcop> zzb = zzbqy.zza;
    public static final zzbrt<zzcop> zzc = zzbqz.zza;
    public static final zzbrt<zzcop> zzd = new zzbrk();
    public static final zzbrt<zzcop> zze = new zzbrl();
    public static final zzbrt<zzcop> zzf = zzbrb.zza;
    public static final zzbrt<Object> zzg = new zzbrm();
    public static final zzbrt<zzcop> zzh = new zzbrn();
    public static final zzbrt<zzcop> zzi = zzbrc.zza;
    public static final zzbrt<zzcop> zzj = new zzbro();
    public static final zzbrt<zzcop> zzk = new zzbrp();
    public static final zzbrt<zzclh> zzl = new zzcmt();
    public static final zzbrt<zzclh> zzm = new zzcmu();
    public static final zzbrt<zzcop> zzn = new zzbqw();
    public static final zzbsh zzo = new zzbsh();
    public static final zzbrt<zzcop> zzp = new zzbrq();
    public static final zzbrt<zzcop> zzq = new zzbrr();
    public static final zzbrt<zzcop> zzr = new zzbrg();
    public static final zzbrt<zzcop> zzs = new zzbrh();
    public static final zzbrt<zzcop> zzt = new zzbri();

    public static zzbrt<zzcop> zza(final zzdmd zzdmdVar) {
        return new zzbrt() { // from class: com.google.android.gms.internal.ads.zzbqx
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzcop zzcopVar = (zzcop) obj;
                zzbrs.zzd(map, zzdmd.this);
                String str = (String) map.get("u");
                if (str == null) {
                    zzciz.zzj("URL missing from click GMSG.");
                } else {
                    zzfwq.zzr(zzbrs.zzb(zzcopVar, str), new zzbrj(zzcopVar), zzcjm.zza);
                }
            }
        };
    }

    public static zzfxa<String> zzb(zzcop zzcopVar, String str) {
        Uri uri;
        Uri parse = Uri.parse(str);
        try {
            zzalt zzK = zzcopVar.zzK();
            uri = parse;
            if (zzK != null) {
                uri = parse;
                if (zzK.zzf(parse)) {
                    uri = zzK.zza(parse, zzcopVar.getContext(), zzcopVar.zzH(), zzcopVar.zzk());
                }
            }
        } catch (zzalu e) {
            zzciz.zzj(str.length() != 0 ? "Unable to append parameter to URL: ".concat(str) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        final String zzb2 = zzchj.zzb(uri, zzcopVar.getContext());
        long longValue = zzbmw.zze.zze().longValue();
        if (longValue <= 0 || longValue > 214106404) {
            return zzfwq.zzi(zzb2);
        }
        zzfwh zzw = zzfwh.zzw(zzcopVar.zzT());
        zzbrf zzbrfVar = zzbrf.zza;
        zzfxb zzfxbVar = zzcjm.zzf;
        return zzfwq.zzf(zzfwq.zzm(zzfwq.zzf(zzw, Throwable.class, zzbrfVar, zzfxbVar), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzbrd
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                String str2;
                String str3 = zzb2;
                String str4 = (String) obj;
                zzbrt<zzcop> zzbrtVar = zzbrs.zza;
                if (str4 == null) {
                    str2 = str3;
                } else {
                    if (zzbmw.zzf.zze().booleanValue()) {
                        String host = Uri.parse(str3).getHost();
                        int i = 0;
                        while (true) {
                            str2 = str3;
                            if (i < 3) {
                                if (host.endsWith(new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"}[i])) {
                                    break;
                                }
                                i++;
                            } else {
                                break;
                            }
                        }
                    }
                    String zze2 = zzbmw.zza.zze();
                    String zze3 = zzbmw.zzb.zze();
                    String str5 = str3;
                    if (!TextUtils.isEmpty(zze2)) {
                        str5 = str3.replace(zze2, str4);
                    }
                    str2 = str5;
                    if (!TextUtils.isEmpty(zze3)) {
                        Uri parse2 = Uri.parse(str5);
                        str2 = str5;
                        if (TextUtils.isEmpty(parse2.getQueryParameter(zze3))) {
                            return parse2.buildUpon().appendQueryParameter(zze3, str4).toString();
                        }
                    }
                }
                return str2;
            }
        }, zzfxbVar), Throwable.class, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzbre
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                String str2 = zzb2;
                Throwable th = (Throwable) obj;
                zzbrt<zzcop> zzbrtVar = zzbrs.zza;
                if (zzbmw.zzk.zze().booleanValue()) {
                    zzt.zzo().zzs(th, "prepareClickUrl.attestation2");
                }
                return str2;
            }
        }, zzfxbVar);
    }

    public static /* synthetic */ void zzc(zzcpq zzcpqVar, Map map) {
        PackageManager packageManager = zzcpqVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString(FacebookAdapter.KEY_ID);
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
                                zzciz.zzh(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
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
                            zzciz.zzh("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        zzciz.zzh("Error parsing the intent data.", e3);
                    }
                }
                ((zzbuk) zzcpqVar).zze("openableIntents", jSONObject);
            } catch (JSONException e4) {
                ((zzbuk) zzcpqVar).zze("openableIntents", new JSONObject());
            }
        } catch (JSONException e5) {
            ((zzbuk) zzcpqVar).zze("openableIntents", new JSONObject());
        }
    }

    public static void zzd(Map<String, String> map, zzdmd zzdmdVar) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhl)).booleanValue() || !map.containsKey("sc") || !map.get("sc").equals("1") || zzdmdVar == null) {
            return;
        }
        zzdmdVar.zzq();
    }
}
