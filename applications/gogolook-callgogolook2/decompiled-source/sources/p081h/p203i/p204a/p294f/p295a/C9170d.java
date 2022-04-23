package p081h.p203i.p204a.p294f.p295a;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.R$id;
/* renamed from: h.i.a.f.a.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/d.class */
public class C9170d extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f20885a = new C9170d("childrenAlpha");

    public C9170d(String str) {
        super(Float.class, str);
    }

    /* renamed from: a */
    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(R$id.mtrl_internal_children_alpha_tag);
        return f != null ? f : Float.valueOf(1.0f);
    }

    /* renamed from: a */
    public void set(ViewGroup viewGroup, Float f) {
        float floatValue = f.floatValue();
        viewGroup.setTag(R$id.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setAlpha(floatValue);
        }
    }
}
