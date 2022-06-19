package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdp.class */
public final class bdp implements AbstractC3141fk {

    /* renamed from: a */
    private final aqq f11035a;

    /* renamed from: b */
    private final C3472rr f11036b;

    /* renamed from: c */
    private final String f11037c;

    /* renamed from: d */
    private final String f11038d;

    public bdp(aqq aqqVar, cgr cgrVar) {
        this.f11035a = aqqVar;
        this.f11036b = cgrVar.f12990l;
        this.f11037c = cgrVar.f12988j;
        this.f11038d = cgrVar.f12989k;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3141fk
    /* renamed from: a */
    public final void mo7830a() {
        this.f11035a.m12801d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3141fk
    @ParametersAreNonnullByDefault
    /* renamed from: a */
    public final void mo7829a(C3472rr c3472rr) {
        String str = "";
        int i = 1;
        if (this.f11036b != null) {
            c3472rr = this.f11036b;
        }
        if (c3472rr != null) {
            str = c3472rr.f17313a;
            i = c3472rr.f17314b;
        }
        this.f11035a.m12804a(new BinderC3443qp(str, i), this.f11037c, this.f11038d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3141fk
    /* renamed from: b */
    public final void mo7828b() {
        this.f11035a.m12800e();
    }
}
