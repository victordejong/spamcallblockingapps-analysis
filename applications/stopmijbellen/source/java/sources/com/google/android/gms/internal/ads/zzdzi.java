package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzi.class */
public final class zzdzi {
    private final String zze;
    private final zzdze zzf;
    private final List<Map<String, String>> zzb = new ArrayList();
    private boolean zzc = false;
    private boolean zzd = false;
    private final zzg zza = zzt.zzo().zzh();

    public zzdzi(String str, zzdze zzdzeVar) {
        this.zze = str;
        this.zzf = zzdzeVar;
    }

    private final Map<String, String> zzf() {
        Map<String, String> zza = this.zzf.zza();
        zza.put("tms", Long.toString(zzt.zzA().elapsedRealtime(), 10));
        zza.put("tid", this.zza.zzL() ? "" : this.zze);
        return zza;
    }

    public final void zza(String str, String str2) {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbx)).booleanValue()) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "adapter_init_finished");
                    zzf.put("ancn", str);
                    zzf.put("rqe", str2);
                    this.zzb.add(zzf);
                }
            }
        }
    }

    public final void zzb(String str) {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbx)).booleanValue()) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "adapter_init_started");
                    zzf.put("ancn", str);
                    this.zzb.add(zzf);
                }
            }
        }
    }

    public final void zzc(String str) {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbx)).booleanValue()) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "adapter_init_finished");
                    zzf.put("ancn", str);
                    this.zzb.add(zzf);
                }
            }
        }
    }

    public final void zzd() {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbx)).booleanValue()) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
                    if (this.zzd) {
                        return;
                    }
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "init_finished");
                    this.zzb.add(zzf);
                    for (Map<String, String> map : this.zzb) {
                        this.zzf.zzc(map);
                    }
                    this.zzd = true;
                }
            }
        }
    }

    public final void zze() {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbx)).booleanValue()) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
                    if (this.zzc) {
                        return;
                    }
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "init_started");
                    this.zzb.add(zzf);
                    this.zzc = true;
                }
            }
        }
    }
}
