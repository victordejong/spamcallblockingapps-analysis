package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t10.class */
public final /* synthetic */ class t10 implements nu2 {

    /* renamed from: a */
    static final nu2 f29773a = new t10();

    private t10() {
    }

    @Override // com.google.android.gms.internal.ads.nu2
    /* renamed from: a */
    public final Object mo8501a(Object obj) {
        Throwable th = (Throwable) obj;
        n20<wn0> n20Var = m20.f26383a;
        if (C7161xx.f32341k.m12799e().booleanValue()) {
            C5667s.m18156h().m12235k(th, "prepareClickUrl.attestation1");
            return "failure_click_attok";
        }
        return "failure_click_attok";
    }
}
