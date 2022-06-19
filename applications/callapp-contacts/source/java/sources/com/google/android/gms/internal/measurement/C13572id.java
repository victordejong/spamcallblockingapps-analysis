package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.id */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/id.class */
public final class C13572id extends C13579ik {
    public C13572id(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.C13579ik
    /* renamed from: a */
    public final void mo12588a() {
        if (!m12582b()) {
            for (int i = 0; i < m12579c(); i++) {
                Map.Entry m12587a = m12587a(i);
                if (((AbstractC13517gc) m12587a.getKey()).m12790c()) {
                    m12587a.setValue(Collections.unmodifiableList((List) m12587a.getValue()));
                }
            }
            for (Map.Entry entry : m12577d()) {
                if (((AbstractC13517gc) entry.getKey()).m12790c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo12588a();
    }
}
