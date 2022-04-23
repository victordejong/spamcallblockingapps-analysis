package androidx.appcompat.view.menu;

import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuView.class */
public interface MenuView {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuView$ItemView.class */
    public interface ItemView {
        /* renamed from: d */
        boolean mo9539d();

        /* renamed from: e */
        void mo9538e(MenuItemImpl menuItemImpl, int i);

        MenuItemImpl getItemData();
    }

    /* renamed from: b */
    void mo9485b(MenuBuilder menuBuilder);
}
