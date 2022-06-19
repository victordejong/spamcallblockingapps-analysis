package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ql3.class */
public final class ql3 implements xk3 {

    /* renamed from: a */
    private final AbstractC7171y6 f28553a;

    /* renamed from: b */
    private final cl3 f28554b;

    /* renamed from: e */
    private final dg2 f28557e = new dg2();

    /* renamed from: d */
    private final zn3 f28556d = new zn3(-1);

    /* renamed from: c */
    private int f28555c = 1048576;

    public ql3(AbstractC7171y6 abstractC7171y6, br3 br3Var) {
        cl3 cl3Var = new cl3(br3Var) { // from class: com.google.android.gms.internal.ads.pl3

            /* renamed from: a */
            private final br3 f28048a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28048a = br3Var;
            }

            @Override // com.google.android.gms.internal.ads.cl3
            public final dl3 zza() {
                return new ai3(this.f28048a);
            }
        };
        this.f28553a = abstractC7171y6;
        this.f28554b = cl3Var;
    }

    /* renamed from: a */
    public final ql3 m11858a(int i) {
        this.f28555c = i;
        return this;
    }

    /* renamed from: b */
    public final sl3 m11857b(C6615j5 c6615j5) {
        Objects.requireNonNull(c6615j5.f24784d);
        return new sl3(c6615j5, this.f28553a, this.f28554b, go2.f23426a, this.f28556d, this.f28555c, null, null);
    }
}
