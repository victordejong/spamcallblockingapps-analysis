package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o50.class */
public final class o50 implements n20<e60> {

    /* renamed from: a */
    final /* synthetic */ c60 f27431a;

    /* renamed from: b */
    final /* synthetic */ x40 f27432b;

    /* renamed from: c */
    final /* synthetic */ d60 f27433c;

    public o50(d60 d60Var, c60 c60Var, x40 x40Var) {
        this.f27433c = d60Var;
        this.f27431a = c60Var;
        this.f27432b = x40Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(e60 e60Var, Map map) {
        Object obj;
        obj = this.f27433c.f21491a;
        synchronized (obj) {
            if (this.f27431a.m16031e() != -1 && this.f27431a.m16031e() != 1) {
                this.f27433c.f21498h = 0;
                x40 x40Var = this.f27432b;
                x40Var.mo15303i0("/log", m20.f26389g);
                x40Var.mo15303i0("/result", m20.f26397o);
                this.f27431a.m16033c(this.f27432b);
                this.f27433c.f21497g = this.f27431a;
                C5722o1.m17990k("Successfully loaded JS Engine.");
            }
        }
    }
}
