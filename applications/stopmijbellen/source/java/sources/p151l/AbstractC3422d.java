package p151l;

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
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0135d;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.view.menu.View$OnKeyListenerC0127b;
/* renamed from: l.d */
/* loaded from: classes-dex2jar.jar:l/d.class */
public abstract class AbstractC3422d implements AbstractC3424f, AbstractC0144i, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Rect f11482a;

    /* renamed from: n */
    public static int m2314n(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        C0135d c0135d = (C0135d) listAdapter;
        int count = c0135d.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i3 = 0;
        int i4 = 0;
        while (i2 < count) {
            int itemViewType = c0135d.getItemViewType(i2);
            int i5 = i4;
            if (itemViewType != i4) {
                view = null;
                i5 = itemViewType;
            }
            FrameLayout frameLayout2 = frameLayout;
            if (frameLayout == null) {
                frameLayout2 = new FrameLayout(context);
            }
            view = c0135d.getView(i2, view, frameLayout2);
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
            frameLayout = frameLayout2;
        }
        return i3;
    }

    /* renamed from: v */
    public static boolean m2306v(C0136e c0136e) {
        boolean z;
        int size = c0136e.size();
        int i = 0;
        while (true) {
            z = false;
            if (i >= size) {
                break;
            }
            MenuItem item = c0136e.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: c */
    public void mo715c(Context context, C0136e c0136e) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: j */
    public boolean mo708j(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: k */
    public boolean mo707k(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    /* renamed from: m */
    public abstract void mo2315m(C0136e c0136e);

    /* renamed from: o */
    public abstract void mo2313o(View view);

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (C0135d) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0135d) listAdapter).f420a.m8706r((MenuItem) listAdapter.getItem(i), this, (this instanceof View$OnKeyListenerC0127b) ^ true ? 0 : 4);
    }

    /* renamed from: p */
    public abstract void mo2312p(boolean z);

    /* renamed from: q */
    public abstract void mo2311q(int i);

    /* renamed from: r */
    public abstract void mo2310r(int i);

    /* renamed from: s */
    public abstract void mo2309s(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: t */
    public abstract void mo2308t(boolean z);

    /* renamed from: u */
    public abstract void mo2307u(int i);
}
