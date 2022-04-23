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
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow.class */
public final class MenuPopupWindow extends ListPopupWindow implements s {

    /* renamed from: b  reason: collision with root package name */
    private static Method f973b;

    /* renamed from: a  reason: collision with root package name */
    public s f974a;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView.class */
    public static class MenuDropDownListView extends DropDownListView {

        /* renamed from: c  reason: collision with root package name */
        final int f975c;

        /* renamed from: d  reason: collision with root package name */
        final int f976d;
        private s e;
        private MenuItem f;

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f975c = 22;
                this.f976d = 21;
                return;
            }
            this.f975c = 21;
            this.f976d = 22;
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public final /* bridge */ /* synthetic */ int a(int i, int i2, int i3, int i4, int i5) {
            return super.a(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public final /* bridge */ /* synthetic */ boolean a(MotionEvent motionEvent, int i) {
            return super.a(motionEvent, i);
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
            f fVar;
            int i;
            if (this.e != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    fVar = (f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    fVar = (f) adapter;
                }
                i iVar = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    iVar = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        iVar = null;
                        if (i2 >= 0) {
                            iVar = null;
                            if (i2 < fVar.getCount()) {
                                iVar = fVar.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f;
                if (menuItem != iVar) {
                    g gVar = fVar.f804a;
                    if (menuItem != null) {
                        this.e.a(gVar, menuItem);
                    }
                    this.f = iVar;
                    if (iVar != null) {
                        this.e.b(gVar, iVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView == null || i != this.f975c) {
                if (listMenuItemView == null || i != this.f976d) {
                    return super.onKeyDown(i, keyEvent);
                }
                setSelection(-1);
                ((f) getAdapter()).f804a.a(false);
                return true;
            } else if (!listMenuItemView.isEnabled() || !listMenuItemView.f769a.hasSubMenu()) {
                return true;
            } else {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            }
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(s sVar) {
            this.e = sVar;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f973b = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException e) {
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    final DropDownListView a(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    public final void a() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.n.setEnterTransition(null);
        }
    }

    @Override // androidx.appcompat.widget.s
    public final void a(g gVar, MenuItem menuItem) {
        s sVar = this.f974a;
        if (sVar != null) {
            sVar.a(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.s
    public final void b(g gVar, MenuItem menuItem) {
        s sVar = this.f974a;
        if (sVar != null) {
            sVar.b(gVar, menuItem);
        }
    }

    public final void h() {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f973b;
            if (method != null) {
                try {
                    method.invoke(this.n, Boolean.FALSE);
                } catch (Exception e) {
                }
            }
        } else {
            this.n.setTouchModal(false);
        }
    }
}
