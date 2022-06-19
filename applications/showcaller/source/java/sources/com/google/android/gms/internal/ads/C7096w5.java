package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.w5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w5.class */
public final class C7096w5 implements AbstractC6948s5 {

    /* renamed from: a */
    public final ik3 f31454a;

    /* renamed from: d */
    public int f31457d;

    /* renamed from: e */
    public boolean f31458e;

    /* renamed from: c */
    public final List<mk3> f31456c = new ArrayList();

    /* renamed from: b */
    public final Object f31455b = new Object();

    public C7096w5(ok3 ok3Var, boolean z) {
        this.f31454a = new ik3(ok3Var, z);
    }

    /* renamed from: a */
    public final void m9782a(int i) {
        this.f31457d = i;
        this.f31458e = false;
        this.f31456c.clear();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6948s5
    /* renamed from: b */
    public final Object mo9781b() {
        return this.f31455b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6948s5
    /* renamed from: c */
    public final AbstractC6839p7 mo9780c() {
        return this.f31454a.m14357D();
    }
}
