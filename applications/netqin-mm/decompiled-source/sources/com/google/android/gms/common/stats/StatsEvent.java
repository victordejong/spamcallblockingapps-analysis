package com.google.android.gms.common.stats;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent.class */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent$Types.class */
    public interface Types {
    }

    public String toString() {
        long zza = zza();
        int zzb = zzb();
        long zzc = zzc();
        String zzd = zzd();
        StringBuilder sb = new StringBuilder(String.valueOf(zzd).length() + 53);
        sb.append(zza);
        sb.append("\t");
        sb.append(zzb);
        sb.append("\t");
        sb.append(zzc);
        sb.append(zzd);
        return sb.toString();
    }

    public abstract long zza();

    public abstract int zzb();

    public abstract long zzc();

    public abstract String zzd();
}
