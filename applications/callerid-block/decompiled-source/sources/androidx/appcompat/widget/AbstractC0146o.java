package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.AbstractC0097m;
import d.h.m.x;
/* renamed from: androidx.appcompat.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o.class */
public interface AbstractC0146o {
    /* renamed from: a */
    boolean m14492a();

    /* renamed from: b */
    boolean m14491b();

    /* renamed from: c */
    boolean m14490c();

    void collapseActionView();

    /* renamed from: d */
    boolean m14489d();

    /* renamed from: e */
    boolean m14488e();

    /* renamed from: f */
    void m14487f();

    /* renamed from: g */
    void m14486g(ScrollingTabContainerView scrollingTabContainerView);

    Context getContext();

    CharSequence getTitle();

    /* renamed from: h */
    ViewGroup m14485h();

    /* renamed from: i */
    void m14484i(boolean z);

    /* renamed from: j */
    boolean m14483j();

    /* renamed from: k */
    void m14482k(int i);

    /* renamed from: l */
    int m14481l();

    /* renamed from: m */
    void m14480m(int i);

    /* renamed from: n */
    int m14479n();

    /* renamed from: o */
    x m14478o(int i, long j);

    /* renamed from: p */
    void m14477p();

    /* renamed from: q */
    void m14476q();

    /* renamed from: r */
    void m14475r(boolean z);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setMenu(Menu menu, AbstractC0097m.AbstractC0098a aVar);

    void setMenuPrepared();

    void setVisibility(int i);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
