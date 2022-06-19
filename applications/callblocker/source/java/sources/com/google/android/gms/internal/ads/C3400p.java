package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/p.class */
public final class C3400p {

    /* renamed from: a */
    private final Map<String, C3319m> f17072a = new HashMap();

    /* renamed from: b */
    private final C3373o f17073b;

    public C3400p(C3373o c3373o) {
        this.f17073b = c3373o;
    }

    /* renamed from: a */
    public final C3373o m7348a() {
        return this.f17073b;
    }

    /* renamed from: a */
    public final void m7347a(String str, C3319m c3319m) {
        this.f17072a.put(str, c3319m);
    }

    /* renamed from: a */
    public final void m7346a(String str, String str2, long j) {
        C3373o c3373o = this.f17073b;
        C3319m c3319m = this.f17072a.get(str2);
        if (c3373o != null && c3319m != null) {
            c3373o.m7381a(c3319m, j, str);
        }
        Map<String, C3319m> map = this.f17072a;
        C3373o c3373o2 = this.f17073b;
        map.put(str, c3373o2 == null ? null : c3373o2.m7382a(j));
    }
}
