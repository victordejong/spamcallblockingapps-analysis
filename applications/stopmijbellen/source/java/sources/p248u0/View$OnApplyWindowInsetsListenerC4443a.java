package p248u0;

import android.view.View;
import android.view.WindowInsets;
import androidx.drawerlayout.widget.DrawerLayout;
/* renamed from: u0.a */
/* loaded from: classes-dex2jar.jar:u0/a.class */
public class View$OnApplyWindowInsetsListenerC4443a implements View.OnApplyWindowInsetsListener {
    public View$OnApplyWindowInsetsListenerC4443a(DrawerLayout drawerLayout) {
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        DrawerLayout drawerLayout = (DrawerLayout) view;
        boolean z = windowInsets.getSystemWindowInsetTop() > 0;
        drawerLayout.f1554x = windowInsets;
        drawerLayout.f1555y = z;
        drawerLayout.setWillNotDraw(!z && drawerLayout.getBackground() == null);
        drawerLayout.requestLayout();
        return windowInsets.consumeSystemWindowInsets();
    }
}
