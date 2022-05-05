package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuPopupHelper.class */
public class MenuPopupHelper implements MenuHelper {

    /* renamed from: a */
    private final Context f704a;

    /* renamed from: b */
    private final MenuBuilder f705b;

    /* renamed from: c */
    private final boolean f706c;

    /* renamed from: d */
    private final int f707d;

    /* renamed from: e */
    private final int f708e;

    /* renamed from: f */
    private View f709f;

    /* renamed from: g */
    private int f710g;

    /* renamed from: h */
    private boolean f711h;

    /* renamed from: i */
    private MenuPresenter.Callback f712i;

    /* renamed from: j */
    private MenuPopup f713j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f714k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f715l;

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z, @AttrRes int i) {
        this(context, menuBuilder, view, z, i, 0);
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z, @AttrRes int i, @StyleRes int i2) {
        this.f710g = 8388611;
        this.f715l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.MenuPopupHelper.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                MenuPopupHelper.this.mo21718e();
            }
        };
        this.f704a = context;
        this.f705b = menuBuilder;
        this.f709f = view;
        this.f706c = z;
        this.f707d = i;
        this.f708e = i2;
    }

    @NonNull
    /* renamed from: a */
    private MenuPopup m21810a() {
        Display defaultDisplay = ((WindowManager) this.f704a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        MenuPopup cascadingMenuPopup = Math.min(point.x, point.y) >= this.f704a.getResources().getDimensionPixelSize(C0042R.dimen.abc_cascading_menus_min_smallest_width) ? new CascadingMenuPopup(this.f704a, this.f709f, this.f707d, this.f708e, this.f706c) : new StandardMenuPopup(this.f704a, this.f705b, this.f709f, this.f707d, this.f708e, this.f706c);
        cascadingMenuPopup.mo21796n(this.f705b);
        cascadingMenuPopup.mo21791w(this.f715l);
        cascadingMenuPopup.mo21795r(this.f709f);
        cascadingMenuPopup.mo9519h(this.f712i);
        cascadingMenuPopup.mo21794t(this.f711h);
        cascadingMenuPopup.mo21793u(this.f710g);
        return cascadingMenuPopup;
    }

    /* renamed from: l */
    private void m21800l(int i, int i2, boolean z, boolean z2) {
        MenuPopup c = m21808c();
        c.mo21790x(z2);
        if (z) {
            int i3 = i;
            if ((GravityCompat.m19304b(this.f710g, ViewCompat.m19244A(this.f709f)) & 7) == 5) {
                i3 = i - this.f709f.getWidth();
            }
            c.mo21792v(i3);
            c.mo21789y(i2);
            int i4 = (int) ((this.f704a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c.m21812s(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        c.mo21439b();
    }

    /* renamed from: b */
    public void m21809b() {
        if (m21807d()) {
            this.f713j.dismiss();
        }
    }

    @NonNull
    /* renamed from: c */
    public MenuPopup m21808c() {
        if (this.f713j == null) {
            this.f713j = m21810a();
        }
        return this.f713j;
    }

    /* renamed from: d */
    public boolean m21807d() {
        MenuPopup menuPopup = this.f713j;
        return menuPopup != null && menuPopup.mo21440a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public void mo21718e() {
        this.f713j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f714k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m21806f(@NonNull View view) {
        this.f709f = view;
    }

    /* renamed from: g */
    public void m21805g(boolean z) {
        this.f711h = z;
        MenuPopup menuPopup = this.f713j;
        if (menuPopup != null) {
            menuPopup.mo21794t(z);
        }
    }

    /* renamed from: h */
    public void m21804h(int i) {
        this.f710g = i;
    }

    /* renamed from: i */
    public void m21803i(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f714k = onDismissListener;
    }

    /* renamed from: j */
    public void m21802j(@Nullable MenuPresenter.Callback callback) {
        this.f712i = callback;
        MenuPopup menuPopup = this.f713j;
        if (menuPopup != null) {
            menuPopup.mo9519h(callback);
        }
    }

    /* renamed from: k */
    public void m21801k() {
        if (!m21799m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    /* renamed from: m */
    public boolean m21799m() {
        if (m21807d()) {
            return true;
        }
        if (this.f709f == null) {
            return false;
        }
        m21800l(0, 0, false, false);
        return true;
    }

    /* renamed from: n */
    public boolean m21798n(int i, int i2) {
        if (m21807d()) {
            return true;
        }
        if (this.f709f == null) {
            return false;
        }
        m21800l(i, i2, true, true);
        return true;
    }
}
