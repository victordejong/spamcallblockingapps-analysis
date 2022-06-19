package p1727n3.p1734b.p1741e.p1742i;

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
/* renamed from: n3.b.e.i.k */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/k.class */
public abstract class AbstractC25480k implements AbstractC25488p, AbstractC25483m, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Rect f71283a;

    /* renamed from: n */
    public static int m3440n(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        C25468f c25468f = (C25468f) listAdapter;
        int count = c25468f.getCount();
        int i3 = 0;
        int i4 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        while (true) {
            View view2 = view;
            if (i2 < count) {
                int itemViewType = c25468f.getItemViewType(i2);
                int i5 = i4;
                View view3 = view2;
                if (itemViewType != i4) {
                    view3 = null;
                    i5 = itemViewType;
                }
                FrameLayout frameLayout2 = frameLayout;
                if (frameLayout == null) {
                    frameLayout2 = new FrameLayout(context);
                }
                View view4 = c25468f.getView(i2, view3, frameLayout2);
                view4.measure(makeMeasureSpec, makeMeasureSpec2);
                int measuredWidth = view4.getMeasuredWidth();
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
                frameLayout = frameLayout2;
                view = view4;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: v */
    public static boolean m3432v(C25469g c25469g) {
        boolean z;
        int size = c25469g.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = c25469g.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: b */
    public boolean mo3422b(C25469g c25469g, C25473i c25473i) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: f */
    public boolean mo3418f(C25469g c25469g, C25473i c25473i) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: g */
    public void mo3417g(Context context, C25469g c25469g) {
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    public int getId() {
        return 0;
    }

    /* renamed from: l */
    public abstract void m3442l(C25469g c25469g);

    /* renamed from: m */
    public boolean m3441m() {
        return true;
    }

    /* renamed from: o */
    public abstract void m3439o(View view);

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (C25468f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C25468f) listAdapter).f71209a.m3465s((MenuItem) listAdapter.getItem(i), this, m3441m() ? 0 : 4);
    }

    /* renamed from: p */
    public abstract void m3438p(boolean z);

    /* renamed from: q */
    public abstract void m3437q(int i);

    /* renamed from: r */
    public abstract void m3436r(int i);

    /* renamed from: s */
    public abstract void m3435s(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: t */
    public abstract void m3434t(boolean z);

    /* renamed from: u */
    public abstract void m3433u(int i);
}
