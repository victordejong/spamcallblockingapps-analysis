package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.signalgeneration.C5827n;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z72.class */
public final class z72 implements wa2<a82> {

    /* renamed from: a */
    private final s03 f32837a;

    /* renamed from: b */
    private final xj2 f32838b;

    public z72(s03 s03Var, xj2 xj2Var) {
        this.f32837a = s03Var;
        this.f32838b = xj2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ a82 m8496a() {
        return new a82("requester_type_2".equals(C5827n.m17780d(this.f32838b)));
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<a82> zza() {
        return this.f32837a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.y72

            /* renamed from: a */
            private final z72 f32436a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32436a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32436a.m8496a();
            }
        });
    }
}
