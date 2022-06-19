package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwu.class */
public final class bwu implements cah<cae<Bundle>> {

    /* renamed from: a */
    private final cef f12418a;

    public bwu(cef cefVar) {
        this.f12418a = cefVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<Bundle>> mo11479a() {
        return crg.m10778a((this.f12418a == null || this.f12418a.m11439a() == null || this.f12418a.m11439a().isEmpty()) ? null : new cae(this) { // from class: com.google.android.gms.internal.ads.bwx

            /* renamed from: a */
            private final bwu f12422a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12422a = this;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj) {
                this.f12422a.m11571a((Bundle) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m11571a(Bundle bundle) {
        bundle.putString("key_schema", this.f12418a.m11439a());
    }
}
