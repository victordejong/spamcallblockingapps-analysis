package com.google.android.material.p364a;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.C14376a;
/* renamed from: com.google.android.material.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/d.class */
public final class C14392d extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f52374a = new C14392d("childrenAlpha");

    private C14392d(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(C14376a.C14382f.mtrl_internal_children_alpha_tag);
        return f != null ? f : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(ViewGroup viewGroup, Float f) {
        ViewGroup viewGroup2 = viewGroup;
        float floatValue = f.floatValue();
        viewGroup2.setTag(C14376a.C14382f.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup2.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup2.getChildAt(i).setAlpha(floatValue);
        }
    }
}
