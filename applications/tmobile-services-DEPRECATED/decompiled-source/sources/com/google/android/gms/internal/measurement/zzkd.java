package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkd.class */
final class zzkd extends zzke<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkd(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzke
    /* renamed from: g */
    public final void mo12153g() {
        if (!m12149k()) {
            for (int i = 0; i < m12148l(); i++) {
                Map.Entry<FieldDescriptorType, Object> j = m12150j(i);
                if (((zzhr) j.getKey()).zzd()) {
                    j.setValue(Collections.unmodifiableList((List) j.getValue()));
                }
            }
            Iterator it = m12145o().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzhr) entry.getKey()).zzd()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo12153g();
    }
}
