package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.tenor.android.core.constant.ContentFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcds.class */
public final class zzcds implements zzcdy {
    public static final /* synthetic */ int zzb = 0;
    private static final List<Future<Void>> zzc = Collections.synchronizedList(new ArrayList());
    public boolean zza;
    private final zzgji zzd;
    private final LinkedHashMap<String, zzgkc> zze;
    private final Context zzh;
    private final zzcdv zzi;
    private final zzcdu zzn;
    private final List<String> zzf = new ArrayList();
    private final List<String> zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet<String> zzk = new HashSet<>();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzcds(Context context, zzcgz zzcgzVar, zzcdv zzcdvVar, String str, zzcdu zzcduVar, byte[] bArr) {
        Preconditions.m38897k(zzcdvVar, "SafeBrowsing config is not present.");
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap<>();
        this.zzn = zzcduVar;
        this.zzi = zzcdvVar;
        for (String str2 : zzcdvVar.zze) {
            this.zzk.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzgji zze = zzgkg.zze();
        zze.zzn(9);
        zze.zzb(str);
        zze.zzc(str);
        zzgjj zza = zzgjk.zza();
        String str3 = this.zzi.zza;
        if (str3 != null) {
            zza.zza(str3);
        }
        zze.zzd(zza.zzah());
        zzgke zza2 = zzgkf.zza();
        zza2.zzc(Wrappers.m38764a(this.zzh).m38765d());
        String str4 = zzcgzVar.zza;
        if (str4 != null) {
            zza2.zza(str4);
        }
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.f5675b;
        Context context2 = this.zzh;
        Objects.requireNonNull(googleApiAvailabilityLight);
        long apkVersion = GooglePlayServicesUtilLight.getApkVersion(context2);
        if (apkVersion > 0) {
            zza2.zzb(apkVersion);
        }
        zze.zzk(zza2.zzah());
        this.zzd = zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcdy
    public final zzcdv zzb() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzcdy
    public final void zzc(String str) {
        synchronized (this.zzj) {
            if (str == null) {
                this.zzd.zzi();
            } else {
                this.zzd.zzh(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdy
    public final boolean zzd() {
        return this.zzi.zzc && !this.zzl;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzcdy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcds.zze(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcdy
    public final void zzf(String str, Map<String, String> map, int i) {
        synchronized (this.zzj) {
            if (i == 3) {
                this.zzm = true;
            }
            if (this.zze.containsKey(str)) {
                if (i == 3) {
                    this.zze.get(str).zze(zzgkb.zza(3));
                }
                return;
            }
            zzgkc zzd = zzgkd.zzd();
            int zza = zzgkb.zza(i);
            if (zza != 0) {
                zzd.zze(zza);
            }
            zzd.zza(this.zze.size());
            zzd.zzb(str);
            zzgjn zza2 = zzgjq.zza();
            if (this.zzk.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.zzk.contains(key.toLowerCase(Locale.ENGLISH))) {
                        zzgjl zza3 = zzgjm.zza();
                        zza3.zza(zzgex.zzv(key));
                        zza3.zzb(zzgex.zzv(value));
                        zza2.zza(zza3.zzah());
                    }
                }
            }
            zzd.zzc(zza2.zzah());
            this.zze.put(str, zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdy
    public final void zzg() {
        synchronized (this.zzj) {
            this.zze.keySet();
            zzfsm zza = zzfsd.zza(Collections.emptyMap());
            zzfrk zzfrkVar = new zzfrk(this) { // from class: com.google.android.gms.internal.ads.zzcdo
                private final zzcds zza;

                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.internal.ads.zzfrk
                public final zzfsm zza(Object obj) {
                    return this.zza.zzh((Map) obj);
                }
            };
            zzfsn zzfsnVar = zzchg.zzf;
            zzfsm zzi = zzfsd.zzi(zza, zzfrkVar, zzfsnVar);
            zzfsm zzh = zzfsd.zzh(zzi, 10L, TimeUnit.SECONDS, zzchg.zzd);
            zzfsd.zzp(zzi, new zzcdr(this, zzh), zzfsnVar);
            zzc.add(zzh);
        }
    }

    public final /* synthetic */ zzfsm zzh(Map map) throws Exception {
        zzgkc zzgkcVar;
        zzfsm zzfsmVar;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.zzj) {
                            int length = optJSONArray.length();
                            synchronized (this.zzj) {
                                zzgkcVar = this.zze.get(str);
                            }
                            if (zzgkcVar == null) {
                                String valueOf = String.valueOf(str);
                                zzcdx.zza(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                for (int i = 0; i < length; i++) {
                                    zzgkcVar.zzd(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z = this.zza;
                                boolean z2 = false;
                                if (length > 0) {
                                    z2 = true;
                                }
                                this.zza = z2 | z;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (zzble.zzb.zze().booleanValue()) {
                    zzcgt.zze("Failed to get SafeBrowsing metadata", e);
                }
                return zzfsd.zzc(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zza) {
            synchronized (this.zzj) {
                this.zzd.zzn(10);
            }
        }
        boolean z3 = this.zza;
        if ((!z3 || !this.zzi.zzg) && ((!this.zzm || !this.zzi.zzf) && (z3 || !this.zzi.zzd))) {
            zzfsmVar = zzfsd.zza(null);
        } else {
            synchronized (this.zzj) {
                for (zzgkc zzgkcVar2 : this.zze.values()) {
                    this.zzd.zzf(zzgkcVar2.zzah());
                }
                this.zzd.zzl(this.zzf);
                this.zzd.zzm(this.zzg);
                if (zzcdx.zzb()) {
                    String zza = this.zzd.zza();
                    String zzg = this.zzd.zzg();
                    StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 53 + String.valueOf(zzg).length());
                    sb.append("Sending SB report\n  url: ");
                    sb.append(zza);
                    sb.append("\n  clickUrl: ");
                    sb.append(zzg);
                    sb.append("\n  resources: \n");
                    StringBuilder sb2 = new StringBuilder(sb.toString());
                    for (zzgkd zzgkdVar : this.zzd.zze()) {
                        sb2.append("    [");
                        sb2.append(zzgkdVar.zzc());
                        sb2.append("] ");
                        sb2.append(zzgkdVar.zza());
                    }
                    zzcdx.zza(sb2.toString());
                }
                zzfsm<String> zzb2 = new zzbr(this.zzh).zzb(1, this.zzi.zzb, null, this.zzd.zzah().zzao());
                if (zzcdx.zzb()) {
                    zzb2.zze(zzcdp.zza, zzchg.zza);
                }
                zzfsmVar = zzfsd.zzj(zzb2, zzcdq.zza, zzchg.zzf);
            }
        }
        return zzfsmVar;
    }

    public final /* synthetic */ void zzi(Bitmap bitmap) {
        zzgev zzB = zzgex.zzB();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzB);
        synchronized (this.zzj) {
            zzgji zzgjiVar = this.zzd;
            zzgjv zza = zzgjx.zza();
            zza.zzb(zzB.zza());
            zza.zza(ContentFormat.IMAGE_PNG);
            zza.zzc(2);
            zzgjiVar.zzj(zza.zzah());
        }
    }
}
