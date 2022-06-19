package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.net.URISyntaxException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpq.class */
public final class zzbpq {
    public static final zzbpr<zzcml> zza = zzbov.zza;
    public static final zzbpr<zzcml> zzb = zzbow.zza;
    public static final zzbpr<zzcml> zzc = zzbox.zza;
    public static final zzbpr<zzcml> zzd = new zzbpi();
    public static final zzbpr<zzcml> zze = new zzbpj();
    public static final zzbpr<zzcml> zzf = zzbpc.zza;
    public static final zzbpr<Object> zzg = new zzbpk();
    public static final zzbpr<zzcml> zzh = new zzbpl();
    public static final zzbpr<zzcml> zzi = zzbpd.zza;
    public static final zzbpr<zzcml> zzj = new zzbpm();
    public static final zzbpr<zzcml> zzk = new zzbpn();
    public static final zzbpr<zzcjb> zzl = new zzcko();
    public static final zzbpr<zzcjb> zzm = new zzckp();
    public static final zzbpr<zzcml> zzn = new zzbou();
    public static final zzbqf zzo = new zzbqf();
    public static final zzbpr<zzcml> zzp = new zzbpo();
    public static final zzbpr<zzcml> zzq = new zzbpp();
    public static final zzbpr<zzcml> zzr = new zzbpe();
    public static final zzbpr<zzcml> zzs = new zzbpf();
    public static final zzbpr<zzcml> zzt = new zzbpg();

    public static zzfsm<String> zza(zzcml zzcmlVar, String str) {
        Uri uri;
        Uri parse = Uri.parse(str);
        try {
            zzaas zzU = zzcmlVar.zzU();
            uri = parse;
            if (zzU != null) {
                uri = parse;
                if (zzU.zza(parse)) {
                    uri = zzU.zze(parse, zzcmlVar.getContext(), zzcmlVar.zzH(), zzcmlVar.zzj());
                }
            }
        } catch (zzaat e) {
            zzcgt.zzi(str.length() != 0 ? "Unable to append parameter to URL: ".concat(str) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        String zzb2 = zzcfc.zzb(uri, zzcmlVar.getContext());
        long longValue = zzbkx.zze.zze().longValue();
        if (longValue <= 0 || longValue > 213806100) {
            return zzfsd.zza(zzb2);
        }
        zzfru zzw = zzfru.zzw((zzfsm) zzcmlVar.zzaE());
        zzfln zzflnVar = zzboy.zza;
        zzfsn zzfsnVar = zzchg.zzf;
        return zzfsd.zzf(zzfsd.zzj(zzfsd.zzf(zzw, Throwable.class, zzflnVar, zzfsnVar), new zzfln(zzb2) { // from class: com.google.android.gms.internal.ads.zzboz
            private final String zza;

            {
                this.zza = zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                String str2;
                String str3 = this.zza;
                String str4 = (String) obj;
                zzbpr<zzcml> zzbprVar = zzbpq.zza;
                if (str4 == null) {
                    str2 = str3;
                } else {
                    if (zzbkx.zzf.zze().booleanValue()) {
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
                    String zze2 = zzbkx.zza.zze();
                    String zze3 = zzbkx.zzb.zze();
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
        }, zzfsnVar), Throwable.class, new zzfln(zzb2) { // from class: com.google.android.gms.internal.ads.zzbpa
            private final String zza;

            {
                this.zza = zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                String str2 = this.zza;
                Throwable th = (Throwable) obj;
                zzbpr<zzcml> zzbprVar = zzbpq.zza;
                if (zzbkx.zzk.zze().booleanValue()) {
                    zzt.zzg().zzk(th, "prepareClickUrl.attestation2");
                }
                return str2;
            }
        }, zzfsnVar);
    }

    public static zzbpr<zzcml> zzb(zzdio zzdioVar) {
        return new zzbpr(zzdioVar) { // from class: com.google.android.gms.internal.ads.zzbpb
            private final zzdio zza;

            {
                this.zza = zzdioVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                zzcml zzcmlVar = (zzcml) obj;
                zzbpq.zzc(map, this.zza);
                String str = (String) map.get("u");
                if (str == null) {
                    zzcgt.zzi("URL missing from click GMSG.");
                } else {
                    zzfsd.zzp(zzbpq.zza(zzcmlVar, str), new zzbph(zzcmlVar), zzchg.zza);
                }
            }
        };
    }

    public static void zzc(Map<String, String> map, zzdio zzdioVar) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzha)).booleanValue() || !map.containsKey("sc") || !map.get("sc").equals("1") || zzdioVar == null) {
            return;
        }
        zzdioVar.zzb();
    }

    public static final /* synthetic */ void zzd(zzcnn zzcnnVar, Map map) {
        PackageManager packageManager = zzcnnVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get(RemoteMessageConst.DATA)).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString(AbstractC2405c.f7629a);
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                zzcgt.zzg(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
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
                                String[] split = optString6.split(StringConstant.SLASH, 2);
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
                            zzcgt.zzg("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        zzcgt.zzg("Error parsing the intent data.", e3);
                    }
                }
                ((zzbsi) zzcnnVar).zzd("openableIntents", jSONObject);
            } catch (JSONException e4) {
                ((zzbsi) zzcnnVar).zzd("openableIntents", new JSONObject());
            }
        } catch (JSONException e5) {
            ((zzbsi) zzcnnVar).zzd("openableIntents", new JSONObject());
        }
    }
}
