package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bca.class */
public final class bca {

    /* renamed from: a */
    private final Executor f10918a;

    /* renamed from: b */
    private final ajk f10919b;

    /* renamed from: c */
    private final aup f10920c;

    public bca(Executor executor, ajk ajkVar, aup aupVar) {
        this.f10918a = executor;
        this.f10920c = aupVar;
        this.f10919b = ajkVar;
    }

    /* renamed from: a */
    public final void m12107a(act actVar) {
        if (actVar == null) {
            return;
        }
        this.f10920c.m12420a(actVar.getView());
        this.f10920c.m12773a(new dtr(actVar) { // from class: com.google.android.gms.internal.ads.bcd

            /* renamed from: a */
            private final act f10925a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10925a = actVar;
            }

            @Override // com.google.android.gms.internal.ads.dtr
            /* renamed from: a */
            public final void mo7170a(dtt dttVar) {
                this.f10925a.mo13426v().mo13534a(dttVar.f15733d.left, dttVar.f15733d.top, false);
            }
        }, this.f10918a);
        this.f10920c.m12773a(new dtr(actVar) { // from class: com.google.android.gms.internal.ads.bcc

            /* renamed from: a */
            private final act f10924a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10924a = actVar;
            }

            @Override // com.google.android.gms.internal.ads.dtr
            /* renamed from: a */
            public final void mo7170a(dtt dttVar) {
                act actVar2 = this.f10924a;
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", dttVar.f15739j ? "1" : "0");
                actVar2.mo7737a("onAdVisibilityChanged", hashMap);
            }
        }, this.f10918a);
        this.f10920c.m12773a(this.f10919b, this.f10918a);
        this.f10919b.m13069a(actVar);
        actVar.mo13462a("/trackActiveViewUnit", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.bcg

            /* renamed from: a */
            private final bca f10934a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10934a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f10934a.m12105b((act) obj, map);
            }
        });
        actVar.mo13462a("/untrackActiveViewUnit", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.bcf

            /* renamed from: a */
            private final bca f10933a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10933a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f10933a.m12106a((act) obj, map);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m12106a(act actVar, Map map) {
        this.f10919b.m13070a();
    }

    /* renamed from: b */
    public final /* synthetic */ void m12105b(act actVar, Map map) {
        this.f10919b.m13066b();
    }
}
