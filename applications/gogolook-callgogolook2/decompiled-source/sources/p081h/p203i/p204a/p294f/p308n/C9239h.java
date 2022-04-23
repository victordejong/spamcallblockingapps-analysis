package p081h.p203i.p204a.p294f.p308n;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/h.class */
public class C9239h extends SubMenuBuilder {
    public C9239h(Context context, C9226f fVar, MenuItemImpl menuItemImpl) {
        super(context, fVar, menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public void onItemsChanged(boolean z) {
        super.onItemsChanged(z);
        ((MenuBuilder) getParentMenu()).onItemsChanged(z);
    }
}
