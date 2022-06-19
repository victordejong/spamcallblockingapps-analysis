package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.view.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/e.class */
public class C0245e extends AbstractC0241b implements C0268g.AbstractC0269a {

    /* renamed from: a */
    public ActionBarContextView f698a;

    /* renamed from: b */
    private Context f699b;

    /* renamed from: e */
    private AbstractC0241b.AbstractC0242a f700e;

    /* renamed from: f */
    private WeakReference<View> f701f;

    /* renamed from: g */
    private boolean f702g;

    /* renamed from: h */
    private boolean f703h;

    /* renamed from: i */
    private C0268g f704i;

    public C0245e(Context context, ActionBarContextView actionBarContextView, AbstractC0241b.AbstractC0242a abstractC0242a, boolean z) {
        this.f699b = context;
        this.f698a = actionBarContextView;
        this.f700e = abstractC0242a;
        C0268g c0268g = new C0268g(actionBarContextView.getContext());
        c0268g.f887e = 1;
        this.f704i = c0268g;
        c0268g.mo46041a(this);
        this.f703h = z;
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: a */
    public final MenuInflater mo46166a() {
        return new C0248g(this.f698a.getContext());
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: a */
    public final void mo46165a(int i) {
        mo46159b(this.f699b.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: a */
    public final void mo46164a(View view) {
        this.f698a.setCustomView(view);
        this.f701f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
    /* renamed from: a */
    public final void mo10362a(C0268g c0268g) {
        mo46157d();
        this.f698a.mo45818a();
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: a */
    public final void mo46163a(CharSequence charSequence) {
        this.f698a.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: a */
    public final void mo46162a(boolean z) {
        super.mo46162a(z);
        this.f698a.setTitleOptional(z);
    }

    @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
    /* renamed from: a */
    public final boolean mo10361a(C0268g c0268g, MenuItem menuItem) {
        return this.f700e.mo28724a(this, menuItem);
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: b */
    public final Menu mo46161b() {
        return this.f704i;
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: b */
    public final void mo46160b(int i) {
        mo46163a(this.f699b.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: b */
    public final void mo46159b(CharSequence charSequence) {
        this.f698a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: c */
    public final void mo46158c() {
        if (this.f702g) {
            return;
        }
        this.f702g = true;
        this.f698a.sendAccessibilityEvent(32);
        this.f700e.mo28726a(this);
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: d */
    public final void mo46157d() {
        this.f700e.mo28723b(this, this.f704i);
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: f */
    public final CharSequence mo46156f() {
        return this.f698a.f1006g;
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: g */
    public final CharSequence mo46155g() {
        return this.f698a.f1007h;
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: h */
    public final boolean mo46154h() {
        return this.f698a.f1008i;
    }

    @Override // androidx.appcompat.view.AbstractC0241b
    /* renamed from: i */
    public final View mo46153i() {
        WeakReference<View> weakReference = this.f701f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }
}
