package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvz.class */
final /* synthetic */ class bvz implements coe {

    /* renamed from: a */
    static final coe f12368a = new bvz();

    private bvz() {
    }

    @Override // com.google.android.gms.internal.ads.coe
    /* renamed from: a */
    public final Object mo7184a(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        return arrayList.isEmpty() ? null : new cae(arrayList) { // from class: com.google.android.gms.internal.ads.bwc

            /* renamed from: a */
            private final ArrayList f12373a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12373a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f12373a);
            }
        };
    }
}
