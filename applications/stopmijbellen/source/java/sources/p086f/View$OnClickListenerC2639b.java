package p086f;

import android.support.p012v4.media.C0082b;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.Objects;
/* renamed from: f.b */
/* loaded from: classes-dex2jar.jar:f/b.class */
public class View$OnClickListenerC2639b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C2640c f9070a;

    public View$OnClickListenerC2639b(C2640c c2640c) {
        this.f9070a = c2640c;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C2640c c2640c = this.f9070a;
        if (!c2640c.f9075e) {
            Objects.requireNonNull(c2640c);
            return;
        }
        int m8282h = c2640c.f9072b.m8282h(8388611);
        DrawerLayout drawerLayout = c2640c.f9072b;
        View m8285e = drawerLayout.m8285e(8388611);
        if ((m8285e != null ? drawerLayout.m8273q(m8285e) : false) && m8282h != 2) {
            c2640c.f9072b.m8288b(8388611);
        } else if (m8282h == 1) {
        } else {
            DrawerLayout drawerLayout2 = c2640c.f9072b;
            View m8285e2 = drawerLayout2.m8285e(8388611);
            if (m8285e2 != null) {
                drawerLayout2.m8271s(m8285e2, true);
                return;
            }
            StringBuilder m8752j = C0082b.m8752j("No drawer view found with gravity ");
            m8752j.append(DrawerLayout.m8279k(8388611));
            throw new IllegalArgumentException(m8752j.toString());
        }
    }
}
