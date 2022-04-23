package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/l.class */
public abstract class l<S> extends Fragment {
    protected final LinkedHashSet<k<S>> j = new LinkedHashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(k<S> kVar) {
        return this.j.add(kVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.j.clear();
    }
}
