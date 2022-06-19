package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;
/* renamed from: com.google.android.material.datepicker.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/l.class */
abstract class AbstractC8119l<S> extends Fragment {

    /* renamed from: e0 */
    protected final LinkedHashSet<AbstractC8118k<S>> f36696e0 = new LinkedHashSet<>();

    /* renamed from: a2 */
    public boolean mo4862a2(AbstractC8118k<S> abstractC8118k) {
        return this.f36696e0.add(abstractC8118k);
    }

    /* renamed from: b2 */
    public void m4861b2() {
        this.f36696e0.clear();
    }
}
