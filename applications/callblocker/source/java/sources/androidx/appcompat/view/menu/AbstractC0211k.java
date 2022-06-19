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
/* renamed from: androidx.appcompat.view.menu.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k.class */
public abstract class AbstractC0211k implements AdapterView.OnItemClickListener, AbstractC0214m, AbstractC0219p {

    /* renamed from: a */
    private Rect f845a;

    /* renamed from: a */
    public static int m21815a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        ViewGroup viewGroup2 = viewGroup;
        View view = null;
        while (true) {
            if (i2 >= count) {
                i = i4;
                break;
            }
            int itemViewType = listAdapter.getItemViewType(i2);
            int i5 = i3;
            if (itemViewType != i3) {
                i5 = itemViewType;
                view = null;
            }
            FrameLayout frameLayout = viewGroup2;
            if (viewGroup2 == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                break;
            }
            if (measuredWidth > i4) {
                i4 = measuredWidth;
            }
            i2++;
            viewGroup2 = frameLayout;
            i3 = i5;
        }
        return i;
    }

    /* renamed from: a */
    public static C0198f m21816a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0198f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0198f) listAdapter;
    }

    /* renamed from: b */
    public static boolean m21814b(C0199g c0199g) {
        boolean z;
        int size = c0199g.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = c0199g.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    public abstract void mo21798a(int i);

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3589a(Context context, C0199g c0199g) {
    }

    /* renamed from: a */
    public void m21817a(Rect rect) {
        this.f845a = rect;
    }

    /* renamed from: a */
    public abstract void mo21797a(View view);

    /* renamed from: a */
    public abstract void mo21796a(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: a */
    public abstract void mo21795a(C0199g c0199g);

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3587a(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    /* renamed from: b */
    public abstract void mo21794b(int i);

    /* renamed from: b */
    public abstract void mo21793b(boolean z);

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3580b(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: c */
    public int mo3578c() {
        return 0;
    }

    /* renamed from: c */
    public abstract void mo21792c(int i);

    /* renamed from: c */
    public abstract void mo21791c(boolean z);

    /* renamed from: h */
    protected boolean mo21813h() {
        return true;
    }

    /* renamed from: i */
    public Rect m21812i() {
        return this.f845a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m21816a(listAdapter).f765a.m21887a((MenuItem) listAdapter.getItem(i), this, mo21813h() ? 0 : 4);
    }
}
