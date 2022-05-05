package com.google.android.gms.internal.icing;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfy.class */
final class zzfy extends zzfz<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfy(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.icing.zzfz
    /* renamed from: i */
    public final void mo13636i() {
        if (!m13642a()) {
            for (int i = 0; i < m13630o(); i++) {
                Map.Entry<FieldDescriptorType, Object> j = m13635j(i);
                if (((zzdu) j.getKey()).mo13813s()) {
                    j.setValue(Collections.unmodifiableList((List) j.getValue()));
                }
            }
            Iterator it = m13629p().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzdu) entry.getKey()).mo13813s()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo13636i();
    }
}
