package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvw.class */
public final class bvw implements cae<Bundle> {

    /* renamed from: a */
    private final dyk f12364a;

    public bvw(dyk dykVar) {
        this.f12364a = dykVar;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.f12364a != null) {
            if (this.f12364a.f16110a == 1) {
                bundle2.putString("avo", "p");
            } else if (this.f12364a.f16110a != 2) {
            } else {
                bundle2.putString("avo", "l");
            }
        }
    }
}
