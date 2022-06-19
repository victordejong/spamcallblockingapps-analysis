package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzi.class */
public final class zzi {
    public static zzap zza(Object obj) {
        if (obj == null) {
            return zzap.zzg;
        }
        if (obj instanceof String) {
            return new zzat((String) obj);
        }
        if (obj instanceof Double) {
            return new zzah((Double) obj);
        }
        if (obj instanceof Long) {
            return new zzah(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzah(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (!(obj instanceof Boolean)) {
            throw new IllegalArgumentException("Invalid value type");
        }
        return new zzaf((Boolean) obj);
    }

    public static zzap zzb(zzgt zzgtVar) {
        if (zzgtVar == null) {
            return zzap.zzf;
        }
        zzgs zzgsVar = zzgs.UNKNOWN;
        int ordinal = zzgtVar.zza().ordinal();
        if (ordinal == 0) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        if (ordinal == 1) {
            return zzgtVar.zzd() ? new zzat(zzgtVar.zze()) : zzap.zzm;
        } else if (ordinal == 2) {
            return zzgtVar.zzh() ? new zzah(Double.valueOf(zzgtVar.zzi())) : new zzah(null);
        } else if (ordinal == 3) {
            return zzgtVar.zzf() ? new zzaf(Boolean.valueOf(zzgtVar.zzg())) : new zzaf(null);
        } else if (ordinal != 4) {
            String valueOf = String.valueOf(zzgtVar);
            throw new IllegalStateException(C0082b.m8754h(new StringBuilder(valueOf.length() + 16), "Invalid entity: ", valueOf));
        } else {
            List<zzgt> zzb = zzgtVar.zzb();
            ArrayList arrayList = new ArrayList();
            for (zzgt zzgtVar2 : zzb) {
                arrayList.add(zzb(zzgtVar2));
            }
            return new zzaq(zzgtVar.zzc(), arrayList);
        }
    }
}
