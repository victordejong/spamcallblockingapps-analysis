package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dr1.class */
public final class dr1 implements cj3<r03<String>> {

    /* renamed from: a */
    private final pj3<C7016u> f21759a;

    /* renamed from: b */
    private final pj3<Context> f21760b;

    /* renamed from: c */
    private final pj3<s03> f21761c;

    public dr1(pj3<C7016u> pj3Var, pj3<Context> pj3Var2, pj3<s03> pj3Var3) {
        this.f21759a = pj3Var;
        this.f21760b = pj3Var2;
        this.f21761c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        C7016u mo8141b = this.f21759a.mo8141b();
        Context m16321a = ((bl2) this.f21760b).m16321a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        r03 mo11185a = s03Var.mo11185a(new Callable(mo8141b, m16321a) { // from class: com.google.android.gms.internal.ads.cr1

            /* renamed from: a */
            private final C7016u f21362a;

            /* renamed from: b */
            private final Context f21363b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21362a = mo8141b;
                this.f21363b = m16321a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                C7016u c7016u = this.f21362a;
                return c7016u.m10450b().mo11751a(this.f21363b);
            }
        });
        kj3.m13879b(mo11185a);
        return mo11185a;
    }
}
