package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0172b;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.view.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/e.class */
public class C0176e extends AbstractC0172b implements C0199g.AbstractC0200a {

    /* renamed from: a */
    private Context f584a;

    /* renamed from: b */
    private ActionBarContextView f585b;

    /* renamed from: c */
    private AbstractC0172b.AbstractC0173a f586c;

    /* renamed from: d */
    private WeakReference<View> f587d;

    /* renamed from: e */
    private boolean f588e;

    /* renamed from: f */
    private boolean f589f;

    /* renamed from: g */
    private C0199g f590g;

    public C0176e(Context context, ActionBarContextView actionBarContextView, AbstractC0172b.AbstractC0173a abstractC0173a, boolean z) {
        this.f584a = context;
        this.f585b = actionBarContextView;
        this.f586c = abstractC0173a;
        this.f590g = new C0199g(actionBarContextView.getContext()).m21897a(1);
        this.f590g.mo21788a(this);
        this.f589f = z;
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: a */
    public MenuInflater mo21979a() {
        return new C0179g(this.f585b.getContext());
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: a */
    public void mo21978a(int i) {
        mo21972b(this.f584a.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: a */
    public void mo21977a(View view) {
        this.f585b.setCustomView(view);
        this.f587d = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
    /* renamed from: a */
    public void mo3619a(C0199g c0199g) {
        mo21970d();
        this.f585b.mo21569a();
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: a */
    public void mo21976a(CharSequence charSequence) {
        this.f585b.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: a */
    public void mo21975a(boolean z) {
        super.mo21975a(z);
        this.f585b.setTitleOptional(z);
    }

    @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
    /* renamed from: a */
    public boolean mo3618a(C0199g c0199g, MenuItem menuItem) {
        return this.f586c.mo21962a(this, menuItem);
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: b */
    public Menu mo21974b() {
        return this.f590g;
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: b */
    public void mo21973b(int i) {
        mo21976a((CharSequence) this.f584a.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: b */
    public void mo21972b(CharSequence charSequence) {
        this.f585b.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: c */
    public void mo21971c() {
        if (this.f588e) {
            return;
        }
        this.f588e = true;
        this.f585b.sendAccessibilityEvent(32);
        this.f586c.mo21964a(this);
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: d */
    public void mo21970d() {
        this.f586c.mo21960b(this, this.f590g);
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: f */
    public CharSequence mo21969f() {
        return this.f585b.getTitle();
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: g */
    public CharSequence mo21968g() {
        return this.f585b.getSubtitle();
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: h */
    public boolean mo21967h() {
        return this.f585b.m21774d();
    }

    @Override // androidx.appcompat.view.AbstractC0172b
    /* renamed from: i */
    public View mo21966i() {
        return this.f587d != null ? this.f587d.get() : null;
    }
}
