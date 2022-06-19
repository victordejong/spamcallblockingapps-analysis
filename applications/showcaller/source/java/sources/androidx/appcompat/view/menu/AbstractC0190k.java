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
public abstract class AbstractC0190k implements AbstractC0198p, AbstractC0193m, AdapterView.OnItemClickListener {

    /* renamed from: d */
    private Rect f703d;

    /* renamed from: A */
    public static C0177f m35335A(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0177f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0177f) listAdapter;
    }

    /* renamed from: q */
    public static int m35332q(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i3 = 0;
        int i4 = 0;
        ViewGroup viewGroup2 = viewGroup;
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
            i3 = i6;
            i4 = i5;
            viewGroup2 = frameLayout;
        }
        return i3;
    }

    /* renamed from: z */
    public static boolean m35330z(C0178g c0178g) {
        boolean z;
        int size = c0178g.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = c0178g.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: e */
    public boolean mo4534e(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: f */
    public boolean mo4533f(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: i */
    public void mo4531i(Context context, C0178g c0178g) {
    }

    /* renamed from: n */
    public abstract void mo35314n(C0178g c0178g);

    /* renamed from: o */
    protected boolean mo35334o() {
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m35335A(listAdapter).f623d.m35405O((MenuItem) listAdapter.getItem(i), this, mo35334o() ? 0 : 4);
    }

    /* renamed from: p */
    public Rect m35333p() {
        return this.f703d;
    }

    /* renamed from: r */
    public abstract void mo35313r(View view);

    /* renamed from: s */
    public void m35331s(Rect rect) {
        this.f703d = rect;
    }

    /* renamed from: t */
    public abstract void mo35312t(boolean z);

    /* renamed from: u */
    public abstract void mo35311u(int i);

    /* renamed from: v */
    public abstract void mo35310v(int i);

    /* renamed from: w */
    public abstract void mo35309w(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: x */
    public abstract void mo35308x(boolean z);

    /* renamed from: y */
    public abstract void mo35307y(int i);
}
