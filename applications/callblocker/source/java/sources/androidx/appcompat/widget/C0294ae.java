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
import androidx.appcompat.view.menu.C0198f;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.ae */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae.class */
public class C0294ae extends C0285ac implements AbstractC0293ad {

    /* renamed from: a */
    private static Method f1254a;

    /* renamed from: b */
    private AbstractC0293ad f1255b;

    /* renamed from: androidx.appcompat.widget.ae$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae$a.class */
    public static class C0295a extends C0370z {

        /* renamed from: b */
        final int f1256b;

        /* renamed from: c */
        final int f1257c;

        /* renamed from: d */
        private AbstractC0293ad f1258d;

        /* renamed from: e */
        private MenuItem f1259e;

        public C0295a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f1256b = 22;
                this.f1257c = 21;
                return;
            }
            this.f1256b = 21;
            this.f1257c = 22;
        }

        @Override // androidx.appcompat.widget.C0370z
        /* renamed from: a */
        public /* bridge */ /* synthetic */ int mo21163a(int i, int i2, int i3, int i4, int i5) {
            return super.mo21163a(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.widget.C0370z
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo21159a(MotionEvent motionEvent, int i) {
            return super.mo21159a(motionEvent, i);
        }

        @Override // androidx.appcompat.widget.C0370z, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.C0370z, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.C0370z, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.C0370z, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.C0370z, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            C0198f c0198f;
            int pointToPosition;
            int i2;
            if (this.f1258d != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0198f = (C0198f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0198f = (C0198f) adapter;
                }
                C0203i item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= c0198f.getCount()) ? null : c0198f.getItem(i2);
                MenuItem menuItem = this.f1259e;
                if (menuItem != item) {
                    C0199g m21901a = c0198f.m21901a();
                    if (menuItem != null) {
                        this.f1258d.mo21519a(m21901a, menuItem);
                    }
                    this.f1259e = item;
                    if (item != null) {
                        this.f1258d.mo21516b(m21901a, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            boolean onKeyDown;
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1256b) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                onKeyDown = true;
            } else if (listMenuItemView == null || i != this.f1257c) {
                onKeyDown = super.onKeyDown(i, keyEvent);
            } else {
                setSelection(-1);
                ((C0198f) getAdapter()).m21901a().m21878a(false);
                onKeyDown = true;
            }
            return onKeyDown;
        }

        @Override // androidx.appcompat.widget.C0370z, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(AbstractC0293ad abstractC0293ad) {
            this.f1258d = abstractC0293ad;
        }

        @Override // androidx.appcompat.widget.C0370z, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT > 28) {
                return;
            }
            f1254a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0294ae(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.appcompat.widget.C0285ac
    /* renamed from: a */
    C0370z mo21520a(Context context, boolean z) {
        C0295a c0295a = new C0295a(context, z);
        c0295a.setHoverListener(this);
        return c0295a;
    }

    @Override // androidx.appcompat.widget.AbstractC0293ad
    /* renamed from: a */
    public void mo21519a(C0199g c0199g, MenuItem menuItem) {
        if (this.f1255b != null) {
            this.f1255b.mo21519a(c0199g, menuItem);
        }
    }

    /* renamed from: a */
    public void m21518a(AbstractC0293ad abstractC0293ad) {
        this.f1255b = abstractC0293ad;
    }

    /* renamed from: a */
    public void m21517a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1228g.setEnterTransition((Transition) obj);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0293ad
    /* renamed from: b */
    public void mo21516b(C0199g c0199g, MenuItem menuItem) {
        if (this.f1255b != null) {
            this.f1255b.mo21516b(c0199g, menuItem);
        }
    }

    /* renamed from: b */
    public void m21515b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1228g.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: c */
    public void m21514c(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1228g.setTouchModal(z);
        } else if (f1254a == null) {
        } else {
            try {
                f1254a.invoke(this.f1228g, Boolean.valueOf(z));
            } catch (Exception e) {
                Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }
}
