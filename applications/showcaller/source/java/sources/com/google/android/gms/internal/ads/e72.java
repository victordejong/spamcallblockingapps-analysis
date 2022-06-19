package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e72.class */
public final class e72 implements wa2<f72> {

    /* renamed from: a */
    private final s03 f22040a;

    /* renamed from: b */
    private final tl1 f22041b;

    /* renamed from: c */
    private final String f22042c;

    /* renamed from: d */
    private final xj2 f22043d;

    public e72(s03 s03Var, tl1 tl1Var, xj2 xj2Var, String str) {
        this.f22040a = s03Var;
        this.f22041b = tl1Var;
        this.f22043d = xj2Var;
        this.f22042c = str;
    }

    /* renamed from: a */
    public final /* synthetic */ f72 m15561a() {
        return new f72(this.f22041b.m10636b(this.f22043d.f32079f, this.f22042c), this.f22041b.m10635c());
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<f72> zza() {
        return this.f22040a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.d72

            /* renamed from: a */
            private final e72 f21541a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21541a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f21541a.m15561a();
            }
        });
    }
}
