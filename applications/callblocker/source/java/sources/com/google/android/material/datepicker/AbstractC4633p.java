package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;
/* renamed from: com.google.android.material.datepicker.p */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/p.class */
public abstract class AbstractC4633p<S> extends Fragment {

    /* renamed from: e */
    protected final LinkedHashSet<AbstractC4632o<S>> f20140e = new LinkedHashSet<>();

    /* renamed from: a */
    public boolean m3116a(AbstractC4632o<S> abstractC4632o) {
        return this.f20140e.add(abstractC4632o);
    }

    /* renamed from: au */
    public void m3115au() {
        this.f20140e.clear();
    }
}
