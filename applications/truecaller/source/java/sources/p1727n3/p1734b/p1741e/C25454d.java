package p1727n3.p1734b.p1741e;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionMenuPresenter;
import java.lang.ref.WeakReference;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
/* renamed from: n3.b.e.d */
/* loaded from: classes-dex2jar.jar:n3/b/e/d.class */
public class C25454d extends AbstractC25450a implements C25469g.AbstractC25470a {

    /* renamed from: c */
    public Context f71102c;

    /* renamed from: d */
    public ActionBarContextView f71103d;

    /* renamed from: e */
    public AbstractC25450a.AbstractC25451a f71104e;

    /* renamed from: f */
    public WeakReference<View> f71105f;

    /* renamed from: g */
    public boolean f71106g;

    /* renamed from: h */
    public C25469g f71107h;

    public C25454d(Context context, ActionBarContextView actionBarContextView, AbstractC25450a.AbstractC25451a abstractC25451a, boolean z) {
        this.f71102c = context;
        this.f71103d = actionBarContextView;
        this.f71104e = abstractC25451a;
        C25469g c25469g = new C25469g(actionBarContextView.getContext());
        c25469g.f71227l = 1;
        this.f71107h = c25469g;
        c25469g.f71220e = this;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: a */
    public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
        return this.f71104e.mo3501sd(this, menuItem);
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: b */
    public void mo3368b(C25469g c25469g) {
        mo3513i();
        ActionMenuPresenter actionMenuPresenter = this.f71103d.f71303d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.p();
        }
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: c */
    public void mo3519c() {
        if (this.f71106g) {
            return;
        }
        this.f71106g = true;
        this.f71103d.sendAccessibilityEvent(32);
        this.f71104e.mo3500zn(this);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: d */
    public View mo3518d() {
        WeakReference<View> weakReference = this.f71105f;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: e */
    public Menu mo3517e() {
        return this.f71107h;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: f */
    public MenuInflater mo3516f() {
        return new C25457f(this.f71103d.getContext());
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: g */
    public CharSequence mo3515g() {
        return this.f71103d.getSubtitle();
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: h */
    public CharSequence mo3514h() {
        return this.f71103d.getTitle();
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: i */
    public void mo3513i() {
        this.f71104e.mo3502gi(this, this.f71107h);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: j */
    public boolean mo3512j() {
        return this.f71103d.f218s;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: k */
    public void mo3511k(View view) {
        this.f71103d.setCustomView(view);
        this.f71105f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: l */
    public void mo3510l(int i) {
        this.f71103d.setSubtitle(this.f71102c.getString(i));
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: m */
    public void mo3509m(CharSequence charSequence) {
        this.f71103d.setSubtitle(charSequence);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: n */
    public void mo3508n(int i) {
        this.f71103d.setTitle(this.f71102c.getString(i));
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: o */
    public void mo3507o(CharSequence charSequence) {
        this.f71103d.setTitle(charSequence);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a
    /* renamed from: p */
    public void mo3506p(boolean z) {
        this.f71096b = z;
        this.f71103d.setTitleOptional(z);
    }
}
