package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvr.class */
public final class zzdvr {
    private final String zze;
    private final zzdvn zzf;
    private final List<Map<String, String>> zzb = new ArrayList();
    private boolean zzc = false;
    private boolean zzd = false;
    private final zzg zza = zzt.zzg().zzp();

    public zzdvr(String str, zzdvn zzdvnVar) {
        this.zze = str;
        this.zzf = zzdvnVar;
    }

    private final Map<String, String> zzf() {
        Map<String, String> zza = this.zzf.zza();
        zza.put("tms", Long.toString(zzt.zzj().mo38789a(), 10));
        zza.put("tid", this.zza.zzC() ? "" : this.zze);
        return zza;
    }

    public final void zza(String str) {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbr)).booleanValue()) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "adapter_init_started");
                    zzf.put("ancn", str);
                    this.zzb.add(zzf);
                }
            }
        }
    }

    public final void zzb(String str) {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbr)).booleanValue()) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "adapter_init_finished");
                    zzf.put("ancn", str);
                    this.zzb.add(zzf);
                }
            }
        }
    }

    public final void zzc(String str, String str2) {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbr)).booleanValue()) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "adapter_init_finished");
                    zzf.put("ancn", str);
                    zzf.put("rqe", str2);
                    this.zzb.add(zzf);
                }
            }
        }
    }

    public final void zzd() {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbr)).booleanValue()) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
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

    public final void zze() {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbr)).booleanValue()) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
                    if (this.zzd) {
                        return;
                    }
                    Map<String, String> zzf = zzf();
                    zzf.put("action", "init_finished");
                    this.zzb.add(zzf);
                    for (Map<String, String> map : this.zzb) {
                        this.zzf.zzb(map);
                    }
                    this.zzd = true;
                }
            }
        }
    }
}
