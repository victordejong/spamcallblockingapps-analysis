package p012b.p042i.p054p;

import android.os.Build;
import android.view.ViewGroup;
import p012b.p042i.C0834d;
/* renamed from: b.i.p.w */
/* loaded from: classes-dex2jar.jar:b/i/p/w.class */
public final class C1015w {
    /* renamed from: a */
    public static boolean m35173a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(C0834d.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C1002u.m35203s(viewGroup) == null) ? false : true;
    }
}
