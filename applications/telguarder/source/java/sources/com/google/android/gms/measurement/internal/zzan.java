package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzan.class */
public final class zzan {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final zzaq zzf;

    public zzan(zzfl zzflVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzflVar.zzat().zze().zzb("Event created with reverse previous/current timestamps. appId", zzei.zzl(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzflVar.zzat().zzb().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object zzE = zzflVar.zzl().zzE(next, bundle2.get(next));
                    if (zzE == null) {
                        zzflVar.zzat().zze().zzb("Param value can't be null", zzflVar.zzm().zzd(next));
                        it.remove();
                    } else {
                        zzflVar.zzl().zzL(bundle2, next, zzE);
                    }
                }
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.zzf = zzaqVar;
    }

    private zzan(zzfl zzflVar, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzaqVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzflVar.zzat().zze().zzc("Event created with reverse previous/current timestamps. appId, name", zzei.zzl(str2), zzei.zzl(str3));
        }
        this.zzf = zzaqVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String valueOf = String.valueOf(this.zzf);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    public final zzan zza(zzfl zzflVar, long j) {
        return new zzan(zzflVar, this.zzc, this.zza, this.zzb, this.zzd, j, this.zzf);
    }
}
