package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.C2657q;
/* renamed from: com.google.android.gms.internal.ads.wo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wo.class */
public final class C3604wo {

    /* renamed from: a */
    public final String f17560a;

    /* renamed from: b */
    public final double f17561b;

    /* renamed from: c */
    public final int f17562c;

    /* renamed from: d */
    private final double f17563d;

    /* renamed from: e */
    private final double f17564e;

    public C3604wo(String str, double d, double d2, double d3, int i) {
        this.f17560a = str;
        this.f17564e = d;
        this.f17563d = d2;
        this.f17561b = d3;
        this.f17562c = i;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof C3604wo)) {
            z = false;
        } else {
            C3604wo c3604wo = (C3604wo) obj;
            z = false;
            if (C2657q.m13992a(this.f17560a, c3604wo.f17560a)) {
                z = false;
                if (this.f17563d == c3604wo.f17563d) {
                    z = false;
                    if (this.f17564e == c3604wo.f17564e) {
                        z = false;
                        if (this.f17562c == c3604wo.f17562c) {
                            z = false;
                            if (Double.compare(this.f17561b, c3604wo.f17561b) == 0) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return C2657q.m13991a(this.f17560a, Double.valueOf(this.f17563d), Double.valueOf(this.f17564e), Double.valueOf(this.f17561b), Integer.valueOf(this.f17562c));
    }

    public final String toString() {
        return C2657q.m13993a(this).m13990a("name", this.f17560a).m13990a("minBound", Double.valueOf(this.f17564e)).m13990a("maxBound", Double.valueOf(this.f17563d)).m13990a("percent", Double.valueOf(this.f17561b)).m13990a("count", Integer.valueOf(this.f17562c)).toString();
    }
}
