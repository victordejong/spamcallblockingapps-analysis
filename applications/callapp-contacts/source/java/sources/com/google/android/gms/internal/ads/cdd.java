package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdd.class */
final /* synthetic */ class cdd implements cxu {

    /* renamed from: a */
    static final cxu f45547a = new cdd();

    private cdd() {
    }

    @Override // com.google.android.gms.internal.ads.cxu
    /* renamed from: a */
    public final Object mo14064a(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new cgy(arrayList) { // from class: com.google.android.gms.internal.ads.cdc

            /* renamed from: a */
            private final ArrayList f45546a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45546a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            /* renamed from: a */
            public final void mo17450a(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f45546a);
            }
        };
    }
}
