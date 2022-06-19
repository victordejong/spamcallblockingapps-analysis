package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.il */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/il.class */
public final class C3223il implements AbstractC3131fa<AbstractC3241jc> {

    /* renamed from: a */
    private final /* synthetic */ ctl f16769a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3200hp f16770b;

    /* renamed from: c */
    private final /* synthetic */ C3623xg f16771c;

    /* renamed from: d */
    private final /* synthetic */ C3215id f16772d;

    public C3223il(C3215id c3215id, ctl ctlVar, AbstractC3200hp abstractC3200hp, C3623xg c3623xg) {
        this.f16772d = c3215id;
        this.f16769a = ctlVar;
        this.f16770b = abstractC3200hp;
        this.f16771c = c3623xg;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(AbstractC3241jc abstractC3241jc, Map map) {
        Object obj;
        int i;
        obj = this.f16772d.f16746a;
        synchronized (obj) {
            C3556uu.m6747d("JS Engine is requesting an update");
            i = this.f16772d.f16753h;
            if (i == 0) {
                C3556uu.m6747d("Starting reload.");
                this.f16772d.f16753h = 2;
                this.f16772d.m7765a(this.f16769a);
            }
            this.f16770b.mo7735b("/requestReload", (AbstractC3131fa) this.f16771c.m6826a());
        }
    }
}
