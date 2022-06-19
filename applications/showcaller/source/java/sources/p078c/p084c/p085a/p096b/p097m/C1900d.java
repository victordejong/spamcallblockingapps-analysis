package p078c.p084c.p085a.p096b.p097m;

import android.util.Property;
import android.view.ViewGroup;
import p078c.p084c.p085a.p096b.C1890f;
/* renamed from: c.c.a.b.m.d */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/d.class */
public class C1900d extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f6819a = new C1900d("childrenAlpha");

    private C1900d(String str) {
        super(Float.class, str);
    }

    /* renamed from: a */
    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(C1890f.mtrl_internal_children_alpha_tag);
        return f != null ? f : Float.valueOf(1.0f);
    }

    /* renamed from: b */
    public void set(ViewGroup viewGroup, Float f) {
        float floatValue = f.floatValue();
        viewGroup.setTag(C1890f.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setAlpha(floatValue);
        }
    }
}
