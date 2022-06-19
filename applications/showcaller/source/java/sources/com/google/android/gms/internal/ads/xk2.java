package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xk2.class */
public final class xk2 implements b31 {

    /* renamed from: d */
    private final HashSet<ih0> f32098d = new HashSet<>();

    /* renamed from: e */
    private final Context f32099e;

    /* renamed from: f */
    private final th0 f32100f;

    public xk2(Context context, th0 th0Var) {
        this.f32099e = context;
        this.f32100f = th0Var;
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        synchronized (this) {
            if (zzbczVar.f33653d != 3) {
                this.f32100f.m10685c(this.f32098d);
            }
        }
    }

    /* renamed from: a */
    public final void m9145a(HashSet<ih0> hashSet) {
        synchronized (this) {
            this.f32098d.clear();
            this.f32098d.addAll(hashSet);
        }
    }

    /* renamed from: b */
    public final Bundle m9144b() {
        return this.f32100f.m10677k(this.f32099e, this);
    }
}
