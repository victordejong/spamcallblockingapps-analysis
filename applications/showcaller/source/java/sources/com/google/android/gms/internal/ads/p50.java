package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5686e1;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p50.class */
public final class p50 implements n20<e60> {

    /* renamed from: a */
    final /* synthetic */ x40 f27879a;

    /* renamed from: b */
    final /* synthetic */ C5686e1 f27880b;

    /* renamed from: c */
    final /* synthetic */ d60 f27881c;

    public p50(d60 d60Var, C7016u c7016u, x40 x40Var, C5686e1 c5686e1) {
        this.f27881c = d60Var;
        this.f27879a = x40Var;
        this.f27880b = c5686e1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, com.google.android.gms.internal.ads.n20] */
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(e60 e60Var, Map map) {
        Object obj;
        int i;
        obj = this.f27881c.f21491a;
        synchronized (obj) {
            ei0.m15465e("JS Engine is requesting an update");
            i = this.f27881c.f21498h;
            if (i == 0) {
                ei0.m15465e("Starting reload.");
                this.f27881c.f21498h = 2;
                this.f27881c.m15940f(null);
            }
            this.f27879a.mo15305U("/requestReload", this.f27880b.m18040a());
        }
    }
}
