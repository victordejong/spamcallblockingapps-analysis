package p193e.p1577m.p1578a.p1677g.p1678a;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.C2080R;
/* renamed from: e.m.a.g.a.c */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/c.class */
public class C25158c extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f70403a = new C25158c("childrenAlpha");

    public C25158c(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(C2080R.C2082id.mtrl_internal_children_alpha_tag);
        if (f == null) {
            f = Float.valueOf(1.0f);
        }
        return f;
    }

    @Override // android.util.Property
    public void set(ViewGroup viewGroup, Float f) {
        ViewGroup viewGroup2 = viewGroup;
        float floatValue = f.floatValue();
        viewGroup2.setTag(C2080R.C2082id.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup2.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup2.getChildAt(i).setAlpha(floatValue);
        }
    }
}
