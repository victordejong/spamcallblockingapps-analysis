package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzak.class */
public final class zzak {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final zzam zze;
    private final String zzf;

    public zzak(zzga zzgaVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzam zzamVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzf = TextUtils.isEmpty(str) ? null : str;
        this.zzc = j;
        this.zzd = j2;
        long j3 = this.zzd;
        if (j3 != 0 && j3 > this.zzc) {
            zzgaVar.zzr().zzi().zza("Event created with reverse previous/current timestamps. appId", zzew.zza(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzamVar = new zzam(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzgaVar.zzr().zzf().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object zza = zzgaVar.zzi().zza(next, bundle2.get(next));
                    if (zza == null) {
                        zzgaVar.zzr().zzi().zza("Param value can't be null", zzgaVar.zzj().zzb(next));
                        it.remove();
                    } else {
                        zzgaVar.zzi().zza(bundle2, next, zza);
                    }
                }
            }
            zzamVar = new zzam(bundle2);
        }
        this.zze = zzamVar;
    }

    private zzak(zzga zzgaVar, String str, String str2, String str3, long j, long j2, zzam zzamVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzamVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzf = TextUtils.isEmpty(str) ? null : str;
        this.zzc = j;
        this.zzd = j2;
        long j3 = this.zzd;
        if (j3 != 0 && j3 > this.zzc) {
            zzgaVar.zzr().zzi().zza("Event created with reverse previous/current timestamps. appId, name", zzew.zza(str2), zzew.zza(str3));
        }
        this.zze = zzamVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String valueOf = String.valueOf(this.zze);
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

    public final zzak zza(zzga zzgaVar, long j) {
        return new zzak(zzgaVar, this.zzf, this.zza, this.zzb, this.zzc, j, this.zze);
    }
}
