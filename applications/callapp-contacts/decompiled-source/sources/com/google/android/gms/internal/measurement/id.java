package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/id.class */
final class id extends ik {
    /* JADX INFO: Access modifiers changed from: package-private */
    public id(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.ik
    public final void a() {
        if (!b()) {
            for (int i = 0; i < c(); i++) {
                Map.Entry a2 = a(i);
                if (((gc) a2.getKey()).c()) {
                    a2.setValue(Collections.unmodifiableList((List) a2.getValue()));
                }
            }
            for (Map.Entry entry : d()) {
                if (((gc) entry.getKey()).c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
