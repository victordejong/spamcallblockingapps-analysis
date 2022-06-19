package com.google.android.gms.internal.firebase_remote_config;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjj.class */
public final class zzjj extends zzjk<FieldDescriptorType, Object> {
    public zzjj(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjk
    public final void zzes() {
        if (!isImmutable()) {
            for (int i = 0; i < zzir(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzbm = zzbm(i);
                if (((zzhc) zzbm.getKey()).zzgq()) {
                    zzbm.setValue(Collections.unmodifiableList((List) zzbm.getValue()));
                }
            }
            Iterator it = zzis().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzhc) entry.getKey()).zzgq()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzes();
    }
}
