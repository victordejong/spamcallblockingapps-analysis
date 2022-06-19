package com.google.android.gms.ads.internal.util;

import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6147m;
/* renamed from: com.google.android.gms.ads.internal.util.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/f0.class */
public final class C5689f0 {

    /* renamed from: a */
    public final String f18469a;

    /* renamed from: b */
    public final double f18470b;

    /* renamed from: c */
    public final double f18471c;

    /* renamed from: d */
    public final double f18472d;

    /* renamed from: e */
    public final int f18473e;

    public C5689f0(String str, double d, double d2, double d3, int i) {
        this.f18469a = str;
        this.f18471c = d;
        this.f18470b = d2;
        this.f18472d = d3;
        this.f18473e = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5689f0)) {
            return false;
        }
        C5689f0 c5689f0 = (C5689f0) obj;
        return C6147m.m17044a(this.f18469a, c5689f0.f18469a) && this.f18470b == c5689f0.f18470b && this.f18471c == c5689f0.f18471c && this.f18473e == c5689f0.f18473e && Double.compare(this.f18472d, c5689f0.f18472d) == 0;
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f18469a, Double.valueOf(this.f18470b), Double.valueOf(this.f18471c), Double.valueOf(this.f18472d), Integer.valueOf(this.f18473e));
    }

    public final String toString() {
        return C6147m.m17042c(this).m17041a(ShortCut.NAME, this.f18469a).m17041a("minBound", Double.valueOf(this.f18471c)).m17041a("maxBound", Double.valueOf(this.f18470b)).m17041a("percent", Double.valueOf(this.f18472d)).m17041a("count", Integer.valueOf(this.f18473e)).toString();
    }
}
