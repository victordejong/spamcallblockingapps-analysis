package p140k;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0202c;
import java.lang.ref.WeakReference;
import p140k.AbstractC3295a;
/* renamed from: k.d */
/* loaded from: classes-dex2jar.jar:k/d.class */
public class C3299d extends AbstractC3295a implements C0136e.AbstractC0137a {

    /* renamed from: c */
    public Context f11154c;

    /* renamed from: d */
    public ActionBarContextView f11155d;

    /* renamed from: e */
    public AbstractC3295a.AbstractC3296a f11156e;

    /* renamed from: f */
    public WeakReference<View> f11157f;

    /* renamed from: g */
    public boolean f11158g;

    /* renamed from: h */
    public C0136e f11159h;

    public C3299d(Context context, ActionBarContextView actionBarContextView, AbstractC3295a.AbstractC3296a abstractC3296a, boolean z) {
        this.f11154c = context;
        this.f11155d = actionBarContextView;
        this.f11156e = abstractC3296a;
        C0136e c0136e = new C0136e(actionBarContextView.getContext());
        c0136e.f438l = 1;
        this.f11159h = c0136e;
        c0136e.f431e = this;
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
    /* renamed from: a */
    public boolean mo2424a(C0136e c0136e, MenuItem menuItem) {
        return this.f11156e.mo2408a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
    /* renamed from: b */
    public void mo2423b(C0136e c0136e) {
        mo2416i();
        C0202c c0202c = this.f11155d.f810d;
        if (c0202c != null) {
            c0202c.m8569p();
        }
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: c */
    public void mo2422c() {
        if (this.f11158g) {
            return;
        }
        this.f11158g = true;
        this.f11156e.mo2405d(this);
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: d */
    public View mo2421d() {
        WeakReference<View> weakReference = this.f11157f;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: e */
    public Menu mo2420e() {
        return this.f11159h;
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: f */
    public MenuInflater mo2419f() {
        return new C3302f(this.f11155d.getContext());
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: g */
    public CharSequence mo2418g() {
        return this.f11155d.getSubtitle();
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: h */
    public CharSequence mo2417h() {
        return this.f11155d.getTitle();
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: i */
    public void mo2416i() {
        this.f11156e.mo2406c(this, this.f11159h);
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: j */
    public boolean mo2415j() {
        return this.f11155d.f542s;
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: k */
    public void mo2414k(View view) {
        this.f11155d.setCustomView(view);
        this.f11157f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: l */
    public void mo2413l(int i) {
        this.f11155d.setSubtitle(this.f11154c.getString(i));
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: m */
    public void mo2412m(CharSequence charSequence) {
        this.f11155d.setSubtitle(charSequence);
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: n */
    public void mo2411n(int i) {
        this.f11155d.setTitle(this.f11154c.getString(i));
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: o */
    public void mo2410o(CharSequence charSequence) {
        this.f11155d.setTitle(charSequence);
    }

    @Override // p140k.AbstractC3295a
    /* renamed from: p */
    public void mo2409p(boolean z) {
        this.f11148b = z;
        this.f11155d.setTitleOptional(z);
    }
}
