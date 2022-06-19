package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p20.class */
public final class p20 implements n20<wn0> {

    /* renamed from: a */
    private final q20 f27815a;

    public p20(q20 q20Var, byte[] bArr) {
        this.f27815a = q20Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            ei0.m15466d("Fail to parse float", e);
            f = 0.0f;
        }
        this.f27815a.m12048a(equals);
        this.f27815a.m12047b(equals2, f);
        wn0Var2.mo7944M0(equals);
    }
}
