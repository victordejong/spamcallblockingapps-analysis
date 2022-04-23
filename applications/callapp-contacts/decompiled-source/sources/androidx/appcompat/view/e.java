package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/e.class */
public class e extends b implements g.a {

    /* renamed from: a  reason: collision with root package name */
    public ActionBarContextView f736a;

    /* renamed from: b  reason: collision with root package name */
    private Context f737b;
    private b.a e;
    private WeakReference<View> f;
    private boolean g;
    private boolean h;
    private g i;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.f737b = context;
        this.f736a = actionBarContextView;
        this.e = aVar;
        g gVar = new g(actionBarContextView.getContext());
        gVar.e = 1;
        this.i = gVar;
        gVar.a(this);
        this.h = z;
    }

    @Override // androidx.appcompat.view.b
    public final MenuInflater a() {
        return new g(this.f736a.getContext());
    }

    @Override // androidx.appcompat.view.b
    public final void a(int i) {
        b(this.f737b.getString(i));
    }

    @Override // androidx.appcompat.view.b
    public final void a(View view) {
        this.f736a.setCustomView(view);
        this.f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public final void a(g gVar) {
        d();
        this.f736a.a();
    }

    @Override // androidx.appcompat.view.b
    public final void a(CharSequence charSequence) {
        this.f736a.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public final void a(boolean z) {
        super.a(z);
        this.f736a.setTitleOptional(z);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public final boolean a(g gVar, MenuItem menuItem) {
        return this.e.a(this, menuItem);
    }

    @Override // androidx.appcompat.view.b
    public final Menu b() {
        return this.i;
    }

    @Override // androidx.appcompat.view.b
    public final void b(int i) {
        a(this.f737b.getString(i));
    }

    @Override // androidx.appcompat.view.b
    public final void b(CharSequence charSequence) {
        this.f736a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public final void c() {
        if (!this.g) {
            this.g = true;
            this.f736a.sendAccessibilityEvent(32);
            this.e.a(this);
        }
    }

    @Override // androidx.appcompat.view.b
    public final void d() {
        this.e.b(this, this.i);
    }

    @Override // androidx.appcompat.view.b
    public final CharSequence f() {
        return this.f736a.g;
    }

    @Override // androidx.appcompat.view.b
    public final CharSequence g() {
        return this.f736a.h;
    }

    @Override // androidx.appcompat.view.b
    public final boolean h() {
        return this.f736a.i;
    }

    @Override // androidx.appcompat.view.b
    public final View i() {
        WeakReference<View> weakReference = this.f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }
}
