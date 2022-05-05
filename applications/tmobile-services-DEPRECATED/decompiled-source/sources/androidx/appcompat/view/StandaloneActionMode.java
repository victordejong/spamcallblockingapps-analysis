package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/StandaloneActionMode.class */
public class StandaloneActionMode extends ActionMode implements MenuBuilder.Callback {

    /* renamed from: h */
    private Context f449h;

    /* renamed from: i */
    private ActionBarContextView f450i;

    /* renamed from: j */
    private ActionMode.Callback f451j;

    /* renamed from: k */
    private WeakReference<View> f452k;

    /* renamed from: l */
    private boolean f453l;

    /* renamed from: m */
    private MenuBuilder f454m;

    public StandaloneActionMode(Context context, ActionBarContextView actionBarContextView, ActionMode.Callback callback, boolean z) {
        this.f449h = context;
        this.f450i = actionBarContextView;
        this.f451j = callback;
        MenuBuilder menuBuilder = new MenuBuilder(actionBarContextView.getContext());
        menuBuilder.m21879W(1);
        this.f454m = menuBuilder;
        menuBuilder.mo21784V(this);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    /* renamed from: a */
    public boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        return this.f451j.mo21959d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    /* renamed from: b */
    public void mo9406b(@NonNull MenuBuilder menuBuilder) {
        mo21970k();
        this.f450i.mo21769g();
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: c */
    public void mo21976c() {
        if (!this.f453l) {
            this.f453l = true;
            this.f450i.sendAccessibilityEvent(32);
            this.f451j.mo21962a(this);
        }
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: d */
    public View mo21975d() {
        WeakReference<View> weakReference = this.f452k;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: e */
    public Menu mo21974e() {
        return this.f454m;
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: f */
    public MenuInflater mo21973f() {
        return new SupportMenuInflater(this.f450i.getContext());
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: g */
    public CharSequence mo21972g() {
        return this.f450i.getSubtitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: i */
    public CharSequence mo21971i() {
        return this.f450i.getTitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: k */
    public void mo21970k() {
        this.f451j.mo21960c(this, this.f454m);
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: l */
    public boolean mo21969l() {
        return this.f450i.m21765k();
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: m */
    public void mo21968m(View view) {
        this.f450i.setCustomView(view);
        this.f452k = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: n */
    public void mo21967n(int i) {
        mo21966o(this.f449h.getString(i));
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: o */
    public void mo21966o(CharSequence charSequence) {
        this.f450i.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: q */
    public void mo21965q(int i) {
        mo21964r(this.f449h.getString(i));
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: r */
    public void mo21964r(CharSequence charSequence) {
        this.f450i.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    /* renamed from: s */
    public void mo21963s(boolean z) {
        super.mo21963s(z);
        this.f450i.setTitleOptional(z);
    }
}
