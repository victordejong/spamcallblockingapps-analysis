package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/StatsEvent.class */
public abstract class StatsEvent extends AbstractC2663a implements ReflectedParcelable {
    /* renamed from: a */
    public abstract long mo13897a();

    /* renamed from: b */
    public abstract int mo13896b();

    /* renamed from: c */
    public abstract long mo13895c();

    /* renamed from: d */
    public abstract String mo13894d();

    public String toString() {
        long mo13897a = mo13897a();
        int mo13896b = mo13896b();
        long mo13895c = mo13895c();
        String mo13894d = mo13894d();
        return new StringBuilder(String.valueOf(mo13894d).length() + 53).append(mo13897a).append("\t").append(mo13896b).append("\t").append(mo13895c).append(mo13894d).toString();
    }
}
