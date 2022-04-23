package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent.class */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    /* renamed from: H */
    public abstract int mo31903H();

    /* renamed from: I */
    public abstract long mo31902I();

    /* renamed from: c */
    public abstract long mo31901c();

    /* renamed from: j */
    public abstract String mo31900j();

    public String toString() {
        long I = mo31902I();
        int H = mo31903H();
        long c = mo31901c();
        String j = mo31900j();
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 53);
        sb.append(I);
        sb.append("\t");
        sb.append(H);
        sb.append("\t");
        sb.append(c);
        sb.append(j);
        return sb.toString();
    }
}
