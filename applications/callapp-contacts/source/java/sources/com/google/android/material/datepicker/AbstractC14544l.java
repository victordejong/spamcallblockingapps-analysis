package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;
/* renamed from: com.google.android.material.datepicker.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/l.class */
public abstract class AbstractC14544l<S> extends Fragment {

    /* renamed from: j */
    protected final LinkedHashSet<AbstractC14543k<S>> f53058j = new LinkedHashSet<>();

    /* renamed from: a */
    public boolean mo10802a(AbstractC14543k<S> abstractC14543k) {
        return this.f53058j.add(abstractC14543k);
    }

    /* renamed from: b */
    public final void m10801b() {
        this.f53058j.clear();
    }
}
