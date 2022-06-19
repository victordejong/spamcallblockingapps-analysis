package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebo.class */
public final class zzebo {
    private final zzebb zza;
    private final zzdwt zzb;
    private final Object zzc = new Object();
    private final List<zzebn> zzd = new ArrayList();
    private boolean zze;

    public zzebo(zzebb zzebbVar, zzdwt zzdwtVar) {
        this.zza = zzebbVar;
        this.zzb = zzdwtVar;
    }

    public final void zzd(List<zzbtn> list) {
        String str;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            for (zzbtn zzbtnVar : list) {
                List<zzebn> list2 = this.zzd;
                String str2 = zzbtnVar.zza;
                zzdws zza = this.zzb.zza(str2);
                if (zza == null) {
                    str = "";
                } else {
                    zzcab zzcabVar = zza.zzb;
                    str = zzcabVar == null ? "" : zzcabVar.toString();
                }
                list2.add(new zzebn(str2, str, zzbtnVar.zzb ? 1 : 0, zzbtnVar.zzd, zzbtnVar.zzc));
            }
            this.zze = true;
        }
    }

    public final JSONArray zza() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            if (!this.zze) {
                if (!this.zza.zzs()) {
                    zzc();
                    return jSONArray;
                }
                zzd(this.zza.zzf());
            }
            for (zzebn zzebnVar : this.zzd) {
                jSONArray.put(zzebnVar.zza());
            }
            return jSONArray;
        }
    }

    public final void zzc() {
        this.zza.zzr(new zzebm(this));
    }
}
