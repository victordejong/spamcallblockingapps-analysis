package p140k;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;
import p109h0.AbstractMenuC2990a;
import p109h0.AbstractMenuItemC2991b;
import p140k.AbstractC3295a;
import p151l.MenuC3423e;
import p151l.MenuItemC3416c;
import p226s.C4263g;
/* renamed from: k.e */
/* loaded from: classes-dex2jar.jar:k/e.class */
public class C3300e extends ActionMode {

    /* renamed from: a */
    public final Context f11160a;

    /* renamed from: b */
    public final AbstractC3295a f11161b;

    /* renamed from: k.e$a */
    /* loaded from: classes-dex2jar.jar:k/e$a.class */
    public static class C3301a implements AbstractC3295a.AbstractC3296a {

        /* renamed from: a */
        public final ActionMode.Callback f11162a;

        /* renamed from: b */
        public final Context f11163b;

        /* renamed from: c */
        public final ArrayList<C3300e> f11164c = new ArrayList<>();

        /* renamed from: d */
        public final C4263g<Menu, Menu> f11165d = new C4263g<>();

        public C3301a(Context context, ActionMode.Callback callback) {
            this.f11163b = context;
            this.f11162a = callback;
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: a */
        public boolean mo2408a(AbstractC3295a abstractC3295a, MenuItem menuItem) {
            return this.f11162a.onActionItemClicked(m2404e(abstractC3295a), new MenuItemC3416c(this.f11163b, (AbstractMenuItemC2991b) menuItem));
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: b */
        public boolean mo2407b(AbstractC3295a abstractC3295a, Menu menu) {
            return this.f11162a.onCreateActionMode(m2404e(abstractC3295a), m2403f(menu));
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: c */
        public boolean mo2406c(AbstractC3295a abstractC3295a, Menu menu) {
            return this.f11162a.onPrepareActionMode(m2404e(abstractC3295a), m2403f(menu));
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: d */
        public void mo2405d(AbstractC3295a abstractC3295a) {
            this.f11162a.onDestroyActionMode(m2404e(abstractC3295a));
        }

        /* renamed from: e */
        public ActionMode m2404e(AbstractC3295a abstractC3295a) {
            int size = this.f11164c.size();
            for (int i = 0; i < size; i++) {
                C3300e c3300e = this.f11164c.get(i);
                if (c3300e != null && c3300e.f11161b == abstractC3295a) {
                    return c3300e;
                }
            }
            C3300e c3300e2 = new C3300e(this.f11163b, abstractC3295a);
            this.f11164c.add(c3300e2);
            return c3300e2;
        }

        /* renamed from: f */
        public final Menu m2403f(Menu menu) {
            Menu orDefault = this.f11165d.getOrDefault(menu, null);
            MenuC3423e menuC3423e = orDefault;
            if (orDefault == null) {
                menuC3423e = new MenuC3423e(this.f11163b, (AbstractMenuC2990a) menu);
                this.f11165d.put(menu, menuC3423e);
            }
            return menuC3423e;
        }
    }

    public C3300e(Context context, AbstractC3295a abstractC3295a) {
        this.f11160a = context;
        this.f11161b = abstractC3295a;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f11161b.mo2422c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f11161b.mo2421d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC3423e(this.f11160a, (AbstractMenuC2990a) this.f11161b.mo2420e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f11161b.mo2419f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f11161b.mo2418g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f11161b.f11147a;
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f11161b.mo2417h();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f11161b.f11148b;
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f11161b.mo2416i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f11161b.mo2415j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f11161b.mo2414k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f11161b.mo2413l(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f11161b.mo2412m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f11161b.f11147a = obj;
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f11161b.mo2411n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f11161b.mo2410o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f11161b.mo2409p(z);
    }
}
