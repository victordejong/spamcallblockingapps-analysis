package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0267f;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow.class */
public final class MenuPopupWindow extends ListPopupWindow implements AbstractC0413s {

    /* renamed from: b */
    private static Method f1281b;

    /* renamed from: a */
    public AbstractC0413s f1282a;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView.class */
    public static class MenuDropDownListView extends DropDownListView {

        /* renamed from: c */
        final int f1283c;

        /* renamed from: d */
        final int f1284d;

        /* renamed from: e */
        private AbstractC0413s f1285e;

        /* renamed from: f */
        private MenuItem f1286f;

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f1283c = 22;
                this.f1284d = 21;
                return;
            }
            this.f1283c = 21;
            this.f1284d = 22;
        }

        @Override // androidx.appcompat.widget.DropDownListView
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ int mo45908a(int i, int i2, int i3, int i4, int i5) {
            return super.mo45908a(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.widget.DropDownListView
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo45907a(MotionEvent motionEvent, int i) {
            return super.mo45907a(motionEvent, i);
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            C0267f c0267f;
            int i;
            if (this.f1285e != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0267f = (C0267f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0267f = (C0267f) adapter;
                }
                C0272i c0272i = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    c0272i = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        c0272i = null;
                        if (i2 >= 0) {
                            c0272i = null;
                            if (i2 < c0267f.getCount()) {
                                c0272i = c0267f.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f1286f;
                if (menuItem != c0272i) {
                    C0268g c0268g = c0267f.f875a;
                    if (menuItem != null) {
                        this.f1285e.mo45612a(c0268g, menuItem);
                    }
                    this.f1286f = c0272i;
                    if (c0272i != null) {
                        this.f1285e.mo45611b(c0268g, c0272i);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1283c) {
                if (!listMenuItemView.isEnabled() || !listMenuItemView.f776a.hasSubMenu()) {
                    return true;
                }
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            } else if (listMenuItemView == null || i != this.f1284d) {
                return super.onKeyDown(i, keyEvent);
            } else {
                setSelection(-1);
                ((C0267f) getAdapter()).f875a.m46094a(false);
                return true;
            }
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(AbstractC0413s abstractC0413s) {
            this.f1285e = abstractC0413s;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT > 28) {
                return;
            }
            f1281b = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    /* renamed from: a */
    final DropDownListView mo45910a(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    /* renamed from: a */
    public final void m45911a() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1261n.setEnterTransition(null);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0413s
    /* renamed from: a */
    public final void mo45612a(C0268g c0268g, MenuItem menuItem) {
        AbstractC0413s abstractC0413s = this.f1282a;
        if (abstractC0413s != null) {
            abstractC0413s.mo45612a(c0268g, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0413s
    /* renamed from: b */
    public final void mo45611b(C0268g c0268g, MenuItem menuItem) {
        AbstractC0413s abstractC0413s = this.f1282a;
        if (abstractC0413s != null) {
            abstractC0413s.mo45611b(c0268g, menuItem);
        }
    }

    /* renamed from: h */
    public final void m45909h() {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1261n.setTouchModal(false);
            return;
        }
        Method method = f1281b;
        if (method == null) {
            return;
        }
        try {
            method.invoke(this.f1261n, Boolean.FALSE);
        } catch (Exception e) {
        }
    }
}
