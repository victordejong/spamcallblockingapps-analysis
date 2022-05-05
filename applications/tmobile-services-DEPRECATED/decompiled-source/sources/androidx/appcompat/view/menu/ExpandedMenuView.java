package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements MenuBuilder.ItemInvoker, MenuView, AdapterView.OnItemClickListener {

    /* renamed from: h */
    private static final int[] f592h = {16842964, 16843049};

    /* renamed from: f */
    private MenuBuilder f593f;

    /* renamed from: g */
    private int f594g;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, f592h, i, 0);
        if (v.m21247s(0)) {
            setBackgroundDrawable(v.m21259g(0));
        }
        if (v.m21247s(1)) {
            setDivider(v.m21259g(1));
        }
        v.m21243w();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    /* renamed from: a */
    public boolean mo21701a(MenuItemImpl menuItemImpl) {
        return this.f593f.m21887N(menuItemImpl, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuView
    /* renamed from: b */
    public void mo9485b(MenuBuilder menuBuilder) {
        this.f593f = menuBuilder;
    }

    public int getWindowAnimations() {
        return this.f594g;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo21701a((MenuItemImpl) getAdapter().getItem(i));
    }
}
