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
import androidx.appcompat.view.menu.C0181f;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.ah */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ah.class */
public class C0288ah extends C0279af implements AbstractC0287ag {

    /* renamed from: a */
    private static Method f1197a;

    /* renamed from: b */
    private AbstractC0287ag f1198b;

    /* renamed from: androidx.appcompat.widget.ah$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ah$a.class */
    public static class C0289a extends C0269ab {

        /* renamed from: b */
        final int f1199b;

        /* renamed from: c */
        final int f1200c;

        /* renamed from: d */
        private AbstractC0287ag f1201d;

        /* renamed from: e */
        private MenuItem f1202e;

        public C0289a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f1199b = 22;
                this.f1200c = 21;
                return;
            }
            this.f1199b = 21;
            this.f1200c = 22;
        }

        @Override // androidx.appcompat.widget.C0269ab
        /* renamed from: a */
        public /* bridge */ /* synthetic */ int mo7238a(int i, int i2, int i3, int i4, int i5) {
            return super.mo7238a(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.widget.C0269ab
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo7237a(MotionEvent motionEvent, int i) {
            return super.mo7237a(motionEvent, i);
        }

        @Override // androidx.appcompat.widget.C0269ab, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.C0269ab, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.C0269ab, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.C0269ab, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.C0269ab, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            C0181f c0181f;
            if (this.f1201d != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0181f = (C0181f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0181f = (C0181f) adapter;
                }
                C0186i c0186i = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    c0186i = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        c0186i = null;
                        if (i2 >= 0) {
                            c0186i = null;
                            if (i2 < c0181f.getCount()) {
                                c0186i = c0181f.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f1202e;
                if (menuItem != c0186i) {
                    C0182g m7570a = c0181f.m7570a();
                    if (menuItem != null) {
                        this.f1201d.mo7244a(m7570a, menuItem);
                    }
                    this.f1202e = c0186i;
                    if (c0186i != null) {
                        this.f1201d.mo7241b(m7570a, c0186i);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1199b) {
                if (!listMenuItemView.isEnabled() || !listMenuItemView.getItemData().hasSubMenu()) {
                    return true;
                }
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            } else if (listMenuItemView == null || i != this.f1200c) {
                return super.onKeyDown(i, keyEvent);
            } else {
                setSelection(-1);
                ((C0181f) getAdapter()).m7570a().close(false);
                return true;
            }
        }

        @Override // androidx.appcompat.widget.C0269ab, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(AbstractC0287ag abstractC0287ag) {
            this.f1201d = abstractC0287ag;
        }

        @Override // androidx.appcompat.widget.C0269ab, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT > 28) {
                return;
            }
            f1197a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0288ah(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.appcompat.widget.C0279af
    /* renamed from: a */
    C0269ab mo7245a(Context context, boolean z) {
        C0289a c0289a = new C0289a(context, z);
        c0289a.setHoverListener(this);
        return c0289a;
    }

    @Override // androidx.appcompat.widget.AbstractC0287ag
    /* renamed from: a */
    public void mo7244a(C0182g c0182g, MenuItem menuItem) {
        AbstractC0287ag abstractC0287ag = this.f1198b;
        if (abstractC0287ag != null) {
            abstractC0287ag.mo7244a(c0182g, menuItem);
        }
    }

    /* renamed from: a */
    public void m7243a(AbstractC0287ag abstractC0287ag) {
        this.f1198b = abstractC0287ag;
    }

    /* renamed from: a */
    public void m7242a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1171g.setEnterTransition((Transition) obj);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0287ag
    /* renamed from: b */
    public void mo7241b(C0182g c0182g, MenuItem menuItem) {
        AbstractC0287ag abstractC0287ag = this.f1198b;
        if (abstractC0287ag != null) {
            abstractC0287ag.mo7241b(c0182g, menuItem);
        }
    }

    /* renamed from: b */
    public void m7240b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1171g.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: c */
    public void m7239c(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1171g.setTouchModal(z);
            return;
        }
        Method method = f1197a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(this.f1171g, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
        }
    }
}
