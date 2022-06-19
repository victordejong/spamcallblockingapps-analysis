package com.google.android.gms.common.stats;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@KeepForSdk
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent.class */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent$Types.class */
    public interface Types {
    }

    /* renamed from: o2 */
    public abstract String mo38799o2();

    public final String toString() {
        long zzc = zzc();
        int zza = zza();
        long zzb = zzb();
        String mo38799o2 = mo38799o2();
        StringBuilder sb = new StringBuilder(mo38799o2.length() + 53);
        sb.append(zzc);
        sb.append("\t");
        sb.append(zza);
        sb.append("\t");
        sb.append(zzb);
        sb.append(mo38799o2);
        return sb.toString();
    }

    public abstract int zza();

    public abstract long zzb();

    public abstract long zzc();
}
