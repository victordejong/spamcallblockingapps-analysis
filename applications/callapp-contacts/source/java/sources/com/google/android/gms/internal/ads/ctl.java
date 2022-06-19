package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctl.class */
final class ctl extends awl<cto> implements ctg<ctj> {
    public ctl(Set<ayi<cto>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.ctg
    /* renamed from: a */
    public final void mo17242a(csu<ctj, ?> csuVar) {
        m18374a(new awn(csuVar) { // from class: com.google.android.gms.internal.ads.ctk

            /* renamed from: a */
            private final csu f46518a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46518a = csuVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            /* renamed from: a */
            public final void mo17234a(Object obj) {
                ((cto) obj).mo17236a(this.f46518a.f46494b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ctg
    /* renamed from: a */
    public final void mo17241a(csu<ctj, ?> csuVar, Throwable th) {
        m18374a(new awn(csuVar, th) { // from class: com.google.android.gms.internal.ads.ctm

            /* renamed from: a */
            private final csu f46519a;

            /* renamed from: b */
            private final Throwable f46520b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46519a = csuVar;
                this.f46520b = th;
            }

            @Override // com.google.android.gms.internal.ads.awn
            /* renamed from: a */
            public final void mo17234a(Object obj) {
                csu csuVar2 = this.f46519a;
                ((cto) obj).mo17237a((ctj) csuVar2.f46493a, csuVar2.f46494b, this.f46520b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ctg
    /* renamed from: b */
    public final void mo17240b(csu<ctj, ?> csuVar) {
        m18374a(new awn(csuVar) { // from class: com.google.android.gms.internal.ads.ctn

            /* renamed from: a */
            private final csu f46521a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46521a = csuVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            /* renamed from: a */
            public final void mo17234a(Object obj) {
                csu csuVar2 = this.f46521a;
                ((cto) obj).mo17238a((ctj) csuVar2.f46493a, csuVar2.f46494b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ctg
    /* renamed from: c */
    public final void mo17239c(csu<ctj, ?> csuVar) {
        m18374a(new awn(csuVar) { // from class: com.google.android.gms.internal.ads.ctp

            /* renamed from: a */
            private final csu f46522a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46522a = csuVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            /* renamed from: a */
            public final void mo17234a(Object obj) {
                csu csuVar2 = this.f46522a;
                ((cto) obj).mo17235b((ctj) csuVar2.f46493a, csuVar2.f46494b);
            }
        });
    }
}
