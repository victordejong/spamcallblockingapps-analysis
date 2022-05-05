package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.ViewPropertyAnimatorCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DecorToolbar.class */
public interface DecorToolbar {
    /* renamed from: a */
    boolean mo21196a();

    /* renamed from: b */
    boolean mo21195b();

    /* renamed from: c */
    boolean mo21194c();

    void collapseActionView();

    /* renamed from: d */
    boolean mo21193d();

    /* renamed from: e */
    boolean mo21192e();

    /* renamed from: f */
    void mo21191f();

    /* renamed from: g */
    void mo21190g(ScrollingTabContainerView scrollingTabContainerView);

    Context getContext();

    CharSequence getTitle();

    /* renamed from: h */
    boolean mo21189h();

    /* renamed from: i */
    void mo21188i(int i);

    /* renamed from: j */
    void mo21187j(CharSequence charSequence);

    /* renamed from: k */
    Menu mo21186k();

    /* renamed from: l */
    void mo21185l(int i);

    /* renamed from: m */
    int mo21184m();

    /* renamed from: n */
    ViewPropertyAnimatorCompat mo21183n(int i, long j);

    /* renamed from: o */
    void mo21182o(MenuPresenter.Callback callback, MenuBuilder.Callback callback2);

    /* renamed from: p */
    ViewGroup mo21181p();

    /* renamed from: q */
    void mo21180q(boolean z);

    /* renamed from: r */
    int mo21179r();

    /* renamed from: s */
    void mo21178s(int i);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setMenu(Menu menu, MenuPresenter.Callback callback);

    void setMenuPrepared();

    void setTitle(CharSequence charSequence);

    void setVisibility(int i);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    /* renamed from: t */
    void mo21177t();

    /* renamed from: u */
    void mo21176u();

    /* renamed from: v */
    void mo21175v(Drawable drawable);

    /* renamed from: w */
    void mo21174w(boolean z);
}
