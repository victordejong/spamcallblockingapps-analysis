package p020b.p021a.p028o;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuC0197o;
import androidx.appcompat.view.menu.MenuItemC0184j;
import java.util.ArrayList;
import p020b.p021a.p028o.AbstractC1455b;
import p020b.p036e.C1502g;
import p020b.p041h.p043f.p044a.AbstractMenuC1539a;
import p020b.p041h.p043f.p044a.AbstractMenuItemC1540b;
/* renamed from: b.a.o.f */
/* loaded from: classes-dex2jar.jar:b/a/o/f.class */
public class C1460f extends ActionMode {

    /* renamed from: a */
    final Context f5848a;

    /* renamed from: b */
    final AbstractC1455b f5849b;

    /* renamed from: b.a.o.f$a */
    /* loaded from: classes-dex2jar.jar:b/a/o/f$a.class */
    public static class C1461a implements AbstractC1455b.AbstractC1456a {

        /* renamed from: a */
        final ActionMode.Callback f5850a;

        /* renamed from: b */
        final Context f5851b;

        /* renamed from: c */
        final ArrayList<C1460f> f5852c = new ArrayList<>();

        /* renamed from: d */
        final C1502g<Menu, Menu> f5853d = new C1502g<>();

        public C1461a(Context context, ActionMode.Callback callback) {
            this.f5851b = context;
            this.f5850a = callback;
        }

        /* renamed from: f */
        private Menu m30017f(Menu menu) {
            Menu menu2 = this.f5853d.get(menu);
            MenuC0197o menuC0197o = menu2;
            if (menu2 == null) {
                menuC0197o = new MenuC0197o(this.f5851b, (AbstractMenuC1539a) menu);
                this.f5853d.put(menu, menuC0197o);
            }
            return menuC0197o;
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: a */
        public void mo30022a(AbstractC1455b abstractC1455b) {
            this.f5850a.onDestroyActionMode(m30018e(abstractC1455b));
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: b */
        public boolean mo30021b(AbstractC1455b abstractC1455b, Menu menu) {
            return this.f5850a.onCreateActionMode(m30018e(abstractC1455b), m30017f(menu));
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: c */
        public boolean mo30020c(AbstractC1455b abstractC1455b, Menu menu) {
            return this.f5850a.onPrepareActionMode(m30018e(abstractC1455b), m30017f(menu));
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: d */
        public boolean mo30019d(AbstractC1455b abstractC1455b, MenuItem menuItem) {
            return this.f5850a.onActionItemClicked(m30018e(abstractC1455b), new MenuItemC0184j(this.f5851b, (AbstractMenuItemC1540b) menuItem));
        }

        /* renamed from: e */
        public ActionMode m30018e(AbstractC1455b abstractC1455b) {
            int size = this.f5852c.size();
            for (int i = 0; i < size; i++) {
                C1460f c1460f = this.f5852c.get(i);
                if (c1460f != null && c1460f.f5849b == abstractC1455b) {
                    return c1460f;
                }
            }
            C1460f c1460f2 = new C1460f(this.f5851b, abstractC1455b);
            this.f5852c.add(c1460f2);
            return c1460f2;
        }
    }

    public C1460f(Context context, AbstractC1455b abstractC1455b) {
        this.f5848a = context;
        this.f5849b = abstractC1455b;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f5849b.mo30036c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f5849b.mo30035d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC0197o(this.f5848a, (AbstractMenuC1539a) this.f5849b.mo30034e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f5849b.mo30033f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f5849b.mo30032g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f5849b.m30046h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f5849b.mo30031i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f5849b.m30045j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f5849b.mo30030k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f5849b.mo30029l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f5849b.mo30028m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f5849b.mo30027n(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f5849b.mo30026o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f5849b.m30044p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f5849b.mo30025q(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f5849b.mo30024r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f5849b.mo30023s(z);
    }
}
