package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzepa;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawm.class */
public final class zzawm implements zzawz {
    private static List<Future<Void>> zzdzv = Collections.synchronizedList(new ArrayList());
    private final Context context;
    private final zzawu zzdwr;
    private final zzepa.zzb.C2609zzb zzdzw;
    private final LinkedHashMap<String, zzepa.zzb.zzh.C2615zzb> zzdzx;
    private final zzaxb zzeaa;
    private boolean zzeab;
    private final List<String> zzdzy = new ArrayList();
    private final List<String> zzdzz = new ArrayList();
    private final Object lock = new Object();
    private HashSet<String> zzeac = new HashSet<>();
    private boolean zzead = false;
    private boolean zzeae = false;
    private boolean zzeaf = false;

    public zzawm(Context context, zzazn zzaznVar, zzawu zzawuVar, String str, zzaxb zzaxbVar) {
        Preconditions.checkNotNull(zzawuVar, "SafeBrowsing config is not present.");
        this.context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdzx = new LinkedHashMap<>();
        this.zzeaa = zzaxbVar;
        this.zzdwr = zzawuVar;
        for (String str2 : zzawuVar.zzeaq) {
            this.zzeac.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.zzeac.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzepa.zzb.C2609zzb zzblp = zzepa.zzb.zzblp();
        zzblp.zzb(zzepa.zzb.zzg.OCTAGON_AD);
        zzblp.zzie(str);
        zzblp.zzif(str);
        zzepa.zzb.zza.C2608zza zzblr = zzepa.zzb.zza.zzblr();
        if (this.zzdwr.zzeam != null) {
            zzblr.zzih(this.zzdwr.zzeam);
        }
        zzblp.zzb((zzepa.zzb.zza) ((zzelb) zzblr.zzbiw()));
        zzepa.zzb.zzi.zza zzbv = zzepa.zzb.zzi.zzbmg().zzbv(Wrappers.packageManager(this.context).isCallerInstantApp());
        if (zzaznVar.zzbrp != null) {
            zzbv.zzim(zzaznVar.zzbrp);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.context);
        if (apkVersion > 0) {
            zzbv.zzfs(apkVersion);
        }
        zzblp.zzb((zzepa.zzb.zzi) ((zzelb) zzbv.zzbiw()));
        this.zzdzw = zzblp;
    }

    private final zzepa.zzb.zzh.C2615zzb zzdw(String str) {
        zzepa.zzb.zzh.C2615zzb c2615zzb;
        synchronized (this.lock) {
            c2615zzb = this.zzdzx.get(str);
        }
        return c2615zzb;
    }

    public static final /* synthetic */ Void zzdx(String str) {
        return null;
    }

    private final zzdzw<Void> zzwz() {
        zzdzw<Void> zzb;
        if (!((this.zzeab && this.zzdwr.zzeas) || (this.zzeaf && this.zzdwr.zzear) || (!this.zzeab && this.zzdwr.zzeap))) {
            return zzdzk.zzag(null);
        }
        synchronized (this.lock) {
            for (zzepa.zzb.zzh.C2615zzb c2615zzb : this.zzdzx.values()) {
                this.zzdzw.zzb((zzepa.zzb.zzh) ((zzelb) c2615zzb.zzbiw()));
            }
            this.zzdzw.zzo(this.zzdzy);
            this.zzdzw.zzp(this.zzdzz);
            if (zzaww.isEnabled()) {
                String url = this.zzdzw.getUrl();
                String zzbln = this.zzdzw.zzbln();
                StringBuilder sb = new StringBuilder(String.valueOf(url).length() + 53 + String.valueOf(zzbln).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(url);
                sb.append("\n  clickUrl: ");
                sb.append(zzbln);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzepa.zzb.zzh zzhVar : this.zzdzw.zzblm()) {
                    sb2.append("    [");
                    sb2.append(zzhVar.zzbmd());
                    sb2.append("] ");
                    sb2.append(zzhVar.getUrl());
                }
                zzaww.zzdy(sb2.toString());
            }
            zzdzw<String> zza = new zzay(this.context).zza(1, this.zzdwr.zzean, null, ((zzepa.zzb) ((zzelb) this.zzdzw.zzbiw())).toByteArray());
            if (zzaww.isEnabled()) {
                zza.addListener(zzawr.zzeak, zzazp.zzeic);
            }
            zzb = zzdzk.zzb(zza, zzawq.zzeaj, zzazp.zzeih);
        }
        return zzb;
    }

    public final /* synthetic */ void zza(Bitmap bitmap) {
        zzeka zzbgl = zzejr.zzbgl();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzbgl);
        synchronized (this.lock) {
            this.zzdzw.zzb((zzepa.zzb.zzf) ((zzelb) zzepa.zzb.zzf.zzbmb().zzas(zzbgl.zzbfz()).zzii("image/png").zzb(zzepa.zzb.zzf.zza.TYPE_CREATIVE).zzbiw()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zza(String str, Map<String, String> map, int i) {
        synchronized (this.lock) {
            if (i == 3) {
                this.zzeaf = true;
            }
            if (this.zzdzx.containsKey(str)) {
                if (i == 3) {
                    this.zzdzx.get(str).zzb(zzepa.zzb.zzh.zza.zzib(i));
                }
                return;
            }
            zzepa.zzb.zzh.C2615zzb zzbme = zzepa.zzb.zzh.zzbme();
            zzepa.zzb.zzh.zza zzib = zzepa.zzb.zzh.zza.zzib(i);
            if (zzib != null) {
                zzbme.zzb(zzib);
            }
            zzbme.zzic(this.zzdzx.size());
            zzbme.zzik(str);
            zzepa.zzb.zzd.C2611zzb zzblw = zzepa.zzb.zzd.zzblw();
            if (this.zzeac.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.zzeac.contains(key.toLowerCase(Locale.ENGLISH))) {
                        zzblw.zzb((zzepa.zzb.zzc) ((zzelb) zzepa.zzb.zzc.zzblu().zzap(zzejr.zzhy(key)).zzaq(zzejr.zzhy(value)).zzbiw()));
                    }
                }
            }
            zzbme.zzb((zzepa.zzb.zzd) ((zzelb) zzblw.zzbiw()));
            this.zzdzx.put(str, zzbme);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzdv(String str) {
        synchronized (this.lock) {
            if (str == null) {
                this.zzdzw.zzblt();
            } else {
                this.zzdzw.zzig(str);
            }
        }
    }

    public final /* synthetic */ zzdzw zzi(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.lock) {
                            int length = optJSONArray.length();
                            zzepa.zzb.zzh.C2615zzb zzdw = zzdw(str);
                            if (zzdw == null) {
                                String valueOf = String.valueOf(str);
                                zzaww.zzdy(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                for (int i = 0; i < length; i++) {
                                    zzdw.zzil(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z = this.zzeab;
                                boolean z2 = false;
                                if (length > 0) {
                                    z2 = true;
                                }
                                this.zzeab = z2 | z;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (zzado.zzdek.get().booleanValue()) {
                    zzd.zzb("Failed to get SafeBrowsing metadata", e);
                }
                return zzdzk.immediateFailedFuture(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zzeab) {
            synchronized (this.lock) {
                this.zzdzw.zzb(zzepa.zzb.zzg.OCTAGON_AD_SB_MATCH);
            }
        }
        return zzwz();
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzl(View view) {
        if (this.zzdwr.zzeao && !this.zzeae) {
            zzr.zzkr();
            Bitmap zzn = zzj.zzn(view);
            if (zzn == null) {
                zzaww.zzdy("Failed to capture the webview bitmap.");
                return;
            }
            this.zzeae = true;
            zzj.zzc(new Runnable(this, zzn) { // from class: com.google.android.gms.internal.ads.zzawp
                private final zzawm zzeah;
                private final Bitmap zzeai;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeah = this;
                    this.zzeai = zzn;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzeah.zza(this.zzeai);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final zzawu zzwv() {
        return this.zzdwr;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final boolean zzww() {
        return PlatformVersion.isAtLeastKitKat() && this.zzdwr.zzeao && !this.zzeae;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzwx() {
        this.zzead = true;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzwy() {
        synchronized (this.lock) {
            zzdzw zzb = zzdzk.zzb(this.zzeaa.zza(this.context, this.zzdzx.keySet()), new zzdyu(this) { // from class: com.google.android.gms.internal.ads.zzawo
                private final zzawm zzeah;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeah = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdyu
                public final zzdzw zzf(Object obj) {
                    return this.zzeah.zzi((Map) obj);
                }
            }, zzazp.zzeih);
            zzdzw zza = zzdzk.zza(zzb, 10L, TimeUnit.SECONDS, zzazp.zzeif);
            zzdzk.zza(zzb, new zzawt(this, zza), zzazp.zzeih);
            zzdzv.add(zza);
        }
    }
}
