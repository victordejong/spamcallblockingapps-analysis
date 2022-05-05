package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuPopup.class */
public abstract class MenuPopup implements ShowableListMenu, MenuPresenter, AdapterView.OnItemClickListener {

    /* renamed from: f */
    private Rect f703f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public static MenuAdapter m21816A(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (MenuAdapter) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (MenuAdapter) listAdapter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: q */
    public static int m21813q(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        View view = null;
        int i3 = 0;
        int i4 = 0;
        ViewGroup viewGroup2 = viewGroup;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            i4 = i4;
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            ViewGroup viewGroup3 = viewGroup2;
            if (viewGroup2 == null) {
                viewGroup3 = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, viewGroup3);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            i3 = i3;
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
            i2++;
            viewGroup2 = viewGroup3;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: z */
    public static boolean m21811z(MenuBuilder menuBuilder) {
        int size = menuBuilder.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = menuBuilder.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: f */
    public boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: g */
    public boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: i */
    public void mo9518i(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
    }

    /* renamed from: n */
    public abstract void mo21796n(MenuBuilder menuBuilder);

    /* renamed from: o */
    protected boolean mo21815o() {
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m21816A(listAdapter).f624f.m21886O((MenuItem) listAdapter.getItem(i), this, mo21815o() ? 0 : 4);
    }

    /* renamed from: p */
    public Rect m21814p() {
        return this.f703f;
    }

    /* renamed from: r */
    public abstract void mo21795r(View view);

    /* renamed from: s */
    public void m21812s(Rect rect) {
        this.f703f = rect;
    }

    /* renamed from: t */
    public abstract void mo21794t(boolean z);

    /* renamed from: u */
    public abstract void mo21793u(int i);

    /* renamed from: v */
    public abstract void mo21792v(int i);

    /* renamed from: w */
    public abstract void mo21791w(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: x */
    public abstract void mo21790x(boolean z);

    /* renamed from: y */
    public abstract void mo21789y(int i);
}
