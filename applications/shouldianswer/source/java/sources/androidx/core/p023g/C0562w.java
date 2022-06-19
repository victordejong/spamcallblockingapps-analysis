package androidx.core.p023g;

import android.os.Build;
import android.view.ViewGroup;
import androidx.core.C0404a;
/* renamed from: androidx.core.g.w */
/* loaded from: classes-dex2jar.jar:androidx/core/g/w.class */
public final class C0562w {
    /* renamed from: a */
    public static boolean m6198a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(C0404a.C0407c.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C0552u.m6230q(viewGroup) == null) ? false : true;
    }
}
