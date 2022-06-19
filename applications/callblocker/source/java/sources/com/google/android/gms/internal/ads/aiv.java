package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aiv.class */
public final class aiv implements AbstractC3131fa<Object> {

    /* renamed from: a */
    final /* synthetic */ ais f9771a;

    public aiv(ais aisVar) {
        this.f9771a = aisVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        boolean m13088a;
        Executor executor;
        m13088a = this.f9771a.m13088a(map);
        if (!m13088a) {
            return;
        }
        executor = this.f9771a.f9760c;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aiu

            /* renamed from: a */
            private final aiv f9770a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9770a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ajb ajbVar;
                ajbVar = this.f9770a.f9771a.f9761d;
                ajbVar.m13080e();
            }
        });
    }
}
