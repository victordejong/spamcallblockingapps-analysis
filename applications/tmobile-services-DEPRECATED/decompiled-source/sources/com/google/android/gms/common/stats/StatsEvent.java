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

    /* renamed from: B */
    public abstract int mo14366B();

    /* renamed from: I */
    public abstract long mo14365I();

    /* renamed from: W */
    public abstract long mo14364W();

    /* renamed from: Y */
    public abstract String mo14363Y();

    public String toString() {
        long I = mo14365I();
        int B = mo14366B();
        long W = mo14364W();
        String Y = mo14363Y();
        StringBuilder sb = new StringBuilder(String.valueOf(Y).length() + 53);
        sb.append(I);
        sb.append("\t");
        sb.append(B);
        sb.append("\t");
        sb.append(W);
        sb.append(Y);
        return sb.toString();
    }
}
