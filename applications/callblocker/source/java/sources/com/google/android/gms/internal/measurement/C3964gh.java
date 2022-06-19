package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.gh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gh.class */
public final class C3964gh extends C3965gi<FieldDescriptorType, Object> {
    public C3964gh(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.C3965gi
    /* renamed from: a */
    public final void mo5363a() {
        if (!m5357b()) {
            for (int i = 0; i < m5354c(); i++) {
                Map.Entry<FieldDescriptorType, Object> m5356b = m5356b(i);
                if (((AbstractC3894dy) m5356b.getKey()).mo5620d()) {
                    m5356b.setValue(Collections.unmodifiableList((List) m5356b.getValue()));
                }
            }
            Iterator it = m5351d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((AbstractC3894dy) entry.getKey()).mo5620d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo5363a();
    }
}
