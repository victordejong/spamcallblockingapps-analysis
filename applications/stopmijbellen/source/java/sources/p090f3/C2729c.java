package p090f3;

import android.util.Property;
import android.view.ViewGroup;
/* renamed from: f3.c */
/* loaded from: classes-dex2jar.jar:f3/c.class */
public class C2729c extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f9378a = new C2729c("childrenAlpha");

    public C2729c(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(2131296826);
        if (f == null) {
            f = Float.valueOf(1.0f);
        }
        return f;
    }

    @Override // android.util.Property
    public void set(ViewGroup viewGroup, Float f) {
        ViewGroup viewGroup2 = viewGroup;
        float floatValue = f.floatValue();
        viewGroup2.setTag(2131296826, Float.valueOf(floatValue));
        int childCount = viewGroup2.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup2.getChildAt(i).setAlpha(floatValue);
        }
    }
}
