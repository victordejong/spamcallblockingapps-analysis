package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p52.class */
final class p52 implements wa2<va2<Bundle>> {

    /* renamed from: a */
    private final Set<String> f27882a;

    public p52(Set<String> set) {
        this.f27882a = set;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<va2<Bundle>> zza() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f27882a) {
            arrayList.add(str);
        }
        return k03.m14003a(new va2(arrayList) { // from class: com.google.android.gms.internal.ads.o52

            /* renamed from: a */
            private final ArrayList f27440a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27440a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.va2
            /* renamed from: a */
            public final void mo8928a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f27440a);
            }
        });
    }
}
