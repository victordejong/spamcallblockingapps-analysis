package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p118a.AbstractC2244a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asr.class */
public final class asr extends ate<AbstractC2244a> implements AbstractC3113ek {
    public asr(Set<auq<AbstractC2244a>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3113ek
    /* renamed from: a */
    public final void mo7859a(String str, String str2) {
        synchronized (this) {
            m12775a(new atg(str, str2) { // from class: com.google.android.gms.internal.ads.asq

                /* renamed from: a */
                private final String f10271a;

                /* renamed from: b */
                private final String f10272b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10271a = str;
                    this.f10272b = str2;
                }

                @Override // com.google.android.gms.internal.ads.atg
                /* renamed from: a */
                public final void mo11119a(Object obj) {
                    ((AbstractC2244a) obj).mo11654a(this.f10271a, this.f10272b);
                }
            });
        }
    }
}
