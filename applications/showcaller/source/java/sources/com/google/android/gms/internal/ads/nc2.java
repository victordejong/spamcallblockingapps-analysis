package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nc2.class */
public final class nc2 implements wa2<oc2> {

    /* renamed from: a */
    final s03 f27076a;

    /* renamed from: b */
    final String f27077b;

    /* renamed from: c */
    final dh0 f27078c;

    public nc2(dh0 dh0Var, s03 s03Var, String str, byte[] bArr) {
        this.f27078c = dh0Var;
        this.f27076a = s03Var;
        this.f27077b = str;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<oc2> zza() {
        new vi0();
        r03 m14003a = k03.m14003a(null);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25683e4)).booleanValue()) {
            m14003a = k03.m14003a(null);
        }
        r03 m14003a2 = k03.m14003a(null);
        return k03.m13990n(m14003a, m14003a2).m14516a(new Callable(m14003a, m14003a2) { // from class: com.google.android.gms.internal.ads.mc2

            /* renamed from: a */
            private final r03 f26532a;

            /* renamed from: b */
            private final r03 f26533b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26532a = m14003a;
                this.f26533b = m14003a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new oc2((String) this.f26532a.get(), (String) this.f26533b.get());
            }
        }, qi0.f28495a);
    }
}
