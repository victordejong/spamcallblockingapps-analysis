package com.google.android.gms.common.stats;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent.class */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    /* renamed from: c */
    public abstract long mo16851c();

    /* renamed from: k0 */
    public abstract long mo16850k0();

    /* renamed from: l0 */
    public abstract int mo16849l0();

    @RecentlyNonNull
    /* renamed from: m0 */
    public abstract String mo16848m0();

    @RecentlyNonNull
    public final String toString() {
        long mo16850k0 = mo16850k0();
        int mo16849l0 = mo16849l0();
        long mo16851c = mo16851c();
        String mo16848m0 = mo16848m0();
        StringBuilder sb = new StringBuilder(String.valueOf(mo16848m0).length() + 53);
        sb.append(mo16850k0);
        sb.append("\t");
        sb.append(mo16849l0);
        sb.append("\t");
        sb.append(mo16851c);
        sb.append(mo16848m0);
        return sb.toString();
    }
}
