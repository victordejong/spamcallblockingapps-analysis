package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0135d;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.o0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0.class */
public class C0261o0 extends C0252m0 implements AbstractC0259n0 {

    /* renamed from: D */
    public static Method f1056D;

    /* renamed from: C */
    public AbstractC0259n0 f1057C;

    /* renamed from: androidx.appcompat.widget.o0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0$a.class */
    public static class C0262a extends C0238i0 {

        /* renamed from: n */
        public final int f1058n;

        /* renamed from: o */
        public final int f1059o;

        /* renamed from: p */
        public AbstractC0259n0 f1060p;

        /* renamed from: q */
        public MenuItem f1061q;

        public C0262a(Context context, boolean z) {
            super(context, z);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.f1058n = 21;
                this.f1059o = 22;
                return;
            }
            this.f1058n = 22;
            this.f1059o = 21;
        }

        @Override // androidx.appcompat.widget.C0238i0, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            C0135d c0135d;
            if (this.f1060p != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0135d = (C0135d) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0135d = (C0135d) adapter;
                }
                C0140g c0140g = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    c0140g = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        c0140g = null;
                        if (i2 >= 0) {
                            c0140g = null;
                            if (i2 < c0135d.getCount()) {
                                c0140g = c0135d.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f1061q;
                if (menuItem != c0140g) {
                    C0136e c0136e = c0135d.f420a;
                    if (menuItem != null) {
                        this.f1060p.mo8451d(c0136e, menuItem);
                    }
                    this.f1061q = c0140g;
                    if (c0140g != null) {
                        this.f1060p.mo8452a(c0136e, c0140g);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1058n) {
                if (!listMenuItemView.isEnabled() || !listMenuItemView.getItemData().hasSubMenu()) {
                    return true;
                }
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            } else if (listMenuItemView == null || i != this.f1059o) {
                return super.onKeyDown(i, keyEvent);
            } else {
                setSelection(-1);
                ListAdapter adapter = getAdapter();
                (adapter instanceof HeaderViewListAdapter ? (C0135d) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C0135d) adapter).f420a.m8712c(false);
                return true;
            }
        }

        public void setHoverListener(AbstractC0259n0 abstractC0259n0) {
            this.f1060p = abstractC0259n0;
        }

        @Override // androidx.appcompat.widget.C0238i0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT > 28) {
                return;
            }
            f1056D = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0261o0(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // androidx.appcompat.widget.AbstractC0259n0
    /* renamed from: a */
    public void mo8452a(C0136e c0136e, MenuItem menuItem) {
        AbstractC0259n0 abstractC0259n0 = this.f1057C;
        if (abstractC0259n0 != null) {
            abstractC0259n0.mo8452a(c0136e, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0259n0
    /* renamed from: d */
    public void mo8451d(C0136e c0136e, MenuItem menuItem) {
        AbstractC0259n0 abstractC0259n0 = this.f1057C;
        if (abstractC0259n0 != null) {
            abstractC0259n0.mo8451d(c0136e, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.C0252m0
    /* renamed from: p */
    public C0238i0 mo8450p(Context context, boolean z) {
        C0262a c0262a = new C0262a(context, z);
        c0262a.setHoverListener(this);
        return c0262a;
    }
}
