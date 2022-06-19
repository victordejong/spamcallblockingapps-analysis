package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y71.class */
public final class y71 extends m81<AbstractC6323bb> implements o10 {
    public y71(Set<ja1<AbstractC6323bb>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.o10
    /* renamed from: g0 */
    public final void mo8902g0(String str, String str2) {
        synchronized (this) {
            m13339Q0(new l81(str, str2) { // from class: com.google.android.gms.internal.ads.x71

                /* renamed from: a */
                private final String f31925a;

                /* renamed from: b */
                private final String f31926b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31925a = str;
                    this.f31926b = str2;
                }

                @Override // com.google.android.gms.internal.ads.l81
                /* renamed from: a */
                public final void mo8530a(Object obj) {
                    ((AbstractC6323bb) obj).mo12207m(this.f31925a, this.f31926b);
                }
            });
        }
    }
}
