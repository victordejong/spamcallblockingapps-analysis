package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenn.class */
public final class zzenn extends zzeno<FieldDescriptorType, Object> {
    public zzenn(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeno
    public final void zzbgf() {
        if (!isImmutable()) {
            for (int i = 0; i < zzbkq(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzhu = zzhu(i);
                if (((zzekw) zzhu.getKey()).zzbif()) {
                    zzhu.setValue(Collections.unmodifiableList((List) zzhu.getValue()));
                }
            }
            Iterator it = zzbkr().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzekw) entry.getKey()).zzbif()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzbgf();
    }
}
