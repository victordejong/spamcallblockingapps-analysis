package p012b.p016b.p024p;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p016b.p024p.p025j.MenuC0666o;
import p012b.p016b.p024p.p025j.MenuItemC0653j;
import p012b.p035f.C0793g;
import p012b.p042i.p048k.p049a.AbstractMenuC0913a;
import p012b.p042i.p048k.p049a.AbstractMenuItemC0914b;
/* renamed from: b.b.p.f */
/* loaded from: classes-dex2jar.jar:b/b/p/f.class */
public class C0627f extends ActionMode {

    /* renamed from: a */
    public final Context f3087a;

    /* renamed from: b */
    public final AbstractC0622b f3088b;

    /* renamed from: b.b.p.f$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/f$a.class */
    public static class C0628a implements AbstractC0622b.AbstractC0623a {

        /* renamed from: a */
        public final ActionMode.Callback f3089a;

        /* renamed from: b */
        public final Context f3090b;

        /* renamed from: c */
        public final ArrayList<C0627f> f3091c = new ArrayList<>();

        /* renamed from: d */
        public final C0793g<Menu, Menu> f3092d = new C0793g<>();

        public C0628a(Context context, ActionMode.Callback callback) {
            this.f3090b = context;
            this.f3089a = callback;
        }

        /* renamed from: a */
        public final Menu m36681a(Menu menu) {
            Menu menu2 = this.f3092d.get(menu);
            Menu menu3 = menu2;
            if (menu2 == null) {
                menu3 = new MenuC0666o(this.f3090b, (AbstractMenuC0913a) menu);
                this.f3092d.put(menu, menu3);
            }
            return menu3;
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: a */
        public void mo36680a(AbstractC0622b bVar) {
            this.f3089a.onDestroyActionMode(m36677b(bVar));
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: a */
        public boolean mo36679a(AbstractC0622b bVar, Menu menu) {
            return this.f3089a.onCreateActionMode(m36677b(bVar), m36681a(menu));
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: a */
        public boolean mo36678a(AbstractC0622b bVar, MenuItem menuItem) {
            return this.f3089a.onActionItemClicked(m36677b(bVar), new MenuItemC0653j(this.f3090b, (AbstractMenuItemC0914b) menuItem));
        }

        /* renamed from: b */
        public ActionMode m36677b(AbstractC0622b bVar) {
            int size = this.f3091c.size();
            for (int i = 0; i < size; i++) {
                C0627f fVar = this.f3091c.get(i);
                if (fVar != null && fVar.f3088b == bVar) {
                    return fVar;
                }
            }
            C0627f fVar2 = new C0627f(this.f3090b, bVar);
            this.f3091c.add(fVar2);
            return fVar2;
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: b */
        public boolean mo36676b(AbstractC0622b bVar, Menu menu) {
            return this.f3089a.onPrepareActionMode(m36677b(bVar), m36681a(menu));
        }
    }

    public C0627f(Context context, AbstractC0622b bVar) {
        this.f3087a = context;
        this.f3088b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f3088b.mo36695a();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f3088b.mo36690b();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC0666o(this.f3087a, (AbstractMenuC0913a) this.f3088b.mo36687c());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f3088b.mo36686d();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f3088b.mo36685e();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f3088b.m36702f();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f3088b.mo36684g();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f3088b.m36701h();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f3088b.mo36683i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f3088b.mo36682j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f3088b.mo36693a(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f3088b.mo36694a(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f3088b.mo36692a(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f3088b.m36703a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f3088b.mo36689b(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f3088b.mo36688b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f3088b.mo36691a(z);
    }
}
