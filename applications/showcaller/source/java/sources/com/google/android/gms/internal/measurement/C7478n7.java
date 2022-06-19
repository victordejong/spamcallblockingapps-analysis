package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.n7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/n7.class */
public final class C7478n7 extends C7572u7 {
    public C7478n7(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.C7572u7
    /* renamed from: a */
    public final void mo6878a() {
        if (!m6877b()) {
            for (int i = 0; i < m6876c(); i++) {
                Map.Entry m6875d = m6875d(i);
                if (((AbstractC7504p5) m6875d.getKey()).m7025c()) {
                    m6875d.setValue(Collections.unmodifiableList((List) m6875d.getValue()));
                }
            }
            for (Map.Entry entry : m6874e()) {
                if (((AbstractC7504p5) entry.getKey()).m7025c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo6878a();
    }
}
