package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;
import androidx.core.a;
/* loaded from: classes-dex2jar.jar:androidx/core/view/w.class */
public final class w {
    private w() {
    }

    public static boolean a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(a.c.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && v.p(viewGroup) == null) ? false : true;
    }
}
