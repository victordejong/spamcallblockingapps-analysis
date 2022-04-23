package android.support.design.animation;

import android.support.design.C0089R;
import android.util.Property;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:android/support/design/animation/ChildrenAlphaProperty.class */
public class ChildrenAlphaProperty extends Property<ViewGroup, Float> {
    public static final Property<ViewGroup, Float> CHILDREN_ALPHA = new ChildrenAlphaProperty("childrenAlpha");

    private ChildrenAlphaProperty(String str) {
        super(Float.class, str);
    }

    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(C0089R.C0092id.mtrl_internal_children_alpha_tag);
        return f != null ? f : Float.valueOf(1.0f);
    }

    public void set(ViewGroup viewGroup, Float f) {
        float floatValue = f.floatValue();
        viewGroup.setTag(C0089R.C0092id.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setAlpha(floatValue);
        }
    }
}
