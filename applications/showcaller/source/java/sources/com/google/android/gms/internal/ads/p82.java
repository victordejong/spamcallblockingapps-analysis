package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p82.class */
public final class p82 implements wa2<q82> {

    /* renamed from: a */
    private final s03 f27909a;

    /* renamed from: b */
    private final dj2 f27910b;

    public p82(s03 s03Var, dj2 dj2Var) {
        this.f27909a = s03Var;
        this.f27910b = dj2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ q82 m12341a() {
        return new q82(this.f27910b);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<q82> zza() {
        return this.f27909a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.o82

            /* renamed from: a */
            private final p82 f27473a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27473a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27473a.m12341a();
            }
        });
    }
}
