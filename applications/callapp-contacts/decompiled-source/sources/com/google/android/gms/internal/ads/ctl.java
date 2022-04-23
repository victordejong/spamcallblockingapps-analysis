package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctl.class */
final class ctl extends awl<cto> implements ctg<ctj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ctl(Set<ayi<cto>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.ctg
    public final void a(final csu<ctj, ?> csuVar) {
        a(new awn(csuVar) { // from class: com.google.android.gms.internal.ads.ctk

            /* renamed from: a  reason: collision with root package name */
            private final csu f26372a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26372a = csuVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((cto) obj).a(this.f26372a.f26350b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ctg
    public final void a(final csu<ctj, ?> csuVar, final Throwable th) {
        a(new awn(csuVar, th) { // from class: com.google.android.gms.internal.ads.ctm

            /* renamed from: a  reason: collision with root package name */
            private final csu f26373a;

            /* renamed from: b  reason: collision with root package name */
            private final Throwable f26374b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26373a = csuVar;
                this.f26374b = th;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                csu csuVar2 = this.f26373a;
                ((cto) obj).a((ctj) csuVar2.f26349a, csuVar2.f26350b, this.f26374b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ctg
    public final void b(final csu<ctj, ?> csuVar) {
        a(new awn(csuVar) { // from class: com.google.android.gms.internal.ads.ctn

            /* renamed from: a  reason: collision with root package name */
            private final csu f26375a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26375a = csuVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                csu csuVar2 = this.f26375a;
                ((cto) obj).a((ctj) csuVar2.f26349a, csuVar2.f26350b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ctg
    public final void c(final csu<ctj, ?> csuVar) {
        a(new awn(csuVar) { // from class: com.google.android.gms.internal.ads.ctp

            /* renamed from: a  reason: collision with root package name */
            private final csu f26376a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26376a = csuVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                csu csuVar2 = this.f26376a;
                ((cto) obj).b((ctj) csuVar2.f26349a, csuVar2.f26350b);
            }
        });
    }
}
