package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/li1.class */
public final class li1 {

    /* renamed from: a */
    private final Executor f26131a;

    /* renamed from: b */
    private final pv0 f26132b;

    /* renamed from: c */
    private final la1 f26133c;

    public li1(Executor executor, pv0 pv0Var, la1 la1Var) {
        this.f26131a = executor;
        this.f26133c = la1Var;
        this.f26132b = pv0Var;
    }

    /* renamed from: a */
    public final void m13505a(wn0 wn0Var) {
        if (wn0Var == null) {
            return;
        }
        this.f26133c.m13619S0(wn0Var.mo7960D());
        this.f26133c.m13341D0(new AbstractC6888qj(wn0Var) { // from class: com.google.android.gms.internal.ads.gi1

            /* renamed from: d */
            private final wn0 f23357d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23357d = wn0Var;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6888qj
            /* renamed from: Y */
            public final void mo7924Y(C6851pj c6851pj) {
                jp0 mo7914c0 = this.f23357d.mo7914c0();
                Rect rect = c6851pj.f28017d;
                mo7914c0.mo14090G0(rect.left, rect.top, false);
            }
        }, this.f26131a);
        this.f26133c.m13341D0(new AbstractC6888qj(wn0Var) { // from class: com.google.android.gms.internal.ads.hi1

            /* renamed from: d */
            private final wn0 f23914d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23914d = wn0Var;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6888qj
            /* renamed from: Y */
            public final void mo7924Y(C6851pj c6851pj) {
                wn0 wn0Var2 = this.f23914d;
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", true != c6851pj.f28023j ? "0" : "1");
                wn0Var2.mo7959D0("onAdVisibilityChanged", hashMap);
            }
        }, this.f26131a);
        this.f26133c.m13341D0(this.f26132b, this.f26131a);
        this.f26132b.m12130a(wn0Var);
        wn0Var.mo7899l0("/trackActiveViewUnit", new n20(this) { // from class: com.google.android.gms.internal.ads.ji1

            /* renamed from: a */
            private final li1 f24888a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24888a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f24888a.m13503c((wn0) obj, map);
            }
        });
        wn0Var.mo7899l0("/untrackActiveViewUnit", new n20(this) { // from class: com.google.android.gms.internal.ads.ki1

            /* renamed from: a */
            private final li1 f25224a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25224a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f25224a.m13504b((wn0) obj, map);
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ void m13504b(wn0 wn0Var, Map map) {
        this.f26132b.m12129b();
    }

    /* renamed from: c */
    public final /* synthetic */ void m13503c(wn0 wn0Var, Map map) {
        this.f26132b.m12128c();
    }
}
