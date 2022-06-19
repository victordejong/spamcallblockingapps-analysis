package com.google.android.material.floatingactionbutton;

import android.util.Property;
import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d.class */
public final class ExtendedFloatingActionButton$d extends Property<View, Float> {
    public ExtendedFloatingActionButton$d(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public Float get(View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        return Float.valueOf(view.getPaddingStart());
    }

    @Override // android.util.Property
    public void set(View view, Float f) {
        View view2 = view;
        int intValue = f.intValue();
        int paddingTop = view2.getPaddingTop();
        AtomicInteger atomicInteger = C26614s.f74505a;
        view2.setPaddingRelative(intValue, paddingTop, view2.getPaddingEnd(), view2.getPaddingBottom());
    }
}
