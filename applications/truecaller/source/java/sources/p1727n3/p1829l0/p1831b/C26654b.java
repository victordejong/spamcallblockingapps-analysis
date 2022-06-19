package p1727n3.p1829l0.p1831b;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
/* renamed from: n3.l0.b.b */
/* loaded from: classes-dex2jar.jar:n3/l0/b/b.class */
public final class C26654b {

    /* renamed from: b */
    public static final ViewGroup.MarginLayoutParams f74594b;

    /* renamed from: a */
    public LinearLayoutManager f74595a;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f74594b = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public C26654b(LinearLayoutManager linearLayoutManager) {
        this.f74595a = linearLayoutManager;
    }

    /* renamed from: a */
    public static boolean m1522a(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m1522a(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
