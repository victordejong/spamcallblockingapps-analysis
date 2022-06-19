package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avv.class */
public class avv {

    /* renamed from: a */
    private final awx f10436a;

    /* renamed from: b */
    private final act f10437b;

    public avv(awx awxVar) {
        this(awxVar, null);
    }

    public avv(awx awxVar, act actVar) {
        this.f10436a = awxVar;
        this.f10437b = actVar;
    }

    /* renamed from: a */
    public final auq<asl> m12397a(Executor executor) {
        return new auq<>(new asl(this.f10437b) { // from class: com.google.android.gms.internal.ads.avx

            /* renamed from: a */
            private final act f10439a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10439a = actVar;
            }

            @Override // com.google.android.gms.internal.ads.asl
            /* renamed from: a */
            public final void mo12392a() {
                act actVar2 = this.f10439a;
                if (actVar2.mo13430r() != null) {
                    actVar2.mo13430r().m14767a();
                }
            }
        }, executor);
    }

    /* renamed from: a */
    public final awx m12398a() {
        return this.f10436a;
    }

    /* renamed from: a */
    public Set<auq<AbstractC2792app>> mo11681a(axc axcVar) {
        return Collections.singleton(auq.m12418a(axcVar, C3650yg.f17647f));
    }

    /* renamed from: b */
    public final act m12396b() {
        return this.f10437b;
    }

    /* renamed from: c */
    public final View m12395c() {
        return this.f10437b != null ? this.f10437b.getWebView() : null;
    }

    /* renamed from: d */
    public final View m12394d() {
        return this.f10437b == null ? null : this.f10437b.getWebView();
    }
}
