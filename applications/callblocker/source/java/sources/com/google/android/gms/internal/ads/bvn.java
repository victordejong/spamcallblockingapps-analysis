package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvn.class */
final class bvn implements cah<cae<Bundle>> {

    /* renamed from: a */
    private final Set<String> f12351a;

    public bvn(Set<String> set) {
        this.f12351a = set;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<Bundle>> mo11479a() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f12351a) {
            arrayList.add(str);
        }
        return crg.m10778a(new cae(arrayList) { // from class: com.google.android.gms.internal.ads.bvm

            /* renamed from: a */
            private final ArrayList f12350a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12350a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f12350a);
            }
        });
    }
}
