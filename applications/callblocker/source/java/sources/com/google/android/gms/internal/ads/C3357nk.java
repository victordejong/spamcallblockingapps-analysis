package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.nk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nk.class */
public final class C3357nk {

    /* renamed from: a */
    private final act f17012a;

    /* renamed from: b */
    private final boolean f17013b;

    /* renamed from: c */
    private final String f17014c;

    public C3357nk(act actVar, Map<String, String> map) {
        this.f17012a = actVar;
        this.f17014c = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.f17013b = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.f17013b = true;
        }
    }

    /* renamed from: a */
    public final void m7417a() {
        int mo6937a;
        if (this.f17012a == null) {
            C3556uu.m6745e("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.f17014c)) {
            C2341q.m14742e();
            mo6937a = 7;
        } else if ("landscape".equalsIgnoreCase(this.f17014c)) {
            C2341q.m14742e();
            mo6937a = 6;
        } else {
            mo6937a = this.f17013b ? -1 : C2341q.m14742e().mo6937a();
        }
        this.f17012a.setRequestedOrientation(mo6937a);
    }
}
