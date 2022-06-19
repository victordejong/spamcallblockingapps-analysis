package com.google.android.gms.ads.internal.util;

import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.common.internal.C1579g;
/* renamed from: com.google.android.gms.ads.internal.util.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/t.class */
public final class C1449t {

    /* renamed from: a */
    public final String f5626a;

    /* renamed from: b */
    public final double f5627b;

    /* renamed from: c */
    public final double f5628c;

    /* renamed from: d */
    public final double f5629d;

    /* renamed from: e */
    public final int f5630e;

    public C1449t(String str, double d, double d2, double d3, int i) {
        this.f5626a = str;
        this.f5628c = d;
        this.f5627b = d2;
        this.f5629d = d3;
        this.f5630e = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1449t)) {
            return false;
        }
        C1449t c1449t = (C1449t) obj;
        return C1579g.m8358a(this.f5626a, c1449t.f5626a) && this.f5627b == c1449t.f5627b && this.f5628c == c1449t.f5628c && this.f5630e == c1449t.f5630e && Double.compare(this.f5629d, c1449t.f5629d) == 0;
    }

    public final int hashCode() {
        return C1579g.m8357b(this.f5626a, Double.valueOf(this.f5627b), Double.valueOf(this.f5628c), Double.valueOf(this.f5629d), Integer.valueOf(this.f5630e));
    }

    public final String toString() {
        C1579g.C1580a m8356c = C1579g.m8356c(this);
        m8356c.m8355a(EZBlackList.NAME, this.f5626a);
        m8356c.m8355a("minBound", Double.valueOf(this.f5628c));
        m8356c.m8355a("maxBound", Double.valueOf(this.f5627b));
        m8356c.m8355a("percent", Double.valueOf(this.f5629d));
        m8356c.m8355a("count", Integer.valueOf(this.f5630e));
        return m8356c.toString();
    }
}
