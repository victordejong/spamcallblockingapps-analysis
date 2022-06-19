package org.mistergroup.shouldianswer.p101ui.main.p103b;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p015a.C0409a;
import androidx.databinding.C0651f;
import androidx.fragment.app.ActivityC0711c;
import androidx.lifecycle.AbstractC0911q;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.p051a.p052a.p053a.p054a.p056b.C1124b;
import com.p051a.p052a.p053a.p054a.p058c.C1143l;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.components.p099a.C2321g;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2259u;
import org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d;
import org.mistergroup.shouldianswer.p101ui.main.C2589a;
import org.mistergroup.shouldianswer.p101ui.main.MainActivity;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.ui.main.b.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c.class */
public final class C2631c extends AbstractC2709d {

    /* renamed from: a */
    private AbstractC2259u f7724a;

    /* renamed from: b */
    private C2628b f7725b;

    /* renamed from: c */
    private C1143l f7726c = new C1143l();

    /* renamed from: d */
    private boolean f7727d = true;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$a.class */
    public enum EnumC2632a {
        COPY_NUMBER,
        CALL_NUMBER,
        SMS,
        CONTACT_DETAILS
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$b.class */
    public static final class C2633b implements Observer {
        C2633b() {
            C2631c.this = r4;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            C2631c.this.m672d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$c.class */
    public static final class C2634c extends AbstractC1695i implements AbstractC1674m<ContextMenu, C2302a, C1775o> {

        /* renamed from: a */
        final /* synthetic */ C2589a f7734a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2634c(C2589a c2589a) {
            super(2);
            this.f7734a = c2589a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo44a(ContextMenu contextMenu, C2302a c2302a) {
            m671a(contextMenu, c2302a);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m671a(ContextMenu contextMenu, C2302a c2302a) {
            C1694h.m3117b(contextMenu, "menu");
            C1694h.m3117b(c2302a, "item");
            this.f7734a.m747a(c2302a);
            C2385ac m1658f = c2302a.m1658f();
            if (m1658f == null) {
                C1694h.m3124a();
            }
            contextMenu.setHeaderTitle(m1658f.m1360b());
            contextMenu.add(0, EnumC2632a.COPY_NUMBER.ordinal(), 0, 2131755254);
            contextMenu.add(0, EnumC2632a.CALL_NUMBER.ordinal(), 0, 2131755252);
            contextMenu.add(0, EnumC2632a.SMS.ordinal(), 0, 2131755258);
            contextMenu.add(0, EnumC2632a.CONTACT_DETAILS.ordinal(), 0, 2131755253);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$d.class */
    public static final class C2635d<T> implements AbstractC0911q<List<C2302a>> {

        /* renamed from: b */
        final /* synthetic */ C2589a f7736b;

        /* renamed from: c */
        final /* synthetic */ C2628b f7737c;

        @AbstractC1634f(m3162b = "FavoritesFragment.kt", m3161c = {148, 166}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.favorites.FavoritesFragment$init$3$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$d$1.class */
        public static final class C26361 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f7738a;

            /* renamed from: b */
            Object f7739b;

            /* renamed from: c */
            Object f7740c;

            /* renamed from: d */
            Object f7741d;

            /* renamed from: e */
            int f7742e;

            /* renamed from: f */
            int f7743f;

            /* renamed from: h */
            private AbstractC1786ad f7745h;

            @AbstractC1634f(m3162b = "FavoritesFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.favorites.FavoritesFragment$init$3$2$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$d$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$d$1$1.class */
            public static final class C26371 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f7746a;

                /* renamed from: c */
                final /* synthetic */ ArrayList f7748c;

                /* renamed from: d */
                private AbstractC1786ad f7749d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C26371(ArrayList arrayList, AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C26361.this = r5;
                    this.f7748c = arrayList;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C26371) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C26371 c26371 = new C26371(this.f7748c, abstractC1641c);
                    c26371.f7749d = (AbstractC1786ad) obj;
                    return c26371;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f7746a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f7749d;
                        C3104j.m157a(C3104j.f9124a, "FavoritesFragment setData with popular contacts", (String) null, 2, (Object) null);
                        if (this.f7748c.size() > 0) {
                            C2635d.this.f7737c.m685a(C2635d.this.f7736b.m740e(), this.f7748c);
                        }
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26361(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2635d.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26361) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26361 c26361 = new C26361(abstractC1641c);
                c26361.f7745h = (AbstractC1786ad) obj;
                return c26361;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x00e6  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0164  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x027d  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0138 -> B:19:0x013e). Please submit an issue!!! */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r10) {
                /*
                    Method dump skipped, instructions count: 644
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p103b.C2631c.C2635d.C26361.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        C2635d(C2589a c2589a, C2628b c2628b) {
            C2631c.this = r4;
            this.f7736b = c2589a;
            this.f7737c = c2628b;
        }

        /* renamed from: a */
        public final void mo431a(List<C2302a> list) {
            if (list != null) {
                C3104j.m157a(C3104j.f9124a, "FavoritesFragment ContactsLiveData.observe", (String) null, 2, (Object) null);
                ArrayList arrayList = new ArrayList();
                for (C2302a c2302a : list) {
                    arrayList.add(new C2302a(C2302a.EnumC2303a.CONTACT, c2302a.m1658f()));
                }
                this.f7736b.m741c(arrayList);
                this.f7737c.m685a(this.f7736b.m740e(), (List<C2302a>) null);
                C1892g.m2677a(C1843bd.f4587a, null, null, new C26361(null), 3, null);
            }
            C2631c.this.f7727d = false;
            MainFragment mainFragment = MainFragment.f7560b.m753a().get();
            if (mainFragment != null) {
                mainFragment.m759c();
            }
            C2631c.this.m672d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$e.class */
    public static final class C2638e extends AbstractC1695i implements AbstractC1663b<C2385ac, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2638e() {
            super(1);
            C2631c.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2385ac c2385ac) {
            m669a(c2385ac);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m669a(C2385ac c2385ac) {
            C1694h.m3117b(c2385ac, "phoneContact");
            NumberInfo m1346j = c2385ac.m1346j();
            if (m1346j != null) {
                C3086e c3086e = C3086e.f9028a;
                Context context = C2631c.this.getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context, "context!!");
                c3086e.m187a(context, m1346j.m1479b(), (AbstractC1663b<? super Boolean, C1775o>) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$f.class */
    public static final class View$OnClickListenerC2639f implements View.OnClickListener {
        View$OnClickListenerC2639f() {
            C2631c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2631c.this.requestPermissions(new String[]{"android.permission.READ_CONTACTS"}, 0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.c$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/c$g.class */
    static final class MenuItem$OnMenuItemClickListenerC2640g implements MenuItem.OnMenuItemClickListener {
        MenuItem$OnMenuItemClickListenerC2640g() {
            C2631c.this = r4;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C2628b c2628b = C2631c.this.f7725b;
            if (c2628b != null) {
                C2398ai.f6930a.m1233y(!C2398ai.f6930a.m1301J());
                c2628b.m680a(C2398ai.f6930a.m1301J());
                c2628b.m675d();
                ActivityC0711c activity = C2631c.this.getActivity();
                if (activity == null) {
                    return true;
                }
                activity.invalidateOptionsMenu();
                return true;
            }
            return true;
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d
    /* renamed from: c */
    public void mo563c() {
        try {
            if (m564b()) {
                return;
            }
            MainActivity a = m567a();
            AbstractC2259u abstractC2259u = this.f7724a;
            if (a == null) {
                C3104j.m152c(C3104j.f9124a, "FavoritesFragment.init mainActivity is null!", null, 2, null);
            } else if (abstractC2259u == null) {
                C3104j.m157a(C3104j.f9124a, "FavoritesFragment.init binding is null,skipping!", (String) null, 2, (Object) null);
            } else {
                C3104j.m157a(C3104j.f9124a, "FavoritesFragment.init", (String) null, 2, (Object) null);
                C2589a m767m = a.m767m();
                C2628b c2628b = new C2628b(m767m.m740e());
                this.f7725b = c2628b;
                c2628b.m680a(C2398ai.f6930a.m1301J());
                c2628b.m692a().addObserver(new C2633b());
                C1143l c1143l = this.f7726c;
                Context context = getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                c1143l.m4057a((NinePatchDrawable) C0409a.m6753a(context, 2131230815));
                this.f7726c.m4022b(false);
                this.f7726c.m4014c(false);
                this.f7726c.m4033a(true);
                this.f7726c.m4059a(450);
                this.f7726c.m4008d(true);
                this.f7726c.m4030b(250);
                this.f7726c.m4020c(0.8f);
                this.f7726c.m4060a(1.2f);
                this.f7726c.m4031b(FlexItem.FLEX_GROW_DEFAULT);
                RecyclerView.AbstractC0945a m4052a = this.f7726c.m4052a(c2628b);
                C1124b c1124b = new C1124b();
                GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 2);
                RecyclerView recyclerView = abstractC2259u.f6301d;
                C1694h.m3122a((Object) recyclerView, "binding.listView");
                recyclerView.setLayoutManager(gridLayoutManager);
                RecyclerView recyclerView2 = abstractC2259u.f6301d;
                C1694h.m3122a((Object) recyclerView2, "binding.listView");
                recyclerView2.setAdapter(m4052a);
                registerForContextMenu(abstractC2259u.f6301d);
                abstractC2259u.f6301d.setOnCreateContextMenuListener(this);
                RecyclerView recyclerView3 = abstractC2259u.f6301d;
                C1694h.m3122a((Object) recyclerView3, "binding.listView");
                recyclerView3.setItemAnimator(c1124b);
                this.f7726c.m4049a(abstractC2259u.f6301d);
                c2628b.m680a(C2398ai.f6930a.m1301J());
                c2628b.m683a(new C2634c(m767m));
                C2321g.f6563e.m5137a(this, new C2635d(m767m, c2628b));
                c2628b.m684a(new C2638e());
                abstractC2259u.f6300c.setOnClickListener(new View$OnClickListenerC2639f());
                m565a(true);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m672d() {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f7727d
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L3c
            r0 = r6
            org.mistergroup.shouldianswer.ui.main.MainActivity r0 = r0.m567a()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L30
            r0 = r9
            org.mistergroup.shouldianswer.ui.main.a r0 = r0.m767m()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L30
            r0 = r9
            java.util.List r0 = r0.m740e()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L30
            r0 = r9
            boolean r0 = r0.isEmpty()
            r7 = r0
            goto L32
        L30:
            r0 = 0
            r7 = r0
        L32:
            r0 = r7
            if (r0 == 0) goto L3c
            r0 = 1
            r10 = r0
            goto L3f
        L3c:
            r0 = 0
            r10 = r0
        L3f:
            org.mistergroup.shouldianswer.utils.o r0 = org.mistergroup.shouldianswer.utils.C3115o.f9175a
            boolean r0 = r0.m113j()
            r7 = r0
            org.mistergroup.shouldianswer.model.ad r0 = org.mistergroup.shouldianswer.model.C2386ad.f6885a
            boolean r0 = r0.m1342a()
            if (r0 == 0) goto L65
            r0 = r7
            if (r0 == 0) goto L65
            org.mistergroup.shouldianswer.utils.j r0 = org.mistergroup.shouldianswer.utils.C3104j.f9124a
            java.lang.String r1 = "ContactsFragment.updateUI - invalidating ContactsLiveData due fixed permissions"
            r2 = 0
            r3 = 2
            r4 = 0
            org.mistergroup.shouldianswer.utils.C3104j.m157a(r0, r1, r2, r3, r4)
            org.mistergroup.shouldianswer.model.ad r0 = org.mistergroup.shouldianswer.model.C2386ad.f6885a
            r0.m1332d()
        L65:
            r0 = r6
            org.mistergroup.shouldianswer.a.u r0 = r0.f7724a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto Lb2
            r0 = r9
            android.widget.LinearLayout r0 = r0.f6303f
            r11 = r0
            r0 = r11
            java.lang.String r1 = "binding.llNoItems"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r10
            if (r0 == 0) goto L87
            r0 = 0
            r10 = r0
            goto L8b
        L87:
            r0 = 8
            r10 = r0
        L8b:
            r0 = r11
            r1 = r10
            r0.setVisibility(r1)
            r0 = r9
            android.widget.LinearLayout r0 = r0.f6304g
            r9 = r0
            r0 = r9
            java.lang.String r1 = "binding.llNoPermissions"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r7
            if (r0 != 0) goto La8
            r0 = r8
            r10 = r0
            goto Lac
        La8:
            r0 = 8
            r10 = r0
        Lac:
            r0 = r9
            r1 = r10
            r0.setVisibility(r1)
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p103b.C2631c.m672d():void");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C3104j.m157a(C3104j.f9124a, "FavoritesFragment.onActivityCreated", (String) null, 2, (Object) null);
        if (m564b() || C2398ai.f6930a.m1287b() != 0) {
            return;
        }
        mo563c();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        C1694h.m3117b(context, "context");
        super.onAttach(context);
        C3104j.m157a(C3104j.f9124a, "FavoritesFragment.onAttach", (String) null, 2, (Object) null);
        m566a((MainActivity) context);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C2589a m767m;
        C2302a m739f;
        C2385ac m1658f;
        NumberInfo m1346j;
        C1694h.m3117b(menuItem, "item");
        if (!getUserVisibleHint()) {
            return false;
        }
        try {
            MainActivity a = m567a();
            if (a == null || (m767m = a.m767m()) == null || (m739f = m767m.m739f()) == null || (m1658f = m739f.m1658f()) == null || (m1346j = m1658f.m1346j()) == null) {
                return true;
            }
            String m1479b = m1346j.m1479b();
            int i = C2641d.f7753a[EnumC2632a.values()[menuItem.getItemId()].ordinal()];
            if (i == 1) {
                C3135y.f9272b.m23a().setPrimaryClip(ClipData.newPlainText("phone number", m1479b));
                return true;
            } else if (i == 2) {
                C3086e c3086e = C3086e.f9028a;
                Context context = getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context, "context!!");
                c3086e.m187a(context, m1479b, (AbstractC1663b<? super Boolean, C1775o>) null);
                return true;
            } else if (i == 3) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("sms: " + m1479b));
                startActivity(intent);
                return true;
            } else if (i != 4) {
                return true;
            } else {
                ActivityC0711c activity = getActivity();
                if (activity == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) activity, "activity!!");
                m1658f.m1366a(activity);
                return true;
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623936, menu);
        MenuItem findItem = menu.findItem(2131361853);
        if (findItem != null) {
            findItem.setVisible(true);
            findItem.setChecked(C2398ai.f6930a.m1301J());
            findItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC2640g());
        }
        MenuItem findItem2 = menu.findItem(2131361854);
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        MenuItem findItem3 = menu.findItem(2131361849);
        if (findItem3 != null) {
            findItem3.setVisible(false);
        }
        MenuItem findItem4 = menu.findItem(2131361851);
        if (findItem4 != null) {
            findItem4.setVisible(false);
        }
        MenuItem findItem5 = menu.findItem(2131361852);
        if (findItem5 != null) {
            findItem5.setVisible(false);
        }
        MenuItem findItem6 = menu.findItem(2131361850);
        if (findItem6 != null) {
            findItem6.setVisible(false);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        C3104j.m157a(C3104j.f9124a, "FavoritesFragment.onCreateView", (String) null, 2, (Object) null);
        this.f7724a = (AbstractC2259u) C0651f.m5843a(layoutInflater, 2131558453, viewGroup, false);
        AbstractC2259u abstractC2259u = this.f7724a;
        View view = null;
        if (abstractC2259u != null) {
            view = abstractC2259u.m5863d();
        }
        return view;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onPause() {
        this.f7726c.m4013d();
        super.onPause();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m672d();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "FavoritesFragment.setUserVisibleHint " + z, (String) null, 2, (Object) null);
        super.setUserVisibleHint(z);
        if (m564b() || m567a() == null || !z) {
            return;
        }
        mo563c();
    }
}
