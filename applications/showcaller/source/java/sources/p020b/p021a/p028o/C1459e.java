package p020b.p021a.p028o;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p020b.p021a.p028o.AbstractC1455b;
/* renamed from: b.a.o.e */
/* loaded from: classes-dex2jar.jar:b/a/o/e.class */
public class C1459e extends AbstractC1455b implements C0178g.AbstractC0179a {

    /* renamed from: f */
    private Context f5841f;

    /* renamed from: g */
    private ActionBarContextView f5842g;

    /* renamed from: h */
    private AbstractC1455b.AbstractC1456a f5843h;

    /* renamed from: i */
    private WeakReference<View> f5844i;

    /* renamed from: j */
    private boolean f5845j;

    /* renamed from: k */
    private boolean f5846k;

    /* renamed from: l */
    private C0178g f5847l;

    public C1459e(Context context, ActionBarContextView actionBarContextView, AbstractC1455b.AbstractC1456a abstractC1456a, boolean z) {
        this.f5841f = context;
        this.f5842g = actionBarContextView;
        this.f5843h = abstractC1456a;
        C0178g m35398W = new C0178g(actionBarContextView.getContext()).m35398W(1);
        this.f5847l = m35398W;
        m35398W.mo35302V(this);
        this.f5846k = z;
    }

    @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
    /* renamed from: a */
    public boolean mo4426a(C0178g c0178g, MenuItem menuItem) {
        return this.f5843h.mo30019d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
    /* renamed from: b */
    public void mo4425b(C0178g c0178g) {
        mo30030k();
        this.f5842g.m35289l();
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: c */
    public void mo30036c() {
        if (this.f5845j) {
            return;
        }
        this.f5845j = true;
        this.f5842g.sendAccessibilityEvent(32);
        this.f5843h.mo30022a(this);
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: d */
    public View mo30035d() {
        WeakReference<View> weakReference = this.f5844i;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: e */
    public Menu mo30034e() {
        return this.f5847l;
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: f */
    public MenuInflater mo30033f() {
        return new C1462g(this.f5842g.getContext());
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: g */
    public CharSequence mo30032g() {
        return this.f5842g.getSubtitle();
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: i */
    public CharSequence mo30031i() {
        return this.f5842g.getTitle();
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: k */
    public void mo30030k() {
        this.f5843h.mo30020c(this, this.f5847l);
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: l */
    public boolean mo30029l() {
        return this.f5842g.m35291j();
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: m */
    public void mo30028m(View view) {
        this.f5842g.setCustomView(view);
        this.f5844i = view != null ? new WeakReference<>(view) : null;
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: n */
    public void mo30027n(int i) {
        mo30026o(this.f5841f.getString(i));
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: o */
    public void mo30026o(CharSequence charSequence) {
        this.f5842g.setSubtitle(charSequence);
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: q */
    public void mo30025q(int i) {
        mo30024r(this.f5841f.getString(i));
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: r */
    public void mo30024r(CharSequence charSequence) {
        this.f5842g.setTitle(charSequence);
    }

    @Override // p020b.p021a.p028o.AbstractC1455b
    /* renamed from: s */
    public void mo30023s(boolean z) {
        super.mo30023s(z);
        this.f5842g.setTitleOptional(z);
    }
}
