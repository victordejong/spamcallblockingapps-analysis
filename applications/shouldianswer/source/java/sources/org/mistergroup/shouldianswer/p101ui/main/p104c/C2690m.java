package org.mistergroup.shouldianswer.p101ui.main.p104c;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CallLog;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.C0651f;
import androidx.fragment.app.ActivityC0711c;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager;
import org.mistergroup.shouldianswer.model.C2384ab;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2432j;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2112aa;
import org.mistergroup.shouldianswer.p101ui.dialpad.DialpadFragment;
import org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d;
import org.mistergroup.shouldianswer.p101ui.main.C2589a;
import org.mistergroup.shouldianswer.p101ui.main.MainActivity;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.p101ui.settings.protection.SettingsProtectionActivity;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3134x;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.m */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m.class */
public final class C2690m extends AbstractC2709d {

    /* renamed from: a */
    private AbstractC2112aa f7973a;

    /* renamed from: b */
    private C2589a f7974b;

    /* renamed from: c */
    private StickyHeaderLayoutManager f7975c;

    /* renamed from: d */
    private boolean f7976d;

    /* renamed from: e */
    private WeakReference<MainFragment> f7977e;

    /* renamed from: f */
    private C2665h f7978f;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$a.class */
    public final class C2691a extends RecyclerView.AbstractC0965n {
        public C2691a() {
            C2690m.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0965n
        /* renamed from: a */
        public void mo572a(RecyclerView recyclerView, int i, int i2) {
            C2665h c2665h;
            C1694h.m3117b(recyclerView, "recyclerView");
            super.mo572a(recyclerView, i, i2);
            try {
                MainFragment mainFragment = (MainFragment) C2690m.m577a(C2690m.this).get();
                if (mainFragment == null || mainFragment.m765a() != 1 || i2 == 0) {
                    return;
                }
                C2334a.C2339e m1589a = C2690m.m576b(C2690m.this).m1589a(false);
                if (m1589a != null && (c2665h = C2690m.this.f7978f) != null) {
                    c2665h.m608l(c2665h.m615f(m1589a.m1529b(), m1589a.m1542a()));
                }
                if (i2 > 0) {
                    MainFragment mainFragment2 = (MainFragment) C2690m.m577a(C2690m.this).get();
                    if (mainFragment2 == null) {
                        return;
                    }
                    mainFragment2.m756f();
                    return;
                }
                MainFragment mainFragment3 = (MainFragment) C2690m.m577a(C2690m.this).get();
                if (mainFragment3 == null) {
                    return;
                }
                mainFragment3.m757e();
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$b.class */
    public enum EnumC2692b {
        COPY_NUMBER,
        CALL_NUMBER,
        SMS,
        CONTACT_DETAILS,
        CONTACT_CREATE,
        CONTACT_TO_DIAL,
        DELETE_FROM_LOG
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$c.class */
    public static final class C2693c implements Observer {
        C2693c() {
            C2690m.this = r4;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            C2690m.this.m574d();
            MainFragment mainFragment = (MainFragment) C2690m.m577a(C2690m.this).get();
            if (mainFragment != null) {
                mainFragment.m759c();
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$d.class */
    public static final class C2694d implements StickyHeaderLayoutManager.AbstractC2332b {
        C2694d() {
            C2690m.this = r4;
        }

        @Override // org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager.AbstractC2332b
        /* renamed from: a */
        public final void mo429a(int i, View view, StickyHeaderLayoutManager.EnumC2331a enumC2331a, StickyHeaderLayoutManager.EnumC2331a enumC2331a2) {
            if (enumC2331a2 != StickyHeaderLayoutManager.EnumC2331a.STICKY && enumC2331a2 != StickyHeaderLayoutManager.EnumC2331a.TRAILING) {
                view.setBackgroundColor(0);
                return;
            }
            C3134x c3134x = C3134x.f9269a;
            Context context = C2690m.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            view.setBackgroundColor(c3134x.m26a(context, 2130968726));
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$e.class */
    public static final class C2695e extends AbstractC1695i implements AbstractC1663b<NumberInfo, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2695e() {
            super(1);
            C2690m.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(NumberInfo numberInfo) {
            m571a(numberInfo);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m571a(NumberInfo numberInfo) {
            C1694h.m3117b(numberInfo, "numberInfo");
            NumberDetailFragment.C2713b c2713b = NumberDetailFragment.f8028b;
            Context context = C2690m.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2713b.m553b(context, numberInfo);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$f.class */
    public static final class C2696f extends AbstractC1695i implements AbstractC1674m<ContextMenu, C2646c, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2696f() {
            super(2);
            C2690m.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo44a(ContextMenu contextMenu, C2646c c2646c) {
            m570a(contextMenu, c2646c);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m570a(ContextMenu contextMenu, C2646c c2646c) {
            C1694h.m3117b(contextMenu, "menu");
            C1694h.m3117b(c2646c, "item");
            C2589a c2589a = C2690m.this.f7974b;
            if (c2589a != null) {
                c2589a.m746a((C2646c) null);
            }
            NumberInfo m660f = c2646c.m660f();
            if (!C2464x.m964e(m660f)) {
                String m1479b = m660f.m1479b();
                C2589a c2589a2 = C2690m.this.f7974b;
                if (c2589a2 != null) {
                    c2589a2.m746a(c2646c);
                }
                contextMenu.setHeaderTitle(m1479b);
                contextMenu.add(0, EnumC2692b.COPY_NUMBER.ordinal(), 0, 2131755254);
                contextMenu.add(0, EnumC2692b.CALL_NUMBER.ordinal(), 0, 2131755252);
                contextMenu.add(0, EnumC2692b.SMS.ordinal(), 0, 2131755258);
                if (m660f.m1451o() != null) {
                    contextMenu.add(0, EnumC2692b.CONTACT_TO_DIAL.ordinal(), 0, 2131755255);
                    contextMenu.add(0, EnumC2692b.CONTACT_DETAILS.ordinal(), 0, 2131755253);
                } else {
                    contextMenu.add(0, EnumC2692b.CONTACT_CREATE.ordinal(), 0, 2131755256);
                }
            }
            contextMenu.add(0, EnumC2692b.DELETE_FROM_LOG.ordinal(), 0, C2690m.this.getString(2131755017));
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$g.class */
    public static final class View$OnClickListenerC2697g implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ MainActivity f7992a;

        View$OnClickListenerC2697g(MainActivity mainActivity) {
            this.f7992a = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsProtectionActivity.f8801l.m301a(this.f7992a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$h.class */
    public static final class View$OnClickListenerC2698h implements View.OnClickListener {
        View$OnClickListenerC2698h() {
            C2690m.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2690m.this.requestPermissions(new String[]{"android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS"}, 0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$i.class */
    public static final class C2699i extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7994a;

        /* renamed from: b */
        int f7995b;

        /* renamed from: c */
        int f7996c;

        /* renamed from: d */
        int f7997d;

        /* renamed from: e */
        final /* synthetic */ C2690m f7998e;

        /* renamed from: f */
        final /* synthetic */ MenuItem f7999f;

        /* renamed from: g */
        private AbstractC1786ad f8000g;

        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$i$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$i$1.class */
        public static final class C27001 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8001a;

            /* renamed from: b */
            Object f8002b;

            /* renamed from: c */
            int f8003c;

            /* renamed from: e */
            private AbstractC1786ad f8005e;

            /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$i$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$i$1$1.class */
            public static final class C27011 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                Object f8006a;

                /* renamed from: b */
                int f8007b;

                /* renamed from: c */
                final /* synthetic */ ArrayList f8008c;

                /* renamed from: d */
                final /* synthetic */ C27001 f8009d;

                /* renamed from: e */
                private AbstractC1786ad f8010e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27011(ArrayList arrayList, AbstractC1641c abstractC1641c, C27001 c27001) {
                    super(2, abstractC1641c);
                    this.f8008c = arrayList;
                    this.f8009d = c27001;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27011) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27011 c27011 = new C27011(this.f8008c, abstractC1641c, this.f8009d);
                    c27011.f8010e = (AbstractC1786ad) obj;
                    return c27011;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1775o c1775o;
                    Object a = C1622b.m3174a();
                    int i = this.f8007b;
                    if (i == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8010e;
                        C2665h c2665h = C2699i.this.f7998e.f7978f;
                        if (c2665h == null) {
                            c1775o = null;
                            return c1775o;
                        }
                        ArrayList<C2432j.C2434b> arrayList = this.f8008c;
                        this.f8006a = abstractC1786ad;
                        this.f8007b = 1;
                        Object m627a = c2665h.m627a(arrayList, this);
                        obj = m627a;
                        if (m627a == a) {
                            return a;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8006a;
                        C1771k.m2979a(obj);
                    }
                    c1775o = (C1775o) obj;
                    return c1775o;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27001(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2699i.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27001) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27001 c27001 = new C27001(abstractC1641c);
                c27001.f8005e = (AbstractC1786ad) obj;
                return c27001;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1775o c1775o;
                C2646c m737h;
                ArrayList<C2432j.C2434b> m664b;
                Object a = C1622b.m3174a();
                int i = this.f8003c;
                try {
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    c1775o = C1775o.f4450a;
                }
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8005e;
                    C2589a c2589a = C2699i.this.f7998e.f7974b;
                    if (c2589a == null || (m737h = c2589a.m737h()) == null || (m664b = m737h.m664b()) == null) {
                        c1775o = null;
                        return c1775o;
                    }
                    for (C2432j.C2434b c2434b : m664b) {
                        C3104j.m157a(C3104j.f9124a, "LogsFragment.DeleteFromLog deleting item " + String.valueOf(c2434b.m1044a()), (String) null, 2, (Object) null);
                        MyApp.f5480c.m1801b().delete(CallLog.Calls.CONTENT_URI, "_id=?", new String[]{String.valueOf(c2434b.m1044a())});
                    }
                    this.f8001a = abstractC1786ad;
                    this.f8002b = m664b;
                    this.f8003c = 1;
                    Object m2686a = C1890e.m2686a(C3084c.m193a(), new C27011(m664b, null, this), this);
                    obj = m2686a;
                    if (m2686a == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ArrayList arrayList = (ArrayList) this.f8002b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8001a;
                    C1771k.m2979a(obj);
                }
                c1775o = (C1775o) obj;
                return c1775o;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2699i(AbstractC1641c abstractC1641c, C2690m c2690m, MenuItem menuItem) {
            super(2, abstractC1641c);
            this.f7998e = c2690m;
            this.f7999f = menuItem;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2699i) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2699i c2699i = new C2699i(abstractC1641c, this.f7998e, this.f7999f);
            c2699i.f8000g = (AbstractC1786ad) obj;
            return c2699i;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0107  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00c1 -> B:21:0x00c6). Please submit an issue!!! */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2690m.C2699i.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$j.class */
    static final class MenuItem$OnMenuItemClickListenerC2702j implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        final /* synthetic */ C2672j.EnumC2674a f8012b;

        MenuItem$OnMenuItemClickListenerC2702j(C2672j.EnumC2674a enumC2674a) {
            C2690m.this = r4;
            this.f8012b = enumC2674a;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C2665h c2665h = C2690m.this.f7978f;
            if (c2665h != null) {
                c2665h.m621a(C2672j.EnumC2674a.ALL, C2690m.m576b(C2690m.this));
            }
            ActivityC0711c activity = C2690m.this.getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
            C2690m.this.m574d();
            return true;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$k.class */
    static final class MenuItem$OnMenuItemClickListenerC2703k implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        final /* synthetic */ C2672j.EnumC2674a f8014b;

        MenuItem$OnMenuItemClickListenerC2703k(C2672j.EnumC2674a enumC2674a) {
            C2690m.this = r4;
            this.f8014b = enumC2674a;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C2665h c2665h = C2690m.this.f7978f;
            if (c2665h != null) {
                c2665h.m621a(C2672j.EnumC2674a.FAMILIAR, C2690m.m576b(C2690m.this));
            }
            ActivityC0711c activity = C2690m.this.getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
            C2690m.this.m574d();
            return true;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$l.class */
    static final class MenuItem$OnMenuItemClickListenerC2704l implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        final /* synthetic */ C2672j.EnumC2674a f8016b;

        MenuItem$OnMenuItemClickListenerC2704l(C2672j.EnumC2674a enumC2674a) {
            C2690m.this = r4;
            this.f8016b = enumC2674a;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C2665h c2665h = C2690m.this.f7978f;
            if (c2665h != null) {
                c2665h.m621a(C2672j.EnumC2674a.UNFAMILIAR, C2690m.m576b(C2690m.this));
            }
            ActivityC0711c activity = C2690m.this.getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
            C2690m.this.m574d();
            return true;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.m$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/m$m.class */
    static final class MenuItem$OnMenuItemClickListenerC2705m implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        final /* synthetic */ C2672j.EnumC2674a f8018b;

        MenuItem$OnMenuItemClickListenerC2705m(C2672j.EnumC2674a enumC2674a) {
            C2690m.this = r4;
            this.f8018b = enumC2674a;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C2665h c2665h = C2690m.this.f7978f;
            if (c2665h != null) {
                c2665h.m621a(C2672j.EnumC2674a.BLOCKED, C2690m.m576b(C2690m.this));
            }
            ActivityC0711c activity = C2690m.this.getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
            C2690m.this.m574d();
            return true;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ WeakReference m577a(C2690m c2690m) {
        WeakReference<MainFragment> weakReference = c2690m.f7977e;
        if (weakReference == null) {
            C1694h.m3116b("homeFragment");
        }
        return weakReference;
    }

    /* renamed from: b */
    public static final /* synthetic */ StickyHeaderLayoutManager m576b(C2690m c2690m) {
        StickyHeaderLayoutManager stickyHeaderLayoutManager = c2690m.f7975c;
        if (stickyHeaderLayoutManager == null) {
            C1694h.m3116b("layoutManager");
        }
        return stickyHeaderLayoutManager;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d
    /* renamed from: c */
    public void mo563c() {
        try {
            if (m564b()) {
                return;
            }
            MainActivity a = m567a();
            AbstractC2112aa abstractC2112aa = this.f7973a;
            if (a == null) {
                C3104j.m152c(C3104j.f9124a, "LogsFragment.init mainActivity is null!", null, 2, null);
            } else if (abstractC2112aa == null) {
                C3104j.m157a(C3104j.f9124a, "LogsFragment.init binding is null,skipping!", (String) null, 2, (Object) null);
            } else {
                C3104j.m157a(C3104j.f9124a, "LogsFragment.init", (String) null, 2, (Object) null);
                this.f7974b = a.m767m();
                this.f7977e = MainFragment.f7560b.m753a();
                this.f7975c = new StickyHeaderLayoutManager();
                C2665h c2665h = new C2665h();
                c2665h.m614g().addObserver(new C2693c());
                this.f7978f = c2665h;
                RecyclerView recyclerView = abstractC2112aa.f5490e;
                C1694h.m3122a((Object) recyclerView, "binding.listCallHistory");
                recyclerView.setAdapter(c2665h);
                RecyclerView recyclerView2 = abstractC2112aa.f5490e;
                C1694h.m3122a((Object) recyclerView2, "binding.listCallHistory");
                StickyHeaderLayoutManager stickyHeaderLayoutManager = this.f7975c;
                if (stickyHeaderLayoutManager == null) {
                    C1694h.m3116b("layoutManager");
                }
                recyclerView2.setLayoutManager(stickyHeaderLayoutManager);
                abstractC2112aa.f5490e.addOnScrollListener(new C2691a());
                RecyclerView recyclerView3 = abstractC2112aa.f5490e;
                C1694h.m3122a((Object) recyclerView3, "binding.listCallHistory");
                recyclerView3.setItemAnimator(null);
                registerForContextMenu(abstractC2112aa.f5490e);
                StickyHeaderLayoutManager stickyHeaderLayoutManager2 = this.f7975c;
                if (stickyHeaderLayoutManager2 == null) {
                    C1694h.m3116b("layoutManager");
                }
                stickyHeaderLayoutManager2.m1591a(new C2694d());
                c2665h.m626a(new C2695e());
                c2665h.m625a(new C2696f());
                abstractC2112aa.f5489d.setOnClickListener(new View$OnClickListenerC2697g(a));
                abstractC2112aa.f5488c.setOnClickListener(new View$OnClickListenerC2698h());
                C2672j.EnumC2674a enumC2674a = C2672j.EnumC2674a.ALL;
                StickyHeaderLayoutManager stickyHeaderLayoutManager3 = this.f7975c;
                if (stickyHeaderLayoutManager3 == null) {
                    C1694h.m3116b("layoutManager");
                }
                c2665h.m621a(enumC2674a, stickyHeaderLayoutManager3);
                m574d();
                m565a(true);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: d */
    public final void m574d() {
        try {
            AbstractC2112aa abstractC2112aa = this.f7973a;
            if (abstractC2112aa == null) {
                return;
            }
            C2589a c2589a = this.f7974b;
            C2665h c2665h = this.f7978f;
            if (c2589a == null || c2665h == null) {
                return;
            }
            boolean z = true;
            boolean z2 = c2665h.getItemCount() == 0;
            boolean m609l = c2665h.m609l();
            boolean m117f = C3115o.f9175a.m117f();
            if (m117f && this.f7976d) {
                C3104j.m157a(C3104j.f9124a, "LogsFragment.updateUI - invalidating LogsLiveData due fixed permissions", (String) null, 2, (Object) null);
                C2665h c2665h2 = this.f7978f;
                if (c2665h2 != null) {
                    c2665h2.m622a(C2672j.EnumC2674a.NONE);
                }
                C2384ab.f6871a.m1371a()[C2672j.EnumC2674a.ALL.m585a()] = null;
                C2665h c2665h3 = this.f7978f;
                if (c2665h3 != null) {
                    C2672j.EnumC2674a enumC2674a = C2672j.EnumC2674a.ALL;
                    StickyHeaderLayoutManager stickyHeaderLayoutManager = this.f7975c;
                    if (stickyHeaderLayoutManager == null) {
                        C1694h.m3116b("layoutManager");
                    }
                    c2665h3.m621a(enumC2674a, stickyHeaderLayoutManager);
                }
            }
            if (m117f) {
                z = false;
            }
            this.f7976d = z;
            LinearLayout linearLayout = abstractC2112aa.f5491f;
            C1694h.m3122a((Object) linearLayout, "binding.llLoadingData");
            linearLayout.setVisibility((!m609l || !m117f) ? 8 : 0);
            FrameLayout frameLayout = abstractC2112aa.f5493h;
            C1694h.m3122a((Object) frameLayout, "binding.llNoItems");
            frameLayout.setVisibility((m609l || !z2) ? 8 : 0);
            AppCompatTextView appCompatTextView = abstractC2112aa.f5496k;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvEmptyListInfo");
            appCompatTextView.setVisibility((m609l || !z2 || c2665h.m618d() == C2672j.EnumC2674a.BLOCKED) ? 8 : 0);
            AppCompatTextView appCompatTextView2 = abstractC2112aa.f5495j;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvEmptyBlockListInfo");
            appCompatTextView2.setVisibility((m609l || !z2 || c2665h.m618d() != C2672j.EnumC2674a.BLOCKED) ? 8 : 0);
            LinearLayout linearLayout2 = abstractC2112aa.f5492g;
            C1694h.m3122a((Object) linearLayout2, "binding.llNoDefaultPhoneApp");
            linearLayout2.setVisibility(8);
            LinearLayout linearLayout3 = abstractC2112aa.f5494i;
            C1694h.m3122a((Object) linearLayout3, "binding.llNoPermissions");
            linearLayout3.setVisibility(!m117f ? 0 : 8);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C3104j.m157a(C3104j.f9124a, "LogsFragment.onActivityCreated", (String) null, 2, (Object) null);
        if (m564b() || C2398ai.f6930a.m1287b() != 1) {
            return;
        }
        mo563c();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        C1694h.m3117b(context, "context");
        super.onAttach(context);
        C3104j.m157a(C3104j.f9124a, "LogsFragment.onAttach", (String) null, 2, (Object) null);
        m566a((MainActivity) context);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C2646c m737h;
        NumberInfo m660f;
        C1694h.m3117b(menuItem, "item");
        if (!getUserVisibleHint()) {
            return false;
        }
        try {
            C2589a c2589a = this.f7974b;
            if (c2589a == null || (m737h = c2589a.m737h()) == null || (m660f = m737h.m660f()) == null) {
                return true;
            }
            String m1479b = m660f.m1479b();
            switch (EnumC2692b.values()[menuItem.getItemId()]) {
                case COPY_NUMBER:
                    C3135y.f9272b.m23a().setPrimaryClip(ClipData.newPlainText("phone number", m1479b));
                    return true;
                case CALL_NUMBER:
                    C3086e c3086e = C3086e.f9028a;
                    Context context = getContext();
                    if (context == null) {
                        C1694h.m3124a();
                    }
                    C1694h.m3122a((Object) context, "context!!");
                    c3086e.m187a(context, m1479b, (AbstractC1663b<? super Boolean, C1775o>) null);
                    return true;
                case SMS:
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse("sms: " + m1479b));
                    startActivity(intent);
                    return true;
                case CONTACT_DETAILS:
                    C2385ac m1451o = m660f.m1451o();
                    if (m1451o == null) {
                        return true;
                    }
                    ActivityC0711c activity = getActivity();
                    if (activity == null) {
                        C1694h.m3124a();
                    }
                    C1694h.m3122a((Object) activity, "activity!!");
                    m1451o.m1366a(activity);
                    return true;
                case CONTACT_TO_DIAL:
                    DialpadFragment.C2519a c2519a = DialpadFragment.f7404b;
                    ActivityC0711c activity2 = getActivity();
                    if (activity2 == null) {
                        C1694h.m3124a();
                    }
                    C1694h.m3122a((Object) activity2, "activity!!");
                    c2519a.m844a(activity2, m1479b);
                    return true;
                case CONTACT_CREATE:
                    try {
                        Intent intent2 = new Intent("android.intent.action.INSERT");
                        intent2.setType("vnd.android.cursor.dir/contact");
                        intent2.putExtra("phone", m1479b);
                        startActivity(intent2);
                        C1775o c1775o = C1775o.f4450a;
                        return true;
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                        C1775o c1775o2 = C1775o.f4450a;
                        return true;
                    }
                case DELETE_FROM_LOG:
                    if (!C3115o.f9175a.m116g()) {
                        requestPermissions(new String[]{"android.permission.WRITE_CALL_LOG"}, 0);
                    }
                    C1892g.m2677a(C1843bd.f4587a, null, null, new C2699i(null, this, menuItem), 3, null);
                    return true;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            return true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        try {
            menuInflater.inflate(2131623936, menu);
            MenuItem findItem = menu.findItem(2131361853);
            if (findItem != null) {
                findItem.setVisible(false);
            }
            MenuItem findItem2 = menu.findItem(2131361854);
            if (findItem2 != null) {
                findItem2.setVisible(false);
            }
            C2665h c2665h = this.f7978f;
            C2672j.EnumC2674a m618d = c2665h != null ? c2665h.m618d() : null;
            MenuItem findItem3 = menu.findItem(2131361849);
            if (findItem3 != null) {
                findItem3.setVisible(true);
                findItem3.setChecked(m618d == C2672j.EnumC2674a.ALL);
                findItem3.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC2702j(m618d));
            }
            MenuItem findItem4 = menu.findItem(2131361851);
            if (findItem4 != null) {
                findItem4.setVisible(true);
                findItem4.setChecked(m618d == C2672j.EnumC2674a.FAMILIAR);
                findItem4.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC2703k(m618d));
            }
            MenuItem findItem5 = menu.findItem(2131361852);
            if (findItem5 != null) {
                findItem5.setVisible(true);
                findItem5.setChecked(m618d == C2672j.EnumC2674a.UNFAMILIAR);
                findItem5.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC2704l(m618d));
            }
            MenuItem findItem6 = menu.findItem(2131361850);
            if (findItem6 != null) {
                findItem6.setVisible(true);
                boolean z = false;
                if (m618d == C2672j.EnumC2674a.BLOCKED) {
                    z = true;
                }
                findItem6.setChecked(z);
                findItem6.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC2705m(m618d));
            }
            super.onCreateOptionsMenu(menu, menuInflater);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        C3104j.m157a(C3104j.f9124a, "LogsFragment.onCreateView", (String) null, 2, (Object) null);
        this.f7973a = (AbstractC2112aa) C0651f.m5843a(layoutInflater, 2131558456, viewGroup, false);
        AbstractC2112aa abstractC2112aa = this.f7973a;
        View view = null;
        if (abstractC2112aa != null) {
            view = abstractC2112aa.m5863d();
        }
        return view;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C2665h c2665h = this.f7978f;
        if (c2665h != null) {
            c2665h.m611j();
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C2665h c2665h = this.f7978f;
        if (c2665h != null) {
            c2665h.m612i();
        }
        m574d();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "LogsFragment.setUserVisibleHint " + z, (String) null, 2, (Object) null);
        super.setUserVisibleHint(z);
        if (m564b() || m567a() == null || !z) {
            return;
        }
        mo563c();
    }
}
