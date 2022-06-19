package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aix.class */
public final class aix implements AbstractC3131fa<Object> {

    /* renamed from: a */
    final /* synthetic */ ais f9773a;

    public aix(ais aisVar) {
        this.f9773a = aisVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        boolean m13088a;
        Executor executor;
        m13088a = this.f9773a.m13088a(map);
        if (!m13088a) {
            return;
        }
        executor = this.f9773a.f9760c;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aiw

            /* renamed from: a */
            private final aix f9772a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9772a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ajb ajbVar;
                ajbVar = this.f9772a.f9773a.f9761d;
                ajbVar.m13079f();
            }
        });
    }
}
