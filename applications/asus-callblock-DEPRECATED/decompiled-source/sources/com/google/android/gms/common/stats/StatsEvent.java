package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent.class */
public abstract class StatsEvent extends AbstractSafeParcelable {
    public abstract long a();

    public abstract int b();

    public abstract long c();

    public abstract String d();

    public String toString() {
        long a2 = a();
        String valueOf = String.valueOf("\t");
        int b2 = b();
        String valueOf2 = String.valueOf("\t");
        long c = c();
        String valueOf3 = String.valueOf(d());
        return new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append(a2).append(valueOf).append(b2).append(valueOf2).append(c).append(valueOf3).toString();
    }
}
