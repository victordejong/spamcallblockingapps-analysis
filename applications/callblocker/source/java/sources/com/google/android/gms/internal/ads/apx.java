package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apx.class */
public final class apx extends ate<apu> implements apu {
    public apx(aqb aqbVar, Set<auq<apu>> set, Executor executor) {
        super(set);
        m12773a((apx) aqbVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.apu
    /* renamed from: a */
    public final void mo11961a() {
        m12775a(apy.f10207a);
    }

    @Override // com.google.android.gms.internal.ads.apu
    /* renamed from: a */
    public final void mo11960a(int i, String str) {
        m12775a(new atg(i, str) { // from class: com.google.android.gms.internal.ads.apw

            /* renamed from: a */
            private final int f10205a;

            /* renamed from: b */
            private final String f10206b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10205a = i;
                this.f10206b = str;
            }

            @Override // com.google.android.gms.internal.ads.atg
            /* renamed from: a */
            public final void mo11119a(Object obj) {
                ((apu) obj).mo11960a(this.f10205a, this.f10206b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.apu
    /* renamed from: a */
    public final void mo11959a(zzbxy zzbxyVar) {
        m12775a(new atg(zzbxyVar) { // from class: com.google.android.gms.internal.ads.apz

            /* renamed from: a */
            private final zzbxy f10208a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10208a = zzbxyVar;
            }

            @Override // com.google.android.gms.internal.ads.atg
            /* renamed from: a */
            public final void mo11119a(Object obj) {
                ((apu) obj).mo11959a(this.f10208a);
            }
        });
    }
}
