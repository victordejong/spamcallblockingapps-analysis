package com.google.android.material.floatingactionbutton;

import android.util.Property;
import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e.class */
public final class ExtendedFloatingActionButton$e extends Property<View, Float> {
    public ExtendedFloatingActionButton$e(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public Float get(View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        return Float.valueOf(view.getPaddingEnd());
    }

    @Override // android.util.Property
    public void set(View view, Float f) {
        View view2 = view;
        AtomicInteger atomicInteger = C26614s.f74505a;
        view2.setPaddingRelative(view2.getPaddingStart(), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
    }
}
