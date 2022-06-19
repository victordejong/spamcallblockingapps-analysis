package com.google.android.material.floatingactionbutton;

import android.util.Property;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b.class */
public final class ExtendedFloatingActionButton$b extends Property<View, Float> {
    public ExtendedFloatingActionButton$b(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public Float get(View view) {
        return Float.valueOf(view.getLayoutParams().width);
    }

    @Override // android.util.Property
    public void set(View view, Float f) {
        View view2 = view;
        view2.getLayoutParams().width = f.intValue();
        view2.requestLayout();
    }
}
