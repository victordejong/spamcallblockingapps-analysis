package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.common.util.AbstractC1610f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.wl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wl.class */
public final class C2020wl {

    /* renamed from: a */
    private final AbstractC1610f f9014a;

    /* renamed from: b */
    private final AbstractC1409a1 f9015b;

    /* renamed from: c */
    private final C2021wm f9016c;

    C2020wl(AbstractC1610f fVar, AbstractC1409a1 a1Var, C2021wm wmVar) {
        this.f9014a = fVar;
        this.f9015b = a1Var;
        this.f9016c = wmVar;
    }

    /* renamed from: a */
    public final void m5048a(int i, long j) {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7420h0)).booleanValue()) {
            if (j - this.f9015b.m8889N() < 0) {
                y0.k("Receiving npa decision in the past, ignoring.");
                return;
            }
            if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7427i0)).booleanValue()) {
                this.f9015b.m8873f0(-1);
            } else {
                this.f9015b.m8873f0(i);
            }
            this.f9015b.m8884Q0(j);
            m5047b();
        }
    }

    /* renamed from: b */
    public final void m5047b() {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7427i0)).booleanValue()) {
            this.f9016c.m5033f();
        }
    }
}
