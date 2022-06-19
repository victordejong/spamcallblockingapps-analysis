package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;
import androidx.core.C0707a;
/* renamed from: androidx.core.view.w */
/* loaded from: classes-dex2jar.jar:androidx/core/view/w.class */
public final class C0938w {
    private C0938w() {
    }

    /* renamed from: a */
    public static boolean m44057a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(C0707a.C0710c.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C0926v.m44083p(viewGroup) == null) ? false : true;
    }
}
