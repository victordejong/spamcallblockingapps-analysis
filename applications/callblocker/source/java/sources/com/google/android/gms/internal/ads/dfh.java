package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfh.class */
public final class dfh extends dfe<FieldDescriptorType, Object> {
    public dfh(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.dfe
    /* renamed from: a */
    public final void mo9763a() {
        if (!m9831b()) {
            for (int i = 0; i < m9828c(); i++) {
                Map.Entry<FieldDescriptorType, Object> m9830b = m9830b(i);
                if (((dcn) m9830b.getKey()).mo10057d()) {
                    m9830b.setValue(Collections.unmodifiableList((List) m9830b.getValue()));
                }
            }
            Iterator it = m9825d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((dcn) entry.getKey()).mo10057d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo9763a();
    }
}
