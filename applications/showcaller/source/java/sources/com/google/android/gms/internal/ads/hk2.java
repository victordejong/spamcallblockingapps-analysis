package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hk2.class */
public final class hk2 {

    /* renamed from: a */
    private final ej2 f23961a;

    /* renamed from: b */
    private final jj2 f23962b;

    /* renamed from: c */
    private final dw1 f23963c;

    /* renamed from: d */
    private final bp2 f23964d;

    public hk2(dw1 dw1Var, bp2 bp2Var, ej2 ej2Var, jj2 jj2Var) {
        this.f23961a = ej2Var;
        this.f23962b = jj2Var;
        this.f23963c = dw1Var;
        this.f23964d = bp2Var;
    }

    /* renamed from: a */
    public final void m14600a(List<String> list) {
        for (String str : list) {
            m14598c(str, 2);
        }
    }

    /* renamed from: b */
    public final void m14599b(List<String> list, int i) {
        for (String str : list) {
            m14598c(str, i);
        }
    }

    /* renamed from: c */
    public final void m14598c(String str, int i) {
        if (!this.f23961a.f22230f0) {
            this.f23964d.m16302b(str);
            return;
        }
        this.f23963c.m15669k(new fw1(C5667s.m18153k().mo16807a(), this.f23962b.f24897b, str, i));
    }
}
