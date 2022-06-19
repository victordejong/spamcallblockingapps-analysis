package androidx.core.p026h;

import android.os.Build;
import android.view.ViewGroup;
import androidx.core.C0433a;
/* renamed from: androidx.core.h.w */
/* loaded from: classes-dex2jar.jar:androidx/core/h/w.class */
public final class C0605w {
    /* renamed from: a */
    public static boolean m20265a(ViewGroup viewGroup) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21) {
            z = viewGroup.isTransitionGroup();
        } else {
            Boolean bool = (Boolean) viewGroup.getTag(C0433a.C0436c.tag_transition_group);
            z = ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C0595u.m20309o(viewGroup) == null) ? false : true;
        }
        return z;
    }
}
