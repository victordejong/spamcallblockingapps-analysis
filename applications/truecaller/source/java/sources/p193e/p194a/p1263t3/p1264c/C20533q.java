package p193e.p194a.p1263t3.p1264c;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import java.util.Objects;
import p193e.p194a.AbstractC20947v0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1263t3.p1264c.AbstractC20531p;
import p193e.p194a.p682e.C13338z0;
import s1.z.c.l;
/* renamed from: e.a.t3.c.q */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/q.class */
public final class C20533q implements AbstractC20531p {

    /* renamed from: a */
    public final Toolbar f57611a;

    /* renamed from: b */
    public final RecyclerView f57612b;

    /* renamed from: c */
    public final C20530o f57613c;

    /* renamed from: d */
    public final AbstractC20531p.AbstractC20532a f57614d;

    /* renamed from: e.a.t3.c.q$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/q$a.class */
    public static final class View$OnClickListenerC20534a implements View.OnClickListener {
        public View$OnClickListenerC20534a() {
            C20533q.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20533q.this.f57614d.mo11059U0();
        }
    }

    /* renamed from: e.a.t3.c.q$b */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/q$b.class */
    public static final class C20535b implements Toolbar.AbstractC0082f {
        public C20535b() {
            C20533q.this = r4;
        }

        @Override // androidx.appcompat.widget.Toolbar.AbstractC0082f
        public final boolean onMenuItemClick(MenuItem menuItem) {
            l.d(menuItem, "it");
            switch (menuItem.getItemId()) {
                case C2752R.C2754id.menu_reset_values /* 2131364781 */:
                    C20533q.this.f57614d.mo11057i7();
                    return true;
                case C2752R.C2754id.menu_save_and_restart /* 2131364782 */:
                    C20533q.this.f57614d.mo11058U1();
                    return true;
                default:
                    return true;
            }
        }
    }

    /* renamed from: e.a.t3.c.q$c */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/q$c.class */
    public static final class MenuItem$OnActionExpandListenerC20536c implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        public final /* synthetic */ MenuItem f57617a;

        /* renamed from: b */
        public final /* synthetic */ MenuItem f57618b;

        public MenuItem$OnActionExpandListenerC20536c(MenuItem menuItem, MenuItem menuItem2) {
            this.f57617a = menuItem;
            this.f57618b = menuItem2;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            MenuItem menuItem2 = this.f57617a;
            l.d(menuItem2, "menuResetValue");
            menuItem2.setVisible(true);
            MenuItem menuItem3 = this.f57618b;
            l.d(menuItem3, "menuSaveRestart");
            menuItem3.setVisible(true);
            return true;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            MenuItem menuItem2 = this.f57617a;
            l.d(menuItem2, "menuResetValue");
            menuItem2.setVisible(false);
            MenuItem menuItem3 = this.f57618b;
            l.d(menuItem3, "menuSaveRestart");
            menuItem3.setVisible(false);
            return true;
        }
    }

    /* renamed from: e.a.t3.c.q$d */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/q$d.class */
    public static final class C20537d implements SearchView.AbstractC0071l {
        public C20537d() {
            C20533q.this = r4;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextChange(String str) {
            C20533q.this.f57614d.mo11060Hb(str);
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    public C20533q(AbstractC20531p.AbstractC20532a abstractC20532a, View view, AbstractC20947v0<AbstractC20518f> abstractC20947v0) {
        Drawable mutate;
        l.e(abstractC20532a, "listener");
        l.e(view, ViewAction.VIEW);
        l.e(abstractC20947v0, "adapterPresenter");
        this.f57614d = abstractC20532a;
        View findViewById = view.findViewById(2131366512);
        l.d(findViewById, "view.findViewById(R.id.toolbar)");
        Toolbar toolbar = (Toolbar) findViewById;
        this.f57611a = toolbar;
        View findViewById2 = view.findViewById(C2752R.C2754id.features_recycler);
        l.d(findViewById2, "view.findViewById(R.id.features_recycler)");
        RecyclerView recyclerView = (RecyclerView) findViewById2;
        this.f57612b = recyclerView;
        C20530o c20530o = new C20530o(abstractC20947v0);
        this.f57613c = c20530o;
        c20530o.setHasStableIds(true);
        recyclerView.setAdapter(c20530o);
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
        C13338z0 c13338z0 = new C13338z0(view.getContext(), C2752R.layout.feature_header, 0);
        c13338z0.f38756g = false;
        c13338z0.m21902e(0);
        recyclerView.addItemDecoration(c13338z0);
        toolbar.m43079n(C2752R.C2756menu.features_panel);
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon != null && (mutate = navigationIcon.mutate()) != null) {
            mutate.setColorFilter(C19291g.m13612L(toolbar.getContext(), 2130970409), PorterDuff.Mode.SRC_IN);
        }
        toolbar.setNavigationIcon(navigationIcon);
        toolbar.setNavigationOnClickListener(new View$OnClickListenerC20534a());
        toolbar.setOnMenuItemClickListener(new C20535b());
        MenuItem findItem = toolbar.getMenu().findItem(C2752R.C2754id.menu_reset_values);
        MenuItem findItem2 = toolbar.getMenu().findItem(C2752R.C2754id.menu_save_and_restart);
        MenuItem findItem3 = toolbar.getMenu().findItem(C2752R.C2754id.search);
        findItem3.setOnActionExpandListener(new MenuItem$OnActionExpandListenerC20536c(findItem, findItem2));
        l.d(findItem3, "menuSearch");
        View actionView = findItem3.getActionView();
        Objects.requireNonNull(actionView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
        ((SearchView) actionView).setOnQueryTextListener(new C20537d());
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20531p
    public void onDataChanged() {
        this.f57613c.notifyDataSetChanged();
    }
}
