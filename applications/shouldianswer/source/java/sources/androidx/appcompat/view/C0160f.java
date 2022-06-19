package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0155b;
import androidx.appcompat.view.menu.MenuC0201o;
import androidx.appcompat.view.menu.MenuItemC0188j;
import androidx.core.p017b.p018a.AbstractMenuC0460a;
import androidx.core.p017b.p018a.AbstractMenuItemC0461b;
import androidx.p014c.C0387g;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f.class */
public class C0160f extends ActionMode {

    /* renamed from: a */
    final Context f539a;

    /* renamed from: b */
    final AbstractC0155b f540b;

    /* renamed from: androidx.appcompat.view.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f$a.class */
    public static class C0161a implements AbstractC0155b.AbstractC0156a {

        /* renamed from: a */
        final ActionMode.Callback f541a;

        /* renamed from: b */
        final Context f542b;

        /* renamed from: c */
        final ArrayList<C0160f> f543c = new ArrayList<>();

        /* renamed from: d */
        final C0387g<Menu, Menu> f544d = new C0387g<>();

        public C0161a(Context context, ActionMode.Callback callback) {
            this.f542b = context;
            this.f541a = callback;
        }

        /* renamed from: a */
        private Menu m7634a(Menu menu) {
            Menu menu2 = this.f544d.get(menu);
            MenuC0201o menuC0201o = menu2;
            if (menu2 == null) {
                menuC0201o = new MenuC0201o(this.f542b, (AbstractMenuC0460a) menu);
                this.f544d.put(menu, menuC0201o);
            }
            return menuC0201o;
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: a */
        public void mo7633a(AbstractC0155b abstractC0155b) {
            this.f541a.onDestroyActionMode(m7630b(abstractC0155b));
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: a */
        public boolean mo7632a(AbstractC0155b abstractC0155b, Menu menu) {
            return this.f541a.onCreateActionMode(m7630b(abstractC0155b), m7634a(menu));
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: a */
        public boolean mo7631a(AbstractC0155b abstractC0155b, MenuItem menuItem) {
            return this.f541a.onActionItemClicked(m7630b(abstractC0155b), new MenuItemC0188j(this.f542b, (AbstractMenuItemC0461b) menuItem));
        }

        /* renamed from: b */
        public ActionMode m7630b(AbstractC0155b abstractC0155b) {
            int size = this.f543c.size();
            for (int i = 0; i < size; i++) {
                C0160f c0160f = this.f543c.get(i);
                if (c0160f != null && c0160f.f540b == abstractC0155b) {
                    return c0160f;
                }
            }
            C0160f c0160f2 = new C0160f(this.f542b, abstractC0155b);
            this.f543c.add(c0160f2);
            return c0160f2;
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: b */
        public boolean mo7629b(AbstractC0155b abstractC0155b, Menu menu) {
            return this.f541a.onPrepareActionMode(m7630b(abstractC0155b), m7634a(menu));
        }
    }

    public C0160f(Context context, AbstractC0155b abstractC0155b) {
        this.f539a = context;
        this.f540b = abstractC0155b;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f540b.mo7640c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f540b.mo7635i();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC0201o(this.f539a, (AbstractMenuC0460a) this.f540b.mo7643b());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f540b.mo7648a();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f540b.mo7637g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f540b.m7654j();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f540b.mo7638f();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f540b.m7653k();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f540b.mo7639d();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f540b.mo7636h();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f540b.mo7646a(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f540b.mo7642b(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f540b.mo7645a(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f540b.m7655a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f540b.mo7647a(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f540b.mo7641b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f540b.mo7644a(z);
    }
}
