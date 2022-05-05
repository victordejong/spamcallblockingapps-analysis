package p081h.p203i.p204a.p294f.p308n;

import android.content.Context;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/f.class */
public class C9226f extends MenuBuilder {
    public C9226f(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) addInternal(i, i2, i3, charSequence);
        C9239h hVar = new C9239h(getContext(), this, menuItemImpl);
        menuItemImpl.setSubMenu(hVar);
        return hVar;
    }
}
