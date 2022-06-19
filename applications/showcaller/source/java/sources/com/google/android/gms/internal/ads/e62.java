package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e62.class */
final /* synthetic */ class e62 implements nu2 {

    /* renamed from: a */
    static final nu2 f22038a = new e62();

    private e62() {
    }

    @Override // com.google.android.gms.internal.ads.nu2
    /* renamed from: a */
    public final Object mo8501a(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new va2(arrayList) { // from class: com.google.android.gms.internal.ads.f62

            /* renamed from: a */
            private final ArrayList f22738a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22738a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.va2
            /* renamed from: a */
            public final void mo8928a(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f22738a);
            }
        };
    }
}
