package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h82.class */
public final class h82 implements wa2<i82> {

    /* renamed from: a */
    private final s03 f23823a;

    /* renamed from: b */
    private final lq1 f23824b;

    public h82(s03 s03Var, lq1 lq1Var) {
        this.f23823a = s03Var;
        this.f23824b = lq1Var;
    }

    /* renamed from: a */
    public final /* synthetic */ i82 m14724a() {
        return new i82(this.f23824b.m13449g(), this.f23824b.m13452d(), C5667s.m18150n().m18126k());
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<i82> zza() {
        return this.f23823a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.g82

            /* renamed from: a */
            private final h82 f23265a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23265a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f23265a.m14724a();
            }
        });
    }
}
