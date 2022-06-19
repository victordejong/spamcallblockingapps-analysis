package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ii */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ii.class */
public final class C3220ii implements AbstractC3131fa<AbstractC3241jc> {

    /* renamed from: a */
    private final /* synthetic */ C3232iu f16762a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3200hp f16763b;

    /* renamed from: c */
    private final /* synthetic */ C3215id f16764c;

    public C3220ii(C3215id c3215id, C3232iu c3232iu, AbstractC3200hp abstractC3200hp) {
        this.f16764c = c3215id;
        this.f16762a = c3232iu;
        this.f16763b = abstractC3200hp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(AbstractC3241jc abstractC3241jc, Map map) {
        Object obj;
        AbstractC3599wj abstractC3599wj;
        obj = this.f16764c.f16746a;
        synchronized (obj) {
            if (this.f16762a.m6722e() == -1 || this.f16762a.m6722e() == 1) {
                return;
            }
            this.f16764c.f16753h = 0;
            abstractC3599wj = this.f16764c.f16750e;
            abstractC3599wj.mo6881a(this.f16763b);
            this.f16762a.m6724a((C3232iu) this.f16763b);
            this.f16764c.f16752g = this.f16762a;
            C3556uu.m7052a("Successfully loaded JS Engine.");
        }
    }
}
