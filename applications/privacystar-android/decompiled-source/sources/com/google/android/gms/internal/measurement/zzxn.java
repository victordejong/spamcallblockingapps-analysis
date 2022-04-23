package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxn.class */
final class zzxn extends zzxm<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxn(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzxm
    public final void zzsm() {
        if (!isImmutable()) {
            for (int i = 0; i < zzxw(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzbu = zzbu(i);
                if (((zzvf) zzbu.getKey()).zzvy()) {
                    zzbu.setValue(Collections.unmodifiableList((List) zzbu.getValue()));
                }
            }
            Iterator it = zzxx().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzvf) entry.getKey()).zzvy()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzsm();
    }
}
