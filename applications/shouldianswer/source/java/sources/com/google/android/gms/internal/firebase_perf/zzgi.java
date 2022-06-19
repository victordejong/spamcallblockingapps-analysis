package com.google.android.gms.internal.firebase_perf;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgi.class */
public final class zzgi extends zzgj<FieldDescriptorType, Object> {
    public zzgi(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzgj
    public final void zzfk() {
        if (!isImmutable()) {
            for (int i = 0; i < zzhz(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzau = zzau(i);
                if (((zzeb) zzau.getKey()).zzgf()) {
                    zzau.setValue(Collections.unmodifiableList((List) zzau.getValue()));
                }
            }
            Iterator it = zzia().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzeb) entry.getKey()).zzgf()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzfk();
    }
}
