package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.AbstractC5728q1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ev1.class */
public final class ev1 implements n41, b31 {

    /* renamed from: d */
    private static final Object f22560d = new Object();

    /* renamed from: e */
    private static int f22561e;

    /* renamed from: f */
    private final AbstractC5728q1 f22562f;

    /* renamed from: g */
    private final ov1 f22563g;

    public ev1(ov1 ov1Var, AbstractC5728q1 abstractC5728q1) {
        this.f22563g = ov1Var;
        this.f22562f = abstractC5728q1;
    }

    /* renamed from: a */
    private final void m15368a(boolean z) {
        int i;
        int intValue;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue() && !this.f22562f.mo17948t()) {
            Object obj = f22560d;
            synchronized (obj) {
                i = f22561e;
                intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25843y4)).intValue();
            }
            if (i >= intValue) {
                return;
            }
            this.f22563g.m12490f(z);
            synchronized (obj) {
                f22561e++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        m15368a(false);
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        m15368a(true);
    }
}
