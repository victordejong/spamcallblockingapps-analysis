package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.AbstractC0193m;
import p020b.p041h.p050l.C1601a0;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
public interface AbstractC0316p {
    /* renamed from: a */
    boolean mo34795a();

    /* renamed from: b */
    boolean mo34794b();

    /* renamed from: c */
    boolean mo34793c();

    void collapseActionView();

    /* renamed from: d */
    boolean mo34792d();

    /* renamed from: e */
    boolean mo34791e();

    /* renamed from: f */
    void mo34790f();

    /* renamed from: g */
    void mo34789g(ScrollingTabContainerView scrollingTabContainerView);

    Context getContext();

    CharSequence getTitle();

    /* renamed from: h */
    boolean mo34788h();

    /* renamed from: i */
    void mo34787i(int i);

    /* renamed from: j */
    void mo34786j(int i);

    /* renamed from: k */
    int mo34785k();

    /* renamed from: l */
    C1601a0 mo34784l(int i, long j);

    /* renamed from: m */
    ViewGroup mo34783m();

    /* renamed from: n */
    void mo34782n(boolean z);

    /* renamed from: o */
    int mo34781o();

    /* renamed from: p */
    void mo34780p();

    /* renamed from: q */
    void mo34779q();

    /* renamed from: r */
    void mo34778r(boolean z);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setMenu(Menu menu, AbstractC0193m.AbstractC0194a abstractC0194a);

    void setMenuPrepared();

    void setVisibility(int i);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
