package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxx.class */
public final class zzdxx {
    private final zzdxk zza;
    private final zzdtc zzb;
    private final Object zzc = new Object();
    private final List<zzdxw> zzd = new ArrayList();
    private boolean zze;

    public zzdxx(zzdxk zzdxkVar, zzdtc zzdtcVar) {
        this.zza = zzdxkVar;
        this.zzb = zzdtcVar;
    }

    public final void zzd(List<zzbrl> list) {
        String str;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            for (zzbrl zzbrlVar : list) {
                List<zzdxw> list2 = this.zzd;
                String str2 = zzbrlVar.zza;
                zzdtb zzc = this.zzb.zzc(str2);
                if (zzc == null) {
                    str = "";
                } else {
                    zzbya zzbyaVar = zzc.zzb;
                    str = zzbyaVar == null ? "" : zzbyaVar.toString();
                }
                list2.add(new zzdxw(str2, str, zzbrlVar.zzb ? 1 : 0, zzbrlVar.zzd, zzbrlVar.zzc));
            }
            this.zze = true;
        }
    }

    public final void zza() {
        this.zza.zzh(new zzdxv(this));
    }

    public final JSONArray zzb() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            if (!this.zze) {
                if (!this.zza.zzm()) {
                    zza();
                    return jSONArray;
                }
                zzd(this.zza.zzj());
            }
            for (zzdxw zzdxwVar : this.zzd) {
                jSONArray.put(zzdxwVar.zza());
            }
            return jSONArray;
        }
    }
}
