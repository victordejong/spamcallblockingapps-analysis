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
public abstract class AbstractC0194k implements AdapterView.OnItemClickListener, AbstractC0197m, AbstractC0202p {

    /* renamed from: a */
    private Rect f766a;

    /* renamed from: a */
    public static int m7534a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup viewGroup2 = viewGroup;
        int i3 = 0;
        int i4 = 0;
        View view = null;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            int i5 = i4;
            if (itemViewType != i4) {
                view = null;
                i5 = itemViewType;
            }
            FrameLayout frameLayout = viewGroup2;
            if (viewGroup2 == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            int i6 = i3;
            if (measuredWidth > i3) {
                i6 = measuredWidth;
            }
            i2++;
            i4 = i5;
            viewGroup2 = frameLayout;
            i3 = i6;
        }
        return i3;
    }

    /* renamed from: a */
    public static C0181f m7535a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0181f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0181f) listAdapter;
    }

    /* renamed from: b */
    public static boolean m7533b(C0182g c0182g) {
        boolean z;
        int size = c0182g.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = c0182g.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    public abstract void mo7517a(int i);

    /* renamed from: a */
    public void m7536a(Rect rect) {
        this.f766a = rect;
    }

    /* renamed from: a */
    public abstract void mo7516a(View view);

    /* renamed from: a */
    public abstract void mo7515a(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: a */
    public abstract void mo7514a(C0182g c0182g);

    /* renamed from: a */
    public abstract void mo7513a(boolean z);

    /* renamed from: b */
    public abstract void mo7512b(int i);

    /* renamed from: b */
    public abstract void mo7511b(boolean z);

    /* renamed from: c */
    public abstract void mo7510c(int i);

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean collapseItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    /* renamed from: e */
    protected boolean mo7532e() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean expandItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    /* renamed from: f */
    public Rect m7531f() {
        return this.f766a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void initForMenu(Context context, C0182g c0182g) {
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m7535a(listAdapter).f713a.performItemAction((MenuItem) listAdapter.getItem(i), this, mo7532e() ? 0 : 4);
    }
}
