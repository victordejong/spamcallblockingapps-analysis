package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0177f;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow.class */
public class MenuPopupWindow extends ListPopupWindow implements AbstractC0326u {

    /* renamed from: M */
    private static Method f1017M;

    /* renamed from: N */
    private AbstractC0326u f1018N;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView.class */
    public static class MenuDropDownListView extends C0318r {

        /* renamed from: r */
        final int f1019r;

        /* renamed from: s */
        final int f1020s;

        /* renamed from: t */
        private AbstractC0326u f1021t;

        /* renamed from: u */
        private MenuItem f1022u;

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f1019r = 22;
                this.f1020s = 21;
                return;
            }
            this.f1019r = 21;
            this.f1020s = 22;
        }

        @Override // androidx.appcompat.widget.C0318r
        /* renamed from: d */
        public /* bridge */ /* synthetic */ int mo34769d(int i, int i2, int i3, int i4, int i5) {
            return super.mo34769d(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.widget.C0318r
        /* renamed from: e */
        public /* bridge */ /* synthetic */ boolean mo34768e(MotionEvent motionEvent, int i) {
            return super.mo34768e(motionEvent, i);
        }

        @Override // androidx.appcompat.widget.C0318r, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.C0318r, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.C0318r, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.C0318r, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.C0318r, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            C0177f c0177f;
            if (this.f1021t != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0177f = (C0177f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0177f = (C0177f) adapter;
                }
                C0182i c0182i = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    c0182i = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        c0182i = null;
                        if (i2 >= 0) {
                            c0182i = null;
                            if (i2 < c0177f.getCount()) {
                                c0182i = c0177f.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f1022u;
                if (menuItem != c0182i) {
                    C0178g m35417b = c0177f.m35417b();
                    if (menuItem != null) {
                        this.f1021t.mo34746g(m35417b, menuItem);
                    }
                    this.f1022u = c0182i;
                    if (c0182i != null) {
                        this.f1021t.mo34747d(m35417b, c0182i);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1019r) {
                if (!listMenuItemView.isEnabled() || !listMenuItemView.getItemData().hasSubMenu()) {
                    return true;
                }
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            } else if (listMenuItemView == null || i != this.f1020s) {
                return super.onKeyDown(i, keyEvent);
            } else {
                setSelection(-1);
                ListAdapter adapter = getAdapter();
                (adapter instanceof HeaderViewListAdapter ? (C0177f) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C0177f) adapter).m35417b().m35387e(false);
                return true;
            }
        }

        @Override // androidx.appcompat.widget.C0318r, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(AbstractC0326u abstractC0326u) {
            this.f1021t = abstractC0326u;
        }

        @Override // androidx.appcompat.widget.C0318r, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT > 28) {
                return;
            }
            f1017M = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* renamed from: R */
    public void m35119R(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f989L.setEnterTransition((Transition) obj);
        }
    }

    /* renamed from: S */
    public void m35118S(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f989L.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: T */
    public void m35117T(AbstractC0326u abstractC0326u) {
        this.f1018N = abstractC0326u;
    }

    /* renamed from: U */
    public void m35116U(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f989L.setTouchModal(z);
            return;
        }
        Method method = f1017M;
        if (method == null) {
            return;
        }
        try {
            method.invoke(this.f989L, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0326u
    /* renamed from: d */
    public void mo34747d(C0178g c0178g, MenuItem menuItem) {
        AbstractC0326u abstractC0326u = this.f1018N;
        if (abstractC0326u != null) {
            abstractC0326u.mo34747d(c0178g, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0326u
    /* renamed from: g */
    public void mo34746g(C0178g c0178g, MenuItem menuItem) {
        AbstractC0326u abstractC0326u = this.f1018N;
        if (abstractC0326u != null) {
            abstractC0326u.mo34746g(c0178g, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    /* renamed from: s */
    C0318r mo35115s(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }
}
