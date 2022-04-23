package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ays.class */
public final class ays extends awl<hy> implements hy {
    public ays(Set<ayi<hy>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.hy
    public final void a() {
        synchronized (this) {
            a(ayr.f24017a);
        }
    }

    @Override // com.google.android.gms.internal.ads.hy
    public final void a(final zzavy zzavyVar) {
        a(new awn(zzavyVar) { // from class: com.google.android.gms.internal.ads.ayu

            /* renamed from: a  reason: collision with root package name */
            private final zzavy f24019a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24019a = zzavyVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((hy) obj).a(this.f24019a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.hy
    public final void b() {
        a(ayt.f24018a);
    }
}
