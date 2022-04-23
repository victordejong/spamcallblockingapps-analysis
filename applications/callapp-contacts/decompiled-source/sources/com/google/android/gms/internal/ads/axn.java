package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axn.class */
public final class axn extends awl<axs> implements axs {
    public axn(Set<ayi<axs>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void a() {
        a(axr.f23992a);
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void a(final String str) {
        a(new awn(str) { // from class: com.google.android.gms.internal.ads.axm

            /* renamed from: a  reason: collision with root package name */
            private final String f23987a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23987a = str;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((axs) obj).a(this.f23987a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void a(final String str, final String str2) {
        a(new awn(str, str2) { // from class: com.google.android.gms.internal.ads.axo

            /* renamed from: a  reason: collision with root package name */
            private final String f23988a;

            /* renamed from: b  reason: collision with root package name */
            private final String f23989b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23988a = str;
                this.f23989b = str2;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((axs) obj).a(this.f23988a, this.f23989b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void b() {
        a(axq.f23991a);
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void b(final String str) {
        a(new awn(str) { // from class: com.google.android.gms.internal.ads.axp

            /* renamed from: a  reason: collision with root package name */
            private final String f23990a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23990a = str;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((axs) obj).b(this.f23990a);
            }
        });
    }
}
