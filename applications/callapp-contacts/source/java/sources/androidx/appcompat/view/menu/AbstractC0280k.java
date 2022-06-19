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
public abstract class AbstractC0280k implements AdapterView.OnItemClickListener, AbstractC0283m, AbstractC0288p {

    /* renamed from: g */
    Rect f955g;

    /* renamed from: a */
    public static int m46061a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
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

    /* renamed from: a */
    public static C0267f m46062a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0267f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0267f) listAdapter;
    }

    /* renamed from: b */
    public static boolean m46060b(C0268g c0268g) {
        boolean z;
        int size = c0268g.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = c0268g.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    public abstract void mo46050a(int i);

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10549a(Context context, C0268g c0268g) {
    }

    /* renamed from: a */
    public abstract void mo46049a(View view);

    /* renamed from: a */
    public abstract void mo46048a(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: a */
    public abstract void mo46047a(C0268g c0268g);

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final int mo10540b() {
        return 0;
    }

    /* renamed from: b */
    public abstract void mo46046b(int i);

    /* renamed from: b */
    public abstract void mo46045b(boolean z);

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final boolean mo10537b(C0272i c0272i) {
        return false;
    }

    /* renamed from: c */
    public abstract void mo46044c(int i);

    /* renamed from: c */
    public abstract void mo46043c(boolean z);

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: c */
    public final boolean mo10533c(C0272i c0272i) {
        return false;
    }

    /* renamed from: h */
    protected boolean mo46059h() {
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m46062a(listAdapter).f875a.m46102a((MenuItem) listAdapter.getItem(i), this, mo46059h() ? 0 : 4);
    }
}
