package org.mistergroup.shouldianswer.p101ui.main;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.app.C0082b;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0458m;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.AbstractC0717h;
import androidx.fragment.app.ActivityC0711c;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import java.lang.ref.WeakReference;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1798an;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.p097a.AbstractC2263y;
import org.mistergroup.shouldianswer.p101ui.C2512c;
import org.mistergroup.shouldianswer.p101ui.about.AboutActivity;
import org.mistergroup.shouldianswer.p101ui.dialpad.DialpadFragment;
import org.mistergroup.shouldianswer.p101ui.promo.PromoActivity;
import org.mistergroup.shouldianswer.p101ui.report_issue.ReportIssueActivity;
import org.mistergroup.shouldianswer.p101ui.search.SearchFragment;
import org.mistergroup.shouldianswer.p101ui.settings.SettingsActivity;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3103i;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment.class */
public final class MainFragment extends C2512c {

    /* renamed from: b */
    public static final C2576b f7560b = new C2576b(null);

    /* renamed from: j */
    private static WeakReference<MainFragment> f7561j = new WeakReference<>(null);

    /* renamed from: a */
    protected MainActivity f7562a;

    /* renamed from: c */
    private C0082b f7563c;

    /* renamed from: d */
    private AbstractC2263y f7564d;

    /* renamed from: e */
    private int f7565e = 1;

    /* renamed from: f */
    private C2642c f7566f;

    /* renamed from: g */
    private Toolbar f7567g;

    /* renamed from: h */
    private AbstractC0078a f7568h;

    /* renamed from: i */
    private boolean f7569i;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$a.class */
    public enum EnumC2575a {
        None(0),
        ProtectionNotWork(1),
        BlockingNotActive(2),
        OutdatedDatabase(3),
        UnaccessibleContacts(4),
        OldAppVersions(5),
        ProtectionNotActive(6);
        

        /* renamed from: i */
        private final int f7578i;

        EnumC2575a(int i) {
            this.f7578i = i;
        }

