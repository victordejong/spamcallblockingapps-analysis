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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k.class */
public abstract class k implements AdapterView.OnItemClickListener, m, p {
    Rect g;

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
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
    public static f a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (f) listAdapter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean b(g gVar) {
        int size = gVar.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = gVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    public abstract void a(int i);

    @Override // androidx.appcompat.view.menu.m
    public final void a(Context context, g gVar) {
    }

    public abstract void a(View view);

    public abstract void a(PopupWindow.OnDismissListener onDismissListener);

    public abstract void a(g gVar);

    @Override // androidx.appcompat.view.menu.m
    public final int b() {
        return 0;
    }

    public abstract void b(int i);

    public abstract void b(boolean z);

    @Override // androidx.appcompat.view.menu.m
    public final boolean b(i iVar) {
        return false;
    }

    public abstract void c(int i);

    public abstract void c(boolean z);

    @Override // androidx.appcompat.view.menu.m
    public final boolean c(i iVar) {
        return false;
    }

    protected boolean h() {
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        a(listAdapter).f804a.a((MenuItem) listAdapter.getItem(i), this, h() ? 0 : 4);
    }
}
