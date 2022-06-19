package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b62.class */
public final class b62 implements wa2<c62> {

    /* renamed from: a */
    private final s03 f20299a;

    /* renamed from: b */
    private final xj2 f20300b;

    /* renamed from: c */
    private final zzcgz f20301c;

    /* renamed from: d */
    private final th0 f20302d;

    public b62(s03 s03Var, xj2 xj2Var, zzcgz zzcgzVar, th0 th0Var) {
        this.f20299a = s03Var;
        this.f20300b = xj2Var;
        this.f20301c = zzcgzVar;
        this.f20302d = th0Var;
    }

    /* renamed from: a */
    public final /* synthetic */ c62 m16439a() {
        return new c62(this.f20300b.f32083j, this.f20301c, this.f20302d.m10678j());
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<c62> zza() {
        return this.f20299a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.a62

            /* renamed from: a */
            private final b62 f19844a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19844a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f19844a.m16439a();
            }
        });
    }
}
