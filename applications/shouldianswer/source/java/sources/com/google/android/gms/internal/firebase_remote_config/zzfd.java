package com.google.android.gms.internal.firebase_remote_config;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.firebase_remote_config.zzfi;
import com.google.android.gms.internal.firebase_remote_config.zzkt;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfd.class */
public final class zzfd {
    private static final Charset zzlz = Charset.forName("UTF-8");
    private static final ThreadLocal<DateFormat> zzma = new zzfg();
    private final String appId;
    private final Context zzja;
    private final SharedPreferences zzmb;

    public zzfd(Context context, String str) {
        this.zzja = context;
        this.appId = str;
        this.zzmb = context.getSharedPreferences("com.google.firebase.remoteconfig_legacy_settings", 0);
    }

    private static zzkt.zzb zza(zzfx zzfxVar) {
        try {
            zzgg zzggVar = (zzgg) zzfxVar.iterator();
            byte[] bArr = new byte[zzfxVar.size()];
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = zzggVar.next().byteValue();
            }
            return zzkt.zzb.zzg(bArr);
        } catch (zzhq e) {
            Log.i("FirebaseRemoteConfig", "Payload was not defined or could not be deserialized.", e);
            return null;
        }
    }

    private final Map<String, zzen> zza(zzfi.zza zzaVar) {
        HashMap hashMap = new HashMap();
        Date date = new Date(zzaVar.getTimestamp());
        List<zzfx> zzdl = zzaVar.zzdl();
        ArrayList arrayList = new ArrayList();
        for (zzfx zzfxVar : zzdl) {
            zzkt.zzb zza = zza(zzfxVar);
            if (zza != null) {
                zzdd zzddVar = new zzdd();
                zzddVar.zzan(zza.zzjm());
                zzddVar.zzaq(zza.zzjn());
                zzddVar.zzao(zzma.get().format(new Date(zza.zzjo())));
                zzddVar.zzap(zza.zzjp());
                zzddVar.zzb(Long.valueOf(zza.zzjq()));
                zzddVar.zza(Long.valueOf(zza.zzjr()));
                arrayList.add(zzddVar);
            }
        }
        for (zzfi.zzd zzdVar : zzaVar.zzdk()) {
            String namespace = zzdVar.getNamespace();
            String str = namespace;
            if (namespace.startsWith("configns:")) {
                str = namespace.substring(9);
            }
            zzep zzct = zzen.zzct();
            List<zzfi.zzb> zzdr = zzdVar.zzdr();
            HashMap hashMap2 = new HashMap();
            for (zzfi.zzb zzbVar : zzdr) {
                hashMap2.put(zzbVar.getKey(), zzbVar.zzdo().zzb(zzlz));
            }
            zzep zza2 = zzct.zzd(hashMap2).zza(date);
            if (str.equals("firebase")) {
                zza2.zzb(arrayList);
            }
            try {
                hashMap.put(str, zza2.zzcv());
            } catch (JSONException e) {
                Log.i("FirebaseRemoteConfig", "A set of legacy configs could not be converted.");
            }
        }
        return hashMap;
    }

    private final zzei zzd(String str, String str2) {
        return RemoteConfigComponent.zza(this.zzja, this.appId, str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.FileInputStream] */
    private final zzfi.zze zzdh() {
        Throwable th;
        FileNotFoundException e;
        FileInputStream fileInputStream;
        IOException e2;
        Context context = this.zzja;
        try {
            if (context == null) {
                return null;
            }
            try {
                fileInputStream = context.openFileInput("persisted_config");
                try {
                    zzfi.zze zzb = zzfi.zze.zzb(fileInputStream);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            Log.e("FirebaseRemoteConfig", "Failed to close persisted config file.", e3);
                        }
                    }
                    return zzb;
                } catch (FileNotFoundException e4) {
                    e = e4;
                    if (Log.isLoggable("FirebaseRemoteConfig", 3)) {
                        FileInputStream fileInputStream2 = fileInputStream;
                        Log.d("FirebaseRemoteConfig", "Persisted config file was not found.", e);
                    }
                    if (fileInputStream == null) {
                        return null;
                    }
                    try {
                        fileInputStream.close();
                        return null;
                    } catch (IOException e5) {
                        Log.e("FirebaseRemoteConfig", "Failed to close persisted config file.", e5);
                        return null;
                    }
                } catch (IOException e6) {
                    e2 = e6;
                    Log.e("FirebaseRemoteConfig", "Cannot initialize from persisted config.", e2);
                    if (fileInputStream == null) {
                        return null;
                    }
                    try {
                        fileInputStream.close();
                        return null;
                    } catch (IOException e7) {
                        Log.e("FirebaseRemoteConfig", "Failed to close persisted config file.", e7);
                        return null;
                    }
                }
            } catch (FileNotFoundException e8) {
                e = e8;
                fileInputStream = null;
            } catch (IOException e9) {
                e2 = e9;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                context = null;
                if (context != null) {
                    try {
                        context.close();
                    } catch (IOException e10) {
                        Log.e("FirebaseRemoteConfig", "Failed to close persisted config file.", e10);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final boolean zzdg() {
        zzen zzcx;
        zzen zzdi;
        zzen zzdj;
        zzen zzdj2;
        zzen zzdi2;
        zzen zzcx2;
        if (this.zzmb.getBoolean("save_legacy_configs", true)) {
            zzfi.zze zzdh = zzdh();
            HashMap hashMap = new HashMap();
            if (zzdh != null) {
                Map<String, zzen> zza = zza(zzdh.zzdu());
                Map<String, zzen> zza2 = zza(zzdh.zzdt());
                Map<String, zzen> zza3 = zza(zzdh.zzdv());
                HashSet<String> hashSet = new HashSet();
                hashSet.addAll(zza.keySet());
                hashSet.addAll(zza2.keySet());
                hashSet.addAll(zza3.keySet());
                for (String str : hashSet) {
                    zzff zzffVar = new zzff(null);
                    if (zza.containsKey(str)) {
                        zzffVar.zzj(zza.get(str));
                    }
                    if (zza2.containsKey(str)) {
                        zzffVar.zzi(zza2.get(str));
                    }
                    if (zza3.containsKey(str)) {
                        zzffVar.zzk(zza3.get(str));
                    }
                    hashMap.put(str, zzffVar);
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                zzff zzffVar2 = (zzff) entry.getValue();
                zzei zzd = zzd(str2, "fetch");
                zzei zzd2 = zzd(str2, "activate");
                zzei zzd3 = zzd(str2, "defaults");
                zzcx = zzffVar2.zzcx();
                if (zzcx != null) {
                    zzcx2 = zzffVar2.zzcx();
                    zzd.zzc(zzcx2);
                }
                zzdi = zzffVar2.zzdi();
                if (zzdi != null) {
                    zzdi2 = zzffVar2.zzdi();
                    zzd2.zzc(zzdi2);
                }
                zzdj = zzffVar2.zzdj();
                if (zzdj != null) {
                    zzdj2 = zzffVar2.zzdj();
                    zzd3.zzc(zzdj2);
                }
            }
            this.zzmb.edit().putBoolean("save_legacy_configs", false).commit();
            return true;
        }
        return false;
    }
}
