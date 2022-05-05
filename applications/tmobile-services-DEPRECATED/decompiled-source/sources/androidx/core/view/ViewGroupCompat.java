package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.C0189R;
/* loaded from: classes-dex2jar.jar:androidx/core/view/ViewGroupCompat.class */
public final class ViewGroupCompat {
    private ViewGroupCompat() {
    }

    /* renamed from: a */
    public static boolean m19124a(@NonNull ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(C0189R.C0192id.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && ViewCompat.m19227J(viewGroup) == null) ? false : true;
    }
}
