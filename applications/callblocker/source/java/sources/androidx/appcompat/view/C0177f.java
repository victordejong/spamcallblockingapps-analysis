package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0172b;
import androidx.appcompat.view.menu.MenuC0218o;
import androidx.appcompat.view.menu.MenuItemC0205j;
import androidx.core.p019b.p020a.AbstractMenuC0483a;
import androidx.core.p019b.p020a.AbstractMenuItemC0484b;
import androidx.p013b.C0386g;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f.class */
public class C0177f extends ActionMode {

    /* renamed from: a */
    final Context f591a;

    /* renamed from: b */
    final AbstractC0172b f592b;

    /* renamed from: androidx.appcompat.view.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f$a.class */
    public static class C0178a implements AbstractC0172b.AbstractC0173a {

        /* renamed from: a */
        final ActionMode.Callback f593a;

        /* renamed from: b */
        final Context f594b;

        /* renamed from: c */
        final ArrayList<C0177f> f595c = new ArrayList<>();

        /* renamed from: d */
        final C0386g<Menu, Menu> f596d = new C0386g<>();

        public C0178a(Context context, ActionMode.Callback callback) {
            this.f594b = context;
            this.f593a = callback;
        }

        /* renamed from: a */
        private Menu m21965a(Menu menu) {
            Menu menu2 = this.f596d.get(menu);
            MenuC0218o menuC0218o = menu2;
            if (menu2 == null) {
                menuC0218o = new MenuC0218o(this.f594b, (AbstractMenuC0483a) menu);
                this.f596d.put(menu, menuC0218o);
            }
            return menuC0218o;
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: a */
        public void mo21964a(AbstractC0172b abstractC0172b) {
            this.f593a.onDestroyActionMode(m21961b(abstractC0172b));
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: a */
        public boolean mo21963a(AbstractC0172b abstractC0172b, Menu menu) {
            return this.f593a.onCreateActionMode(m21961b(abstractC0172b), m21965a(menu));
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: a */
        public boolean mo21962a(AbstractC0172b abstractC0172b, MenuItem menuItem) {
            return this.f593a.onActionItemClicked(m21961b(abstractC0172b), new MenuItemC0205j(this.f594b, (AbstractMenuItemC0484b) menuItem));
        }

        /* renamed from: b */
        public ActionMode m21961b(AbstractC0172b abstractC0172b) {
            C0177f c0177f;
            int size = this.f595c.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    c0177f = new C0177f(this.f594b, abstractC0172b);
                    this.f595c.add(c0177f);
                    break;
                }
                C0177f c0177f2 = this.f595c.get(i);
                if (c0177f2 != null && c0177f2.f592b == abstractC0172b) {
                    c0177f = c0177f2;
                    break;
                }
                i++;
            }
            return c0177f;
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: b */
        public boolean mo21960b(AbstractC0172b abstractC0172b, Menu menu) {
            return this.f593a.onPrepareActionMode(m21961b(abstractC0172b), m21965a(menu));
        }
    }

    public C0177f(Context context, AbstractC0172b abstractC0172b) {
        this.f591a = context;
        this.f592b = abstractC0172b;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f592b.mo21971c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f592b.mo21966i();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC0218o(this.f591a, (AbstractMenuC0483a) this.f592b.mo21974b());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f592b.mo21979a();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f592b.mo21968g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f592b.m21985j();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f592b.mo21969f();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f592b.m21984k();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f592b.mo21970d();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f592b.mo21967h();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f592b.mo21977a(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f592b.mo21973b(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f592b.mo21976a(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f592b.m21986a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f592b.mo21978a(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f592b.mo21972b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f592b.mo21975a(z);
    }
}
