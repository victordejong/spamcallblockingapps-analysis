package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzd.class */
public final class bzd implements cah<cae<Bundle>> {

    /* renamed from: a */
    private final Context f12525a;

    /* renamed from: b */
    private final String f12526b;

    public bzd(Context context, String str) {
        this.f12525a = context;
        this.f12526b = str;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<Bundle>> mo11479a() {
        return crg.m10778a(this.f12526b == null ? null : new cae(this) { // from class: com.google.android.gms.internal.ads.bzc

            /* renamed from: a */
            private final bzd f12524a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12524a = this;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj) {
                this.f12524a.m11541a((Bundle) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m11541a(Bundle bundle) {
        bundle.putString("rewarded_sku_package", this.f12525a.getPackageName());
    }
}
