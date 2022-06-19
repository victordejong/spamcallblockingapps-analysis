package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wu0.class */
public final class wu0 implements n20<Object> {

    /* renamed from: a */
    final /* synthetic */ zu0 f31793a;

    public wu0(zu0 zu0Var) {
        this.f31793a = zu0Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        Executor executor;
        if (!zu0.m8174g(this.f31793a, map)) {
            return;
        }
        executor = this.f31793a.f33403c;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.vu0

            /* renamed from: d */
            private final wu0 f31351d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31351d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ev0 ev0Var;
                ev0Var = this.f31351d.f31793a.f33404d;
                ev0Var.m15373b();
            }
        });
    }
}
