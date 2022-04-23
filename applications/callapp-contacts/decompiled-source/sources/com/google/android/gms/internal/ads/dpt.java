package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpt.class */
final class dpt extends dpu<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dpt(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.dpu
    public final void a() {
        if (!b()) {
            for (int i = 0; i < c(); i++) {
                Map.Entry<FieldDescriptorType, Object> b2 = b(i);
                if (((dnb) b2.getKey()).d()) {
                    b2.setValue(Collections.unmodifiableList((List) b2.getValue()));
                }
            }
            Iterator it2 = d().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (((dnb) entry.getKey()).d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
