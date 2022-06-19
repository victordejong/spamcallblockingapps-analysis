package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yu0.class */
public final class yu0 implements n20<Object> {

    /* renamed from: a */
    final /* synthetic */ zu0 f32654a;

    public yu0(zu0 zu0Var) {
        this.f32654a = zu0Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        Executor executor;
        if (!zu0.m8174g(this.f32654a, map)) {
            return;
        }
        executor = this.f32654a.f33403c;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.xu0

            /* renamed from: d */
            private final yu0 f32295d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32295d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ev0 ev0Var;
                ev0Var = this.f32295d.f32654a.f33404d;
                ev0Var.m15372c();
            }
        });
    }
}
