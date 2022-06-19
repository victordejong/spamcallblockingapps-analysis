package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ays.class */
public final class ays extends awl<AbstractC12623hy> implements AbstractC12623hy {
    public ays(Set<ayi<AbstractC12623hy>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12623hy
    /* renamed from: a */
    public final void mo14604a() {
        synchronized (this) {
            m18374a(ayr.f43331a);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12623hy
    /* renamed from: a */
    public final void mo14603a(zzavy zzavyVar) {
        m18374a(new awn(zzavyVar) { // from class: com.google.android.gms.internal.ads.ayu

            /* renamed from: a */
            private final zzavy f43333a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43333a = zzavyVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            /* renamed from: a */
            public final void mo17234a(Object obj) {
                ((AbstractC12623hy) obj).mo14603a(this.f43333a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12623hy
    /* renamed from: b */
    public final void mo14602b() {
        m18374a(ayt.f43332a);
    }
}
