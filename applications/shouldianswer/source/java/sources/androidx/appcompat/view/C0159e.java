package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0155b;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.view.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/e.class */
public class C0159e extends AbstractC0155b implements C0182g.AbstractC0183a {

    /* renamed from: a */
    private Context f532a;

    /* renamed from: b */
    private ActionBarContextView f533b;

    /* renamed from: c */
    private AbstractC0155b.AbstractC0156a f534c;

    /* renamed from: d */
    private WeakReference<View> f535d;

    /* renamed from: e */
    private boolean f536e;

    /* renamed from: f */
    private boolean f537f;

    /* renamed from: g */
    private C0182g f538g;

    public C0159e(Context context, ActionBarContextView actionBarContextView, AbstractC0155b.AbstractC0156a abstractC0156a, boolean z) {
        this.f532a = context;
        this.f533b = actionBarContextView;
        this.f534c = abstractC0156a;
        this.f538g = new C0182g(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f538g.setCallback(this);
        this.f537f = z;
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: a */
    public MenuInflater mo7648a() {
        return new C0162g(this.f533b.getContext());
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: a */
    public void mo7647a(int i) {
        mo7641b(this.f532a.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: a */
    public void mo7646a(View view) {
        this.f533b.setCustomView(view);
        this.f535d = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: a */
    public void mo7645a(CharSequence charSequence) {
        this.f533b.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: a */
    public void mo7644a(boolean z) {
        super.mo7644a(z);
        this.f533b.setTitleOptional(z);
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: b */
    public Menu mo7643b() {
        return this.f538g;
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: b */
    public void mo7642b(int i) {
        mo7645a((CharSequence) this.f532a.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: b */
    public void mo7641b(CharSequence charSequence) {
        this.f533b.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: c */
    public void mo7640c() {
        if (this.f536e) {
            return;
        }
        this.f536e = true;
        this.f533b.sendAccessibilityEvent(32);
        this.f534c.mo7633a(this);
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: d */
    public void mo7639d() {
        this.f534c.mo7629b(this, this.f538g);
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: f */
    public CharSequence mo7638f() {
        return this.f533b.getTitle();
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: g */
    public CharSequence mo7637g() {
        return this.f533b.getSubtitle();
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: h */
    public boolean mo7636h() {
        return this.f533b.m7503d();
    }

    @Override // androidx.appcompat.view.AbstractC0155b
    /* renamed from: i */
    public View mo7635i() {
        WeakReference<View> weakReference = this.f535d;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
    public boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
        return this.f534c.mo7631a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
    public void onMenuModeChange(C0182g c0182g) {
        mo7639d();
        this.f533b.mo7314a();
    }
}
