package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdd.class */
final /* synthetic */ class cdd implements cxu {

    /* renamed from: a  reason: collision with root package name */
    static final cxu f25620a = new cdd();

    private cdd() {
    }

    @Override // com.google.android.gms.internal.ads.cxu
    public final Object a(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new cgy(arrayList) { // from class: com.google.android.gms.internal.ads.cdc

            /* renamed from: a  reason: collision with root package name */
            private final ArrayList f25619a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25619a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            public final void a(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f25619a);
            }
        };
    }
}
