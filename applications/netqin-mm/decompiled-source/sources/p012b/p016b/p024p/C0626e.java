package p012b.p016b.p024p;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p016b.p024p.p025j.C0647g;
/* renamed from: b.b.p.e */
/* loaded from: classes-dex2jar.jar:b/b/p/e.class */
public class C0626e extends AbstractC0622b implements C0647g.AbstractC0648a {

    /* renamed from: c */
    public Context f3081c;

    /* renamed from: d */
    public ActionBarContextView f3082d;

    /* renamed from: e */
    public AbstractC0622b.AbstractC0623a f3083e;

    /* renamed from: f */
    public WeakReference<View> f3084f;

    /* renamed from: g */
    public boolean f3085g;

    /* renamed from: h */
    public C0647g f3086h;

    public C0626e(Context context, ActionBarContextView actionBarContextView, AbstractC0622b.AbstractC0623a aVar, boolean z) {
        this.f3081c = context;
        this.f3082d = actionBarContextView;
        this.f3083e = aVar;
        C0647g gVar = new C0647g(actionBarContextView.getContext());
        gVar.m36597c(1);
        this.f3086h = gVar;
        gVar.mo36501a(this);
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: a */
    public void mo36695a() {
        if (!this.f3085g) {
            this.f3085g = true;
            this.f3082d.sendAccessibilityEvent(32);
            this.f3083e.mo36680a(this);
        }
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: a */
    public void mo36694a(int i) {
        mo36692a((CharSequence) this.f3081c.getString(i));
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: a */
    public void mo36693a(View view) {
        this.f3082d.setCustomView(view);
        this.f3084f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
    /* renamed from: a */
    public void mo36577a(C0647g gVar) {
        mo36683i();
        this.f3082d.m39078e();
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: a */
    public void mo36692a(CharSequence charSequence) {
        this.f3082d.setSubtitle(charSequence);
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: a */
    public void mo36691a(boolean z) {
        super.mo36691a(z);
        this.f3082d.setTitleOptional(z);
    }

    @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
    /* renamed from: a */
    public boolean mo36576a(C0647g gVar, MenuItem menuItem) {
        return this.f3083e.mo36678a(this, menuItem);
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: b */
    public View mo36690b() {
        WeakReference<View> weakReference = this.f3084f;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: b */
    public void mo36689b(int i) {
        mo36688b(this.f3081c.getString(i));
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: b */
    public void mo36688b(CharSequence charSequence) {
        this.f3082d.setTitle(charSequence);
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: c */
    public Menu mo36687c() {
        return this.f3086h;
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: d */
    public MenuInflater mo36686d() {
        return new C0629g(this.f3082d.getContext());
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: e */
    public CharSequence mo36685e() {
        return this.f3082d.getSubtitle();
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: g */
    public CharSequence mo36684g() {
        return this.f3082d.getTitle();
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: i */
    public void mo36683i() {
        this.f3083e.mo36676b(this, this.f3086h);
    }

    @Override // p012b.p016b.p024p.AbstractC0622b
    /* renamed from: j */
    public boolean mo36682j() {
        return this.f3082d.m39080c();
    }
}
