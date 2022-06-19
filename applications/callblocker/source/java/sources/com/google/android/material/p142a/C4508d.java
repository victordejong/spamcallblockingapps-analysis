package com.google.android.material.p142a;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.C4492a;
/* renamed from: com.google.android.material.a.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/d.class */
public class C4508d extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f19575a = new C4508d("childrenAlpha");

    private C4508d(String str) {
        super(Float.class, str);
    }

    /* renamed from: a */
    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(C4492a.C4498f.mtrl_internal_children_alpha_tag);
        if (f == null) {
            f = Float.valueOf(1.0f);
        }
        return f;
    }

    /* renamed from: a */
    public void set(ViewGroup viewGroup, Float f) {
        float floatValue = f.floatValue();
        viewGroup.setTag(C4492a.C4498f.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setAlpha(floatValue);
        }
    }
}
