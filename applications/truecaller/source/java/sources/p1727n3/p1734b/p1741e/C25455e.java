package p1727n3.p1734b.p1741e;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1741e.p1742i.MenuC25487o;
import p1727n3.p1734b.p1741e.p1742i.MenuItemC25475j;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuC26505a;
import p1727n3.p1807k.p1814d.p1815a.AbstractMenuItemC26506b;
/* renamed from: n3.b.e.e */
/* loaded from: classes-dex2jar.jar:n3/b/e/e.class */
public class C25455e extends ActionMode {

    /* renamed from: a */
    public final Context f71108a;

    /* renamed from: b */
    public final AbstractC25450a f71109b;

    /* renamed from: n3.b.e.e$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/e$a.class */
    public static class C25456a implements AbstractC25450a.AbstractC25451a {

        /* renamed from: a */
        public final ActionMode.Callback f71110a;

        /* renamed from: b */
        public final Context f71111b;

        /* renamed from: c */
        public final ArrayList<C25455e> f71112c = new ArrayList<>();

        /* renamed from: d */
        public final C26187h<Menu, Menu> f71113d = new C26187h<>();

        public C25456a(Context context, ActionMode.Callback callback) {
            this.f71111b = context;
            this.f71110a = callback;
        }

        /* renamed from: a */
        public ActionMode m3505a(AbstractC25450a abstractC25450a) {
            int size = this.f71112c.size();
            for (int i = 0; i < size; i++) {
                C25455e c25455e = this.f71112c.get(i);
                if (c25455e != null && c25455e.f71109b == abstractC25450a) {
                    return c25455e;
                }
            }
            C25455e c25455e2 = new C25455e(this.f71111b, abstractC25450a);
            this.f71112c.add(c25455e2);
            return c25455e2;
        }

        /* renamed from: b */
        public final Menu m3504b(Menu menu) {
            Menu orDefault = this.f71113d.getOrDefault(menu, null);
            MenuC25487o menuC25487o = orDefault;
            if (orDefault == null) {
                menuC25487o = new MenuC25487o(this.f71111b, (AbstractMenuC26505a) menu);
                this.f71113d.put(menu, menuC25487o);
            }
            return menuC25487o;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            return this.f71110a.onCreateActionMode(m3505a(abstractC25450a), m3504b(menu));
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            return this.f71110a.onPrepareActionMode(m3505a(abstractC25450a), m3504b(menu));
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            return this.f71110a.onActionItemClicked(m3505a(abstractC25450a), new MenuItemC25475j(this.f71111b, (AbstractMenuItemC26506b) menuItem));
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            this.f71110a.onDestroyActionMode(m3505a(abstractC25450a));
        }
    }

    public C25455e(Context context, AbstractC25450a abstractC25450a) {
        this.f71108a = context;
        this.f71109b = abstractC25450a;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f71109b.mo3519c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f71109b.mo3518d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC25487o(this.f71108a, (AbstractMenuC26505a) this.f71109b.mo3517e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f71109b.mo3516f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f71109b.mo3515g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f71109b.f71095a;
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f71109b.mo3514h();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f71109b.f71096b;
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f71109b.mo3513i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f71109b.mo3512j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f71109b.mo3511k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f71109b.mo3510l(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f71109b.mo3509m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f71109b.f71095a = obj;
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f71109b.mo3508n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f71109b.mo3507o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f71109b.mo3506p(z);
    }
}
