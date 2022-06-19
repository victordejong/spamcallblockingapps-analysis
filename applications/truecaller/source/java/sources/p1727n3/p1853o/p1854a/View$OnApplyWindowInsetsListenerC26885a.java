package p1727n3.p1853o.p1854a;

import android.view.View;
import android.view.WindowInsets;
import androidx.drawerlayout.widget.DrawerLayout;
/* renamed from: n3.o.a.a */
/* loaded from: classes-dex2jar.jar:n3/o/a/a.class */
public class View$OnApplyWindowInsetsListenerC26885a implements View.OnApplyWindowInsetsListener {
    public View$OnApplyWindowInsetsListenerC26885a(DrawerLayout drawerLayout) {
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        DrawerLayout drawerLayout = (DrawerLayout) view;
        boolean z = windowInsets.getSystemWindowInsetTop() > 0;
        drawerLayout.f753x = windowInsets;
        drawerLayout.f754y = z;
        drawerLayout.setWillNotDraw(!z && drawerLayout.getBackground() == null);
        drawerLayout.requestLayout();
        return windowInsets.consumeSystemWindowInsets();
    }
}
