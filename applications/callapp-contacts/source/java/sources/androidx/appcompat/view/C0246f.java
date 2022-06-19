package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.view.menu.MenuC0287o;
import androidx.appcompat.view.menu.MenuItemC0274j;
import androidx.core.p030a.p031a.AbstractMenuC0712a;
import androidx.core.p030a.p031a.AbstractMenuItemC0713b;
import androidx.p023b.C0441g;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f.class */
public final class C0246f extends ActionMode {

    /* renamed from: a */
    final Context f705a;

    /* renamed from: b */
    final AbstractC0241b f706b;

    /* renamed from: androidx.appcompat.view.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f$a.class */
    public static final class C0247a implements AbstractC0241b.AbstractC0242a {

        /* renamed from: a */
        final ActionMode.Callback f707a;

        /* renamed from: b */
        final Context f708b;

        /* renamed from: c */
        final ArrayList<C0246f> f709c = new ArrayList<>();

        /* renamed from: d */
        final C0441g<Menu, Menu> f710d = new C0441g<>();

        public C0247a(Context context, ActionMode.Callback callback) {
            this.f708b = context;
            this.f707a = callback;
        }

        /* renamed from: a */
        private Menu m46152a(Menu menu) {
            Menu menu2 = this.f710d.get(menu);
            MenuC0287o menuC0287o = menu2;
            if (menu2 == null) {
                menuC0287o = new MenuC0287o(this.f708b, (AbstractMenuC0712a) menu);
                this.f710d.put(menu, menuC0287o);
            }
            return menuC0287o;
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: a */
        public final void mo28726a(AbstractC0241b abstractC0241b) {
            this.f707a.onDestroyActionMode(m46151b(abstractC0241b));
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: a */
        public final boolean mo28725a(AbstractC0241b abstractC0241b, Menu menu) {
            return this.f707a.onCreateActionMode(m46151b(abstractC0241b), m46152a(menu));
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: a */
        public final boolean mo28724a(AbstractC0241b abstractC0241b, MenuItem menuItem) {
            return this.f707a.onActionItemClicked(m46151b(abstractC0241b), new MenuItemC0274j(this.f708b, (AbstractMenuItemC0713b) menuItem));
        }

        /* renamed from: b */
        public final ActionMode m46151b(AbstractC0241b abstractC0241b) {
            int size = this.f709c.size();
            for (int i = 0; i < size; i++) {
                C0246f c0246f = this.f709c.get(i);
                if (c0246f != null && c0246f.f706b == abstractC0241b) {
                    return c0246f;
                }
            }
            C0246f c0246f2 = new C0246f(this.f708b, abstractC0241b);
            this.f709c.add(c0246f2);
            return c0246f2;
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: b */
        public final boolean mo28723b(AbstractC0241b abstractC0241b, Menu menu) {
            return this.f707a.onPrepareActionMode(m46151b(abstractC0241b), m46152a(menu));
        }
    }

    public C0246f(Context context, AbstractC0241b abstractC0241b) {
        this.f705a = context;
        this.f706b = abstractC0241b;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f706b.mo46158c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f706b.mo46153i();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC0287o(this.f705a, (AbstractMenuC0712a) this.f706b.mo46161b());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f706b.mo46166a();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f706b.mo46155g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f706b.f691c;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f706b.mo46156f();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f706b.f692d;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f706b.mo46157d();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f706b.mo46154h();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f706b.mo46164a(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f706b.mo46160b(i);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f706b.mo46163a(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f706b.f691c = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f706b.mo46165a(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f706b.mo46159b(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f706b.mo46162a(z);
    }
}
