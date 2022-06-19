package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccm.class */
final class ccm implements chb<cgy<Bundle>> {

    /* renamed from: a */
    private final Set<String> f45520a;

    public ccm(Set<String> set) {
        this.f45520a = set;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgy<Bundle>> mo17449a() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f45520a) {
            arrayList.add(str);
        }
        return dbh.m16899a(new cgy(arrayList) { // from class: com.google.android.gms.internal.ads.ccl

            /* renamed from: a */
            private final ArrayList f45519a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45519a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            /* renamed from: a */
            public final void mo17450a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f45519a);
            }
        });
    }
}
