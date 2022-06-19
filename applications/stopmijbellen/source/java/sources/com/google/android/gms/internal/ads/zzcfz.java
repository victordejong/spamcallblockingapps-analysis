package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfz.class */
public final class zzcfz implements zzcgf {
    public static final /* synthetic */ int zzb = 0;
    private static final List<Future<Void>> zzc = Collections.synchronizedList(new ArrayList());
    public boolean zza;
    @GuardedBy("lock")
    private final zzgnz zzd;
    @GuardedBy("lock")
    private final LinkedHashMap<String, zzgot> zze;
    private final Context zzh;
    private final zzcgc zzi;
    private final zzcgb zzn;
    @GuardedBy("lock")
    private final List<String> zzf = new ArrayList();
    @GuardedBy("lock")
    private final List<String> zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet<String> zzk = new HashSet<>();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzcfz(Context context, zzcjf zzcjfVar, zzcgc zzcgcVar, String str, zzcgb zzcgbVar, byte[] bArr) {
        Preconditions.checkNotNull(zzcgcVar, "SafeBrowsing config is not present.");
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap<>();
        this.zzn = zzcgbVar;
        this.zzi = zzcgcVar;
        for (String str2 : zzcgcVar.zze) {
            this.zzk.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzgnz zza = zzgox.zza();
        zza.zzn(9);
        zza.zzj(str);
        zza.zzh(str);
        zzgoa zza2 = zzgob.zza();
        String str3 = this.zzi.zza;
        if (str3 != null) {
            zza2.zza(str3);
        }
        zza.zzg(zza2.zzah());
        zzgov zza3 = zzgow.zza();
        zza3.zzc(Wrappers.packageManager(this.zzh).isCallerInstantApp());
        String str4 = zzcjfVar.zza;
        if (str4 != null) {
            zza3.zza(str4);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzh);
        if (apkVersion > 0) {
            zza3.zzb(apkVersion);
        }
        zza.zzf(zza3.zzah());
        this.zzd = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final zzcgc zza() {
        return this.zzi;
    }

    public final /* synthetic */ zzfxa zzb(Map map) throws Exception {
        zzgot zzgotVar;
        zzfxa zzfxaVar;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.zzj) {
                            int length = optJSONArray.length();
                            synchronized (this.zzj) {
                                zzgotVar = this.zze.get(str);
                            }
                            if (zzgotVar == null) {
                                String valueOf = String.valueOf(str);
                                zzcge.zza(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                for (int i = 0; i < length; i++) {
                                    zzgotVar.zza(optJSONArray.getJSONObject(i).getString("threat_type"));
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
                if (zzbnd.zzb.zze().booleanValue()) {
                    zzciz.zzf("Failed to get SafeBrowsing metadata", e);
                }
                return zzfwq.zzh(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zza) {
            synchronized (this.zzj) {
                this.zzd.zzn(10);
            }
        }
        boolean z3 = this.zza;
        if ((!z3 || !this.zzi.zzg) && ((!this.zzm || !this.zzi.zzf) && (z3 || !this.zzi.zzd))) {
            zzfxaVar = zzfwq.zzi(null);
        } else {
            synchronized (this.zzj) {
                for (zzgot zzgotVar2 : this.zze.values()) {
                    this.zzd.zzc(zzgotVar2.zzah());
                }
                this.zzd.zza(this.zzf);
                this.zzd.zzb(this.zzg);
                if (zzcge.zzb()) {
                    String zzl = this.zzd.zzl();
                    String zzk = this.zzd.zzk();
                    StringBuilder sb = new StringBuilder(String.valueOf(zzl).length() + 53 + String.valueOf(zzk).length());
                    sb.append("Sending SB report\n  url: ");
                    sb.append(zzl);
                    sb.append("\n  clickUrl: ");
                    sb.append(zzk);
                    sb.append("\n  resources: \n");
                    StringBuilder sb2 = new StringBuilder(sb.toString());
                    for (zzgou zzgouVar : this.zzd.zzm()) {
                        sb2.append("    [");
                        sb2.append(zzgouVar.zza());
                        sb2.append("] ");
                        sb2.append(zzgouVar.zze());
                    }
                    zzcge.zza(sb2.toString());
                }
                zzfxa<String> zzb2 = new zzbs(this.zzh).zzb(1, this.zzi.zzb, null, this.zzd.zzah().zzar());
                if (zzcge.zzb()) {
                    zzb2.zzc(zzcfx.zza, zzcjm.zza);
                }
                zzfxaVar = zzfwq.zzm(zzb2, zzcfu.zza, zzcjm.zzf);
            }
        }
        return zzfxaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzd(String str, Map<String, String> map, int i) {
        synchronized (this.zzj) {
            if (i == 3) {
                this.zzm = true;
            }
            if (this.zze.containsKey(str)) {
                if (i == 3) {
                    this.zze.get(str).zze(zzgos.zza(3));
                }
                return;
            }
            zzgot zzc2 = zzgou.zzc();
            int zza = zzgos.zza(i);
            if (zza != 0) {
                zzc2.zze(zza);
            }
            zzc2.zzb(this.zze.size());
            zzc2.zzd(str);
            zzgoe zza2 = zzgoh.zza();
            if (this.zzk.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.zzk.contains(key.toLowerCase(Locale.ENGLISH))) {
                        zzgoc zza3 = zzgod.zza();
                        zza3.zza(zzgjf.zzx(key));
                        zza3.zzb(zzgjf.zzx(value));
                        zza2.zza(zza3.zzah());
                    }
                }
            }
            zzc2.zzc(zza2.zzah());
            this.zze.put(str, zzc2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zze() {
        synchronized (this.zzj) {
            this.zze.keySet();
            zzfxa zzi = zzfwq.zzi(Collections.emptyMap());
            zzfvx zzfvxVar = new zzfvx() { // from class: com.google.android.gms.internal.ads.zzcfv
                @Override // com.google.android.gms.internal.ads.zzfvx
                public final zzfxa zza(Object obj) {
                    return zzcfz.this.zzb((Map) obj);
                }
            };
            zzfxb zzfxbVar = zzcjm.zzf;
            zzfxa zzn = zzfwq.zzn(zzi, zzfvxVar, zzfxbVar);
            zzfxa zzo = zzfwq.zzo(zzn, 10L, TimeUnit.SECONDS, zzcjm.zzd);
            zzfwq.zzr(zzn, new zzcfy(this, zzo), zzfxbVar);
            zzc.add(zzo);
        }
    }

    public final /* synthetic */ void zzf(Bitmap bitmap) {
        zzgjc zzt = zzgjf.zzt();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzt);
        synchronized (this.zzj) {
            zzgnz zzgnzVar = this.zzd;
            zzgom zza = zzgoo.zza();
            zza.zza(zzt.zzb());
            zza.zzb("image/png");
            zza.zzc(2);
            zzgnzVar.zzi(zza.zzah());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzcgf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfz.zzg(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzh(String str) {
        synchronized (this.zzj) {
            if (str == null) {
                this.zzd.zzd();
            } else {
                this.zzd.zze(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final boolean zzi() {
        return PlatformVersion.isAtLeastKitKat() && this.zzi.zzc && !this.zzl;
    }
}
