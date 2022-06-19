package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzan.class */
public final class zzan {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final long zzd;
    public final long zze;
    public final zzaq zzf;

    public zzan(zzfu zzfuVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzfuVar.zzau().zze().zzb("Event created with reverse previous/current timestamps. appId", zzem.zzl(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it2 = bundle2.keySet().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next == null) {
                    zzfuVar.zzau().zzb().zza("Param name can't be null");
                    it2.remove();
                } else {
                    Object zzE = zzfuVar.zzl().zzE(next, bundle2.get(next));
                    if (zzE == null) {
                        zzfuVar.zzau().zze().zzb("Param value can't be null", zzfuVar.zzm().zzd(next));
                        it2.remove();
                    } else {
                        zzfuVar.zzl().zzL(bundle2, next, zzE);
                    }
                }
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.zzf = zzaqVar;
    }

    private zzan(zzfu zzfuVar, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzaqVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzfuVar.zzau().zze().zzc("Event created with reverse previous/current timestamps. appId, name", zzem.zzl(str2), zzem.zzl(str3));
        }
        this.zzf = zzaqVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String valueOf = String.valueOf(this.zzf);
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 33, String.valueOf(str2).length(), valueOf.length()));
        C0082b.m8749m(sb, "Event{appId='", str, "', name='", str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    public final zzan zza(zzfu zzfuVar, long j) {
        return new zzan(zzfuVar, this.zzc, this.zza, this.zzb, this.zzd, j, this.zzf);
    }
}
