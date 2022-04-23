package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arw.class */
public final class arw extends awl<asd> implements art {
    public arw(Set<ayi<asd>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a() {
        a(ary.f23835a);
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(zzcbq zzcbqVar) {
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(final zzvh zzvhVar) {
        a(new awn(zzvhVar) { // from class: com.google.android.gms.internal.ads.arz

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f23836a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23836a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((asd) obj).a_(this.f23836a);
            }
        });
    }
}
