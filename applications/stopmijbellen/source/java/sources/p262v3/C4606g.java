package p262v3;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
/* renamed from: v3.g */
/* loaded from: classes-dex2jar.jar:v3/g.class */
public class C4606g extends C0136e {
    public C4606g(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.C0136e, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0140g c0140g = (C0140g) m8714a(i, i2, i3, charSequence);
        C4620i c4620i = new C4620i(this.f427a, this, c0140g);
        c0140g.f472o = c4620i;
        c4620i.setHeaderTitle(c0140g.f462e);
        return c4620i;
    }
}
