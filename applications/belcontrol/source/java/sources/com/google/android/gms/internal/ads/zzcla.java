package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcla.class */
public final class zzcla {
    private String zzgml;
    private zzckw zzgmm;
    private List<Map<String, String>> zzgmi = new ArrayList();
    private boolean zzgmj = false;
    private boolean zzgmk = false;
    private final zzf zzeaw = zzr.zzkv().zzxs();

    public zzcla(String str, zzckw zzckwVar) {
        this.zzgml = str;
        this.zzgmm = zzckwVar;
    }

    private final Map<String, String> zzara() {
        Map<String, String> zzaqx = this.zzgmm.zzaqx();
        zzaqx.put("tms", Long.toString(zzr.zzky().elapsedRealtime(), 10));
        zzaqx.put("tid", this.zzeaw.zzyu() ? "" : this.zzgml);
        return zzaqx;
    }

    public final void zzaqy() {
        synchronized (this) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                    if (!this.zzgmj) {
                        Map<String, String> zzara = zzara();
                        zzara.put("action", "init_started");
                        this.zzgmi.add(zzara);
                        this.zzgmj = true;
                    }
                }
            }
        }
    }

    public final void zzaqz() {
        synchronized (this) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                    if (!this.zzgmk) {
                        Map<String, String> zzara = zzara();
                        zzara.put("action", "init_finished");
                        this.zzgmi.add(zzara);
                        for (Map<String, String> map : this.zzgmi) {
                            this.zzgmm.zzo(map);
                        }
                        this.zzgmk = true;
                    }
                }
            }
        }
    }

    public final void zzgf(String str) {
        synchronized (this) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                    Map<String, String> zzara = zzara();
                    zzara.put("action", "adapter_init_started");
                    zzara.put("ancn", str);
                    this.zzgmi.add(zzara);
                }
            }
        }
    }

    public final void zzgg(String str) {
        synchronized (this) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                    Map<String, String> zzara = zzara();
                    zzara.put("action", "adapter_init_finished");
                    zzara.put("ancn", str);
                    this.zzgmi.add(zzara);
                }
            }
        }
    }

    public final void zzs(String str, String str2) {
        synchronized (this) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                    Map<String, String> zzara = zzara();
                    zzara.put("action", "adapter_init_finished");
                    zzara.put("ancn", str);
                    zzara.put("rqe", str2);
                    this.zzgmi.add(zzara);
                }
            }
        }
    }
}