        /* renamed from: a */
        public final int m754a() {
            return this.f7578i;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$b.class */
    public static final class C2576b {
        private C2576b() {
        }

        public /* synthetic */ C2576b(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final PendingIntent m752a(Context context) {
            C1694h.m3117b(context, "context");
            Intent intent = new Intent(context, MainActivity.class);
            intent.setFlags(67108864);
            C0458m m6555a = C0458m.m6555a(context);
            C1694h.m3122a((Object) m6555a, "TaskStackBuilder.create(context)");
            m6555a.m6552a(MainActivity.class);
            m6555a.m6554a(intent);
            return m6555a.m6559a(0, 134217728);
        }

        /* renamed from: a */
        public final WeakReference<MainFragment> m753a() {
            return MainFragment.f7561j;
        }

        /* renamed from: b */
        public final void m751b(Context context) {
            C1694h.m3117b(context, "context");
            PendingIntent m752a = m752a(context);
            if (m752a != null) {
                m752a.send(context, 0, new Intent());
            }
        }
    }

    @AbstractC1634f(m3162b = "MainFragment.kt", m3161c = {122, 124}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainFragment$initAllFragments$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$c.class */
    public static final class C2577c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7579a;

        /* renamed from: b */
        long f7580b;

        /* renamed from: c */
        int f7581c;

        /* renamed from: e */
        private AbstractC1786ad f7583e;

        @AbstractC1634f(m3162b = "MainFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainFragment$initAllFragments$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$c$1.class */
        public static final class C25781 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7584a;

            /* renamed from: c */
            private AbstractC1786ad f7586c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C25781(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2577c.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C25781) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C25781 c25781 = new C25781(abstractC1641c);
                c25781.f7586c = (AbstractC1786ad) obj;
                return c25781;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7584a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7586c;
                    int mo236b = MainFragment.m760b(MainFragment.this).mo236b();
                    for (int i = 0; i < mo236b; i++) {
                        Fragment mo237a = MainFragment.m760b(MainFragment.this).mo237a(i);
                        if (mo237a == null) {
                            throw new TypeCastException("null cannot be cast to non-null type org.mistergroup.shouldianswer.ui.main.PagerFragment");
                        }
                        AbstractC2709d abstractC2709d = (AbstractC2709d) mo237a;
                        abstractC2709d.m566a(MainFragment.this.m761b());
                        abstractC2709d.mo563c();
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2577c(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            MainFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2577c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2577c c2577c = new C2577c(abstractC1641c);
            c2577c.f7583e = (AbstractC1786ad) obj;
            return c2577c;
        }

        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            char c;
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f7581c;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f7583e;
                C3104j.m157a(C3104j.f9124a, "MainFragment.initAllFragments.begin delay 1000 ms", (String) null, 2, (Object) null);
                this.f7579a = abstractC1786ad;
                this.f7580b = 1000L;
                this.f7581c = 1;
                if (C1798an.m2945a(1000L, this) == a) {
                    return a;
                }
                c = 1000;
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                long j = this.f7580b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7579a;
                C1771k.m2979a(obj);
                C3104j.m157a(C3104j.f9124a, "MainFragment.initAllFragments.end", (String) null, 2, (Object) null);
                return C1775o.f4450a;
            } else {
                c = this.f7580b;
                C1771k.m2979a(obj);
                abstractC1786ad = (AbstractC1786ad) this.f7579a;
            }
            C3104j.m157a(C3104j.f9124a, "MainFragment.initAllFragments processing", (String) null, 2, (Object) null);
            this.f7579a = abstractC1786ad;
            this.f7580b = c;
            this.f7581c = 2;
            if (C1890e.m2686a(C3084c.m192b(), new C25781(null), this) == a) {
                return a;
            }
            C3104j.m157a(C3104j.f9124a, "MainFragment.initAllFragments.end", (String) null, 2, (Object) null);
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$d.class */
    public static final class C2579d extends C0082b {

        /* renamed from: d */
        final /* synthetic */ MainActivity f7588d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2579d(MainActivity mainActivity, Activity activity, DrawerLayout drawerLayout, int i, int i2) {
            super(activity, drawerLayout, i, i2);
            MainFragment.this = r7;
            this.f7588d = mainActivity;
        }

        @Override // androidx.appcompat.app.C0082b, androidx.drawerlayout.widget.DrawerLayout.AbstractC0658c
        /* renamed from: a */
        public void mo750a(View view) {
            C1694h.m3117b(view, "drawerView");
            super.mo750a(view);
            this.f7588d.invalidateOptionsMenu();
        }

        @Override // androidx.appcompat.app.C0082b, androidx.drawerlayout.widget.DrawerLayout.AbstractC0658c
        /* renamed from: b */
        public void mo749b(View view) {
            C1694h.m3117b(view, "drawerView");
            super.mo749b(view);
            this.f7588d.invalidateOptionsMenu();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$e.class */
    public static final class C2580e implements ViewPager.AbstractC1096f {

        /* renamed from: b */
        final /* synthetic */ MainActivity f7590b;

        C2580e(MainActivity mainActivity) {
            MainFragment.this = r4;
            this.f7590b = mainActivity;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1096f
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1096f
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1096f
        public void onPageSelected(int i) {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MainActivity.ViewPager Changed page to " + i, (String) null, 2, (Object) null);
            MainFragment.this.m764a(i);
            C2398ai.f6930a.m1295a(MainFragment.this.m765a());
            MainFragment.m762a(MainFragment.this).f6330n.show();
            C3074a c3074a = C3074a.f8976a;
            c3074a.m228b("fragment_" + String.valueOf(i));
            C3103i.f9123a.m167a(this.f7590b);
            if (i == 0) {
                BottomNavigationView bottomNavigationView = MainFragment.m762a(MainFragment.this).f6320d;
                C1694h.m3122a((Object) bottomNavigationView, "binding.bottomNavigation");
                bottomNavigationView.setSelectedItemId(2131362232);
            } else if (i == 1) {
                BottomNavigationView bottomNavigationView2 = MainFragment.m762a(MainFragment.this).f6320d;
                C1694h.m3122a((Object) bottomNavigationView2, "binding.bottomNavigation");
                bottomNavigationView2.setSelectedItemId(2131362233);
            } else if (i == 2) {
                BottomNavigationView bottomNavigationView3 = MainFragment.m762a(MainFragment.this).f6320d;
                C1694h.m3122a((Object) bottomNavigationView3, "binding.bottomNavigation");
                bottomNavigationView3.setSelectedItemId(2131362231);
            }
            MainFragment.this.m761b().invalidateOptionsMenu();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$f.class */
    public static final class View$OnClickListenerC2581f implements View.OnClickListener {
        View$OnClickListenerC2581f() {
            MainFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment.C2519a c2519a = DialpadFragment.f7404b;
            Context context = MainFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2519a.m844a(context, "");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$g.class */
    public static final class C2582g implements BottomNavigationView.OnNavigationItemSelectedListener {
        C2582g() {
            MainFragment.this = r4;
        }

        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            C1694h.m3117b(menuItem, "menuItem");
            switch (menuItem.getItemId()) {
                case 2131362231:
                    ViewPager viewPager = MainFragment.m762a(MainFragment.this).f6335s;
                    C1694h.m3122a((Object) viewPager, "binding.viewPager");
                    viewPager.setCurrentItem(2);
                    return true;
                case 2131362232:
                    ViewPager viewPager2 = MainFragment.m762a(MainFragment.this).f6335s;
                    C1694h.m3122a((Object) viewPager2, "binding.viewPager");
                    viewPager2.setCurrentItem(0);
                    return true;
                case 2131362233:
                    ViewPager viewPager3 = MainFragment.m762a(MainFragment.this).f6335s;
                    C1694h.m3122a((Object) viewPager3, "binding.viewPager");
                    viewPager3.setCurrentItem(1);
                    return true;
                default:
                    return true;
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$h.class */
    public static final class View$OnClickListenerC2583h implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MainActivity f7594b;

        View$OnClickListenerC2583h(MainActivity mainActivity) {
            MainFragment.this = r4;
            this.f7594b = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainFragment.m762a(MainFragment.this).f6329m.m5816b(8388611, true);
            SettingsActivity.f8540l.m361a(this.f7594b);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$i.class */
    public static final class View$OnClickListenerC2584i implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MainActivity f7596b;

        View$OnClickListenerC2584i(MainActivity mainActivity) {
            MainFragment.this = r4;
            this.f7596b = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainFragment.m762a(MainFragment.this).f6329m.m5816b(8388611, true);
            PromoActivity.f8264l.m521a(this.f7596b);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$j.class */
    public static final class View$OnClickListenerC2585j implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MainActivity f7598b;

        View$OnClickListenerC2585j(MainActivity mainActivity) {
            MainFragment.this = r4;
            this.f7598b = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainFragment.m762a(MainFragment.this).f6329m.m5816b(8388611, true);
            ReportIssueActivity.f8302l.m491a(this.f7598b);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$k.class */
    public static final class View$OnClickListenerC2586k implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MainActivity f7600b;

        View$OnClickListenerC2586k(MainActivity mainActivity) {
            MainFragment.this = r4;
            this.f7600b = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainFragment.m762a(MainFragment.this).f6329m.m5816b(8388611, true);
            C3078ac c3078ac = C3078ac.f8981a;
            MainActivity mainActivity = this.f7600b;
            String string = MainFragment.this.getString(2131755323);
            C1694h.m3122a((Object) string, "getString(R.string.help_url_main)");
            c3078ac.m220a(mainActivity, string);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$l.class */
    public static final class View$OnClickListenerC2587l implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MainActivity f7602b;

        View$OnClickListenerC2587l(MainActivity mainActivity) {
            MainFragment.this = r4;
            this.f7602b = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainFragment.m762a(MainFragment.this).f6329m.m5816b(8388611, true);
            AboutActivity.f7365l.m862a(this.f7602b);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainFragment$m.class */
    static final class View$OnClickListenerC2588m implements View.OnClickListener {
        View$OnClickListenerC2588m() {
            MainFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (MainFragment.m762a(MainFragment.this).f6329m.m5795g(8388611)) {
                MainFragment.m762a(MainFragment.this).f6329m.m5798f(8388611);
            } else {
                MainFragment.m762a(MainFragment.this).f6329m.m5801e(8388611);
            }
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC2263y m762a(MainFragment mainFragment) {
        AbstractC2263y abstractC2263y = mainFragment.f7564d;
        if (abstractC2263y == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2263y;
    }

    /* renamed from: b */
    public static final /* synthetic */ C2642c m760b(MainFragment mainFragment) {
        C2642c c2642c = mainFragment.f7566f;
        if (c2642c == null) {
            C1694h.m3116b("mainPagerAdapter");
        }
        return c2642c;
    }

    /* renamed from: a */
    public final int m765a() {
        return this.f7565e;
    }

    /* renamed from: a */
    public final void m764a(int i) {
        this.f7565e = i;
    }

    /* renamed from: a */
    public final void m763a(MainActivity mainActivity, Bundle bundle) {
        C1694h.m3117b(mainActivity, "activity");
        try {
            long m41a = C3131u.f9265a.m41a();
            C3104j.m157a(C3104j.f9124a, "MainFragment.initWithActivity.begin", (String) null, 2, (Object) null);
            this.f7565e = C2398ai.f6930a.m1287b();
            MainActivity mainActivity2 = mainActivity;
            AbstractC2263y abstractC2263y = this.f7564d;
            if (abstractC2263y == null) {
                C1694h.m3116b("binding");
            }
            this.f7563c = new C2579d(mainActivity, mainActivity2, abstractC2263y.f6329m, 2131755150, 2131755150);
            C0082b c0082b = this.f7563c;
            if (c0082b == null) {
                C1694h.m3116b("drawerToggle");
            }
            c0082b.m7942a();
            C0082b c0082b2 = this.f7563c;
            if (c0082b2 == null) {
                C1694h.m3116b("drawerToggle");
            }
            mainActivity.m768b(new WeakReference<>(c0082b2));
            AbstractC2263y abstractC2263y2 = this.f7564d;
            if (abstractC2263y2 == null) {
                C1694h.m3116b("binding");
            }
            DrawerLayout drawerLayout = abstractC2263y2.f6329m;
            C0082b c0082b3 = this.f7563c;
            if (c0082b3 == null) {
                C1694h.m3116b("drawerToggle");
            }
            drawerLayout.m5821a(c0082b3);
            AbstractC2263y abstractC2263y3 = this.f7564d;
            if (abstractC2263y3 == null) {
                C1694h.m3116b("binding");
            }
            ViewPager viewPager = abstractC2263y3.f6335s;
            C1694h.m3122a((Object) viewPager, "binding.viewPager");
            C2642c c2642c = this.f7566f;
            if (c2642c == null) {
                C1694h.m3116b("mainPagerAdapter");
            }
            viewPager.setAdapter(c2642c);
            AbstractC2263y abstractC2263y4 = this.f7564d;
            if (abstractC2263y4 == null) {
                C1694h.m3116b("binding");
            }
            ViewPager viewPager2 = abstractC2263y4.f6335s;
            C1694h.m3122a((Object) viewPager2, "binding.viewPager");
            viewPager2.setOffscreenPageLimit(10);
            AbstractC2263y abstractC2263y5 = this.f7564d;
            if (abstractC2263y5 == null) {
                C1694h.m3116b("binding");
            }
            ViewPager viewPager3 = abstractC2263y5.f6335s;
            C1694h.m3122a((Object) viewPager3, "binding.viewPager");
            viewPager3.setCurrentItem(this.f7565e);
            AbstractC2263y abstractC2263y6 = this.f7564d;
            if (abstractC2263y6 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y6.f6335s.m4315a(new C2580e(mainActivity));
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MainFragment.initWithActivity pageSelected=" + this.f7565e, (String) null, 2, (Object) null);
            int i = this.f7565e;
            if (i == 0) {
                AbstractC2263y abstractC2263y7 = this.f7564d;
                if (abstractC2263y7 == null) {
                    C1694h.m3116b("binding");
                }
                BottomNavigationView bottomNavigationView = abstractC2263y7.f6320d;
                C1694h.m3122a((Object) bottomNavigationView, "binding.bottomNavigation");
                bottomNavigationView.setSelectedItemId(2131362232);
            } else if (i == 1) {
                AbstractC2263y abstractC2263y8 = this.f7564d;
                if (abstractC2263y8 == null) {
                    C1694h.m3116b("binding");
                }
                BottomNavigationView bottomNavigationView2 = abstractC2263y8.f6320d;
                C1694h.m3122a((Object) bottomNavigationView2, "binding.bottomNavigation");
                bottomNavigationView2.setSelectedItemId(2131362233);
            } else if (i == 2) {
                AbstractC2263y abstractC2263y9 = this.f7564d;
                if (abstractC2263y9 == null) {
                    C1694h.m3116b("binding");
                }
                BottomNavigationView bottomNavigationView3 = abstractC2263y9.f6320d;
                C1694h.m3122a((Object) bottomNavigationView3, "binding.bottomNavigation");
                bottomNavigationView3.setSelectedItemId(2131362231);
            }
            AbstractC2263y abstractC2263y10 = this.f7564d;
            if (abstractC2263y10 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y10.f6330n.setOnClickListener(new View$OnClickListenerC2581f());
            AbstractC2263y abstractC2263y11 = this.f7564d;
            if (abstractC2263y11 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y11.f6320d.setOnNavigationItemSelectedListener(new C2582g());
            AbstractC2263y abstractC2263y12 = this.f7564d;
            if (abstractC2263y12 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y12.f6327k.setOnClickListener(new View$OnClickListenerC2583h(mainActivity));
            AbstractC2263y abstractC2263y13 = this.f7564d;
            if (abstractC2263y13 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y13.f6324h.setOnClickListener(new View$OnClickListenerC2584i(mainActivity));
            AbstractC2263y abstractC2263y14 = this.f7564d;
            if (abstractC2263y14 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y14.f6326j.setOnClickListener(new View$OnClickListenerC2585j(mainActivity));
            AbstractC2263y abstractC2263y15 = this.f7564d;
            if (abstractC2263y15 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y15.f6325i.setOnClickListener(new View$OnClickListenerC2586k(mainActivity));
            AbstractC2263y abstractC2263y16 = this.f7564d;
            if (abstractC2263y16 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2263y16.f6321e.setOnClickListener(new View$OnClickListenerC2587l(mainActivity));
            C3104j c3104j2 = C3104j.f9124a;
            C3104j.m157a(c3104j2, "MainFragment.initWithActivity.end in " + C3131u.f9265a.m40a(m41a) + " ms", (String) null, 2, (Object) null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: b */
    protected final MainActivity m761b() {
        MainActivity mainActivity = this.f7562a;
        if (mainActivity == null) {
            C1694h.m3116b("mainActivity");
        }
        return mainActivity;
    }

    /* renamed from: c */
    public final void m759c() {
        try {
            if (this.f7569i) {
                return;
            }
            this.f7569i = true;
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2577c(null), 2, null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: d */
    public final Toolbar m758d() {
        AbstractC2263y abstractC2263y = this.f7564d;
        if (abstractC2263y == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2263y.f6319c;
    }

    /* renamed from: e */
    public final void m757e() {
        AbstractC2263y abstractC2263y = this.f7564d;
        if (abstractC2263y == null) {
            C1694h.m3116b("binding");
        }
        abstractC2263y.f6330n.show();
    }

    /* renamed from: f */
    public final void m756f() {
        AbstractC2263y abstractC2263y = this.f7564d;
        if (abstractC2263y == null) {
            C1694h.m3116b("binding");
        }
        abstractC2263y.f6330n.hide();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "Fragment " + getClass().getSimpleName() + " onActivityCreated", (String) null, 2, (Object) null);
        C3074a c3074a = C3074a.f8976a;
        String simpleName = getClass().getSimpleName();
        C1694h.m3122a((Object) simpleName, "javaClass.simpleName");
        c3074a.m229a(simpleName, "fragment", "");
        this.f7567g = m758d();
        ActivityC0711c activity = getActivity();
        if (activity != null) {
            this.f7562a = (MainActivity) activity;
            MainActivity mainActivity = this.f7562a;
            if (mainActivity == null) {
                C1694h.m3116b("mainActivity");
            }
            mainActivity.m7905a(this.f7567g);
            MainActivity mainActivity2 = this.f7562a;
            if (mainActivity2 == null) {
                C1694h.m3116b("mainActivity");
            }
            AbstractC0078a c = mainActivity2.m7900c();
            if (c != null) {
                c.mo7758a(true);
                c.mo7753b(true);
                this.f7568h = c;
            }
            Toolbar toolbar = this.f7567g;
            if (toolbar != null) {
                toolbar.setNavigationOnClickListener(new View$OnClickListenerC2588m());
            }
            MainActivity mainActivity3 = this.f7562a;
            if (mainActivity3 == null) {
                C1694h.m3116b("mainActivity");
            }
            m763a(mainActivity3, bundle);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.mistergroup.shouldianswer.ui.main.MainActivity");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        f7561j = new WeakReference<>(this);
        AbstractC0717h childFragmentManager = getChildFragmentManager();
        C1694h.m3122a((Object) childFragmentManager, "childFragmentManager");
        this.f7566f = new C2642c(childFragmentManager, this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        try {
            C2642c c2642c = this.f7566f;
            if (c2642c == null) {
                C1694h.m3116b("mainPagerAdapter");
            }
            Fragment mo237a = c2642c.mo237a(this.f7565e);
            if (mo237a == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.mistergroup.shouldianswer.ui.main.PagerFragment");
            }
            ((AbstractC2709d) mo237a).onCreateOptionsMenu(menu, menuInflater);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        C3104j.m157a(C3104j.f9124a, "MainFragment.onCreateView", (String) null, 2, (Object) null);
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558455, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f7564d = (AbstractC2263y) m5843a;
        AbstractC2263y abstractC2263y = this.f7564d;
        if (abstractC2263y == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2263y.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MainActivity mainActivity = this.f7562a;
        if (mainActivity == null) {
            C1694h.m3116b("mainActivity");
        }
        mainActivity.m768b(new WeakReference<>(null));
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C1694h.m3117b(menuItem, "item");
        if (menuItem.getItemId() != 2131361848) {
            return super.onOptionsItemSelected(menuItem);
        }
        SearchFragment.C2834a c2834a = SearchFragment.f8413b;
        Context context = getContext();
        if (context == null) {
            C1694h.m3124a();
        }
        C1694h.m3122a((Object) context, "context!!");
        c2834a.m434a(context, "");
        return true;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MainActivity mainActivity = this.f7562a;
        if (mainActivity == null) {
            C1694h.m3116b("mainActivity");
        }
        AbstractC2263y abstractC2263y = this.f7564d;
        if (abstractC2263y == null) {
            C1694h.m3116b("binding");
        }
        new C2601b(mainActivity, abstractC2263y).m717b();
    }
}
