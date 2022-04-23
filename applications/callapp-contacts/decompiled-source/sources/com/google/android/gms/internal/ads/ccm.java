package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccm.class */
final class ccm implements chb<cgy<Bundle>> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f25593a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ccm(Set<String> set) {
        this.f25593a = set;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgy<Bundle>> a() {
        final ArrayList arrayList = new ArrayList();
        for (String str : this.f25593a) {
            arrayList.add(str);
        }
        return dbh.a(new cgy(arrayList) { // from class: com.google.android.gms.internal.ads.ccl

            /* renamed from: a  reason: collision with root package name */
            private final ArrayList f25592a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25592a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            public final void a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f25592a);
            }
        });
    }
}
