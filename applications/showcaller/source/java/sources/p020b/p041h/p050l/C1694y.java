package p020b.p041h.p050l;

import android.os.Build;
import android.view.ViewGroup;
import p020b.p041h.C1520c;
/* renamed from: b.h.l.y */
/* loaded from: classes-dex2jar.jar:b/h/l/y.class */
public final class C1694y {
    /* renamed from: a */
    public static boolean m29213a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(C1520c.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C1679w.m29326M(viewGroup) == null) ? false : true;
    }
}
