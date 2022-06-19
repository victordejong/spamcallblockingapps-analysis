package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gg3.class */
final class gg3 extends og3 {
    public gg3(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.og3
    /* renamed from: a */
    public final void mo12671a() {
        if (!m12668d()) {
            for (int i = 0; i < m12667e(); i++) {
                Map.Entry m12666f = m12666f(i);
                if (((zd3) m12666f.getKey()).m8429c()) {
                    m12666f.setValue(Collections.unmodifiableList((List) m12666f.getValue()));
                }
            }
            for (Map.Entry entry : m12665g()) {
                if (((zd3) entry.getKey()).m8429c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo12671a();
    }
}
