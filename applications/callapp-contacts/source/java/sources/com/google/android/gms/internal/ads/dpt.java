package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpt.class */
public final class dpt extends dpu<FieldDescriptorType, Object> {
    public dpt(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.dpu
    /* renamed from: a */
    public final void mo16053a() {
        if (!m16047b()) {
            for (int i = 0; i < m16044c(); i++) {
                Map.Entry<FieldDescriptorType, Object> m16046b = m16046b(i);
                if (((dnb) m16046b.getKey()).m16361d()) {
                    m16046b.setValue(Collections.unmodifiableList((List) m16046b.getValue()));
                }
            }
            Iterator it2 = m16041d().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (((dnb) entry.getKey()).m16361d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo16053a();
    }
}
