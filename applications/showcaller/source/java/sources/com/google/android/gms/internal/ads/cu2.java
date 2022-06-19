package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cu2.class */
public final class cu2 {
    /* renamed from: a */
    public static <V> r03<V> m15995a(AbstractC7966g<V> abstractC7966g) {
        z03 m8633E = z03.m8633E();
        abstractC7966g.mo5824c(y03.m9007a(), new AbstractC7958c(m8633E) { // from class: com.google.android.gms.internal.ads.bu2

            /* renamed from: a */
            private final z03 f20972a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20972a = m8633E;
            }

            @Override // com.google.android.gms.tasks.AbstractC7958c
            /* renamed from: a */
            public final void mo1124a(AbstractC7966g abstractC7966g2) {
                z03 z03Var = this.f20972a;
                if (abstractC7966g2.mo5812o()) {
                    z03Var.cancel(false);
                } else if (abstractC7966g2.mo5810q()) {
                    z03Var.mo8632u(abstractC7966g2.mo5814m());
                } else {
                    Exception mo5815l = abstractC7966g2.mo5815l();
                    if (mo5815l == null) {
                        throw new IllegalStateException();
                    }
                    z03Var.mo8631v(mo5815l);
                }
            }
        });
        return m8633E;
    }
}
