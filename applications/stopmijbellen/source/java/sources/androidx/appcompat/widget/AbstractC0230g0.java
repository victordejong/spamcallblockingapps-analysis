package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0136e;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.g0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0.class */
public interface AbstractC0230g0 {
    /* renamed from: a */
    void mo8525a(Menu menu, AbstractC0144i.AbstractC0145a abstractC0145a);

    /* renamed from: b */
    boolean mo8524b();

    /* renamed from: c */
    void mo8523c();

    void collapseActionView();

    /* renamed from: d */
    boolean mo8522d();

    /* renamed from: e */
    boolean mo8521e();

    /* renamed from: f */
    boolean mo8520f();

    /* renamed from: g */
    boolean mo8519g();

    Context getContext();

    CharSequence getTitle();

    /* renamed from: h */
    void mo8518h();

    /* renamed from: i */
    void mo8517i(AbstractC0144i.AbstractC0145a abstractC0145a, C0136e.AbstractC0137a abstractC0137a);

    /* renamed from: j */
    void mo8516j(int i);

    /* renamed from: k */
    void mo8515k(C0277s0 c0277s0);

    /* renamed from: l */
    ViewGroup mo8514l();

    /* renamed from: m */
    void mo8513m(boolean z);

    /* renamed from: n */
    boolean mo8512n();

    /* renamed from: o */
    void mo8511o(int i);

    /* renamed from: p */
    int mo8510p();

    /* renamed from: q */
    Menu mo8509q();

    /* renamed from: r */
    void mo8508r(int i);

    /* renamed from: s */
    void mo8507s(int i);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    /* renamed from: t */
    int mo8506t();

    /* renamed from: u */
    C3611y mo8505u(int i, long j);

    /* renamed from: v */
    void mo8504v();

    /* renamed from: w */
    void mo8503w();

    /* renamed from: x */
    void mo8502x(Drawable drawable);

    /* renamed from: y */
    void mo8501y(boolean z);
}
