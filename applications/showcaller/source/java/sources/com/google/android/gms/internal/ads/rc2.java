package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rc2.class */
public final class rc2 implements wa2<sc2> {

    /* renamed from: a */
    final s03 f28848a;

    /* renamed from: b */
    final List<String> f28849b;

    /* renamed from: c */
    final C7048uv f28850c;

    /* JADX WARN: Multi-variable type inference failed */
    public rc2(C7048uv c7048uv, C7048uv c7048uv2, s03 s03Var, List<String> list) {
        this.f28850c = c7048uv;
        this.f28848a = c7048uv2;
        this.f28849b = s03Var;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<sc2> zza() {
        return this.f28848a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.qc2

            /* renamed from: a */
            private final rc2 f28409a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28409a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new sc2(this.f28409a.f28849b);
            }
        });
    }
}
