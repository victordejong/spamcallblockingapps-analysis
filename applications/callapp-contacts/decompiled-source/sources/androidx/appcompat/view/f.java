package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import androidx.b.g;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f.class */
public final class f extends ActionMode {

    /* renamed from: a  reason: collision with root package name */
    final Context f738a;

    /* renamed from: b  reason: collision with root package name */
    final b f739b;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f$a.class */
    public static final class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        final ActionMode.Callback f740a;

        /* renamed from: b  reason: collision with root package name */
        final Context f741b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayList<f> f742c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        final g<Menu, Menu> f743d = new g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f741b = context;
            this.f740a = callback;
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.f743d.get(menu);
            Menu menu3 = menu2;
            if (menu2 == null) {
                menu3 = new o(this.f741b, (androidx.core.a.a.a) menu);
                this.f743d.put(menu, menu3);
            }
            return menu3;
        }

        @Override // androidx.appcompat.view.b.a
        public final void a(b bVar) {
            this.f740a.onDestroyActionMode(b(bVar));
        }

        @Override // androidx.appcompat.view.b.a
        public final boolean a(b bVar, Menu menu) {
            return this.f740a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public final boolean a(b bVar, MenuItem menuItem) {
            return this.f740a.onActionItemClicked(b(bVar), new j(this.f741b, (androidx.core.a.a.b) menuItem));
        }

        public final ActionMode b(b bVar) {
            int size = this.f742c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.f742c.get(i);
                if (fVar != null && fVar.f739b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f741b, bVar);
            this.f742c.add(fVar2);
            return fVar2;
        }

        @Override // androidx.appcompat.view.b.a
        public final boolean b(b bVar, Menu menu) {
            return this.f740a.onPrepareActionMode(b(bVar), a(menu));
        }
    }

    public f(Context context, b bVar) {
        this.f738a = context;
        this.f739b = bVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f739b.c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f739b.i();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new o(this.f738a, (androidx.core.a.a.a) this.f739b.b());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f739b.a();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f739b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f739b.f730c;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f739b.f();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f739b.f731d;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f739b.d();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f739b.h();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f739b.a(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f739b.b(i);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f739b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f739b.f730c = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f739b.a(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f739b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f739b.a(z);
    }
}
