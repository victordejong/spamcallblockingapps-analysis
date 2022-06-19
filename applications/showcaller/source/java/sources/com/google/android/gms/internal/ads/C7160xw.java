package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.xw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xw.class */
public final class C7160xw {

    /* renamed from: a */
    private final Map<String, C7123ww> f32318a = new HashMap();

    /* renamed from: b */
    private final C6308ax f32319b;

    public C7160xw(C6308ax c6308ax) {
        this.f32319b = c6308ax;
    }

    /* renamed from: a */
    public final void m9040a(String str, C7123ww c7123ww) {
        this.f32318a.put(str, c7123ww);
    }

    /* renamed from: b */
    public final void m9039b(String str, String str2, long j) {
        C6308ax c6308ax = this.f32319b;
        C7123ww c7123ww = this.f32318a.get(str2);
        if (c7123ww != null) {
            c6308ax.m16474b(c7123ww, j, str);
        }
        this.f32318a.put(str, new C7123ww(j, null, null));
    }

    /* renamed from: c */
    public final C6308ax m9038c() {
        return this.f32319b;
    }
}
