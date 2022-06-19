package org.mistergroup.shouldianswer.p101ui.wizards.welcome;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.AbstractC0717h;
import androidx.fragment.app.AbstractC0737k;
import androidx.fragment.app.ActivityC0711c;
import androidx.fragment.app.Fragment;
import androidx.p014c.C0388h;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.material.tabs.TabLayout;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.p097a.AbstractC2236eq;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.wizards.protection.ProtectionWizardMainActivity;
import org.mistergroup.shouldianswer.utils.C3075aa;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3106l;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment.class */
public final class WelcomeFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2236eq f8967b;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a.class */
    private static final class C3065a extends AbstractC0737k {

        /* renamed from: a */
        private final C0388h<Fragment> f8968a = new C0388h<>();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3065a(AbstractC0717h abstractC0717h) {
            super(abstractC0717h);
            C1694h.m3117b(abstractC0717h, "fm");
        }

        @Override // androidx.fragment.app.AbstractC0737k
        /* renamed from: a */
        public Fragment mo237a(int i) {
            C3072c m6805a = this.f8968a.m6805a(i);
            Fragment fragment = m6805a;
            if (m6805a == null) {
                if (i == 0) {
                    m6805a = new C3070a();
                } else if (i == 1) {
                    m6805a = new C3071b();
                } else if (i == 2) {
                    m6805a = new C3072c();
                }
                this.f8968a.m6800b(i, m6805a);
                fragment = m6805a;
            }
            if (fragment == null) {
                C1694h.m3124a();
            }
            return fragment;
        }

        @Override // androidx.viewpager.widget.AbstractC1100a
        /* renamed from: b */
        public int mo236b() {
            return 3;
        }

        @Override // androidx.viewpager.widget.AbstractC1100a
        /* renamed from: b */
        public CharSequence mo235b(int i) {
            return "";
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b.class */
    public static final class C3066b implements ViewPager.AbstractC1096f {
        C3066b() {
            WelcomeFragment.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1096f
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1096f
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1096f
        public void onPageSelected(int i) {
            Button button = WelcomeFragment.m239a(WelcomeFragment.this).f6189d;
            C1694h.m3122a((Object) button, "binding.butNext");
            button.setVisibility(i != 2 ? 0 : 8);
            Button button2 = WelcomeFragment.m239a(WelcomeFragment.this).f6188c;
            C1694h.m3122a((Object) button2, "binding.butGetStarted");
            button2.setVisibility(i == 2 ? 0 : 8);
            LinearLayout linearLayout = WelcomeFragment.m239a(WelcomeFragment.this).f6193h;
            C1694h.m3122a((Object) linearLayout, "binding.llChecks");
            linearLayout.setVisibility(i == 2 ? 0 : 8);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$c.class */
    static final class View$OnClickListenerC3067c implements View.OnClickListener {
        View$OnClickListenerC3067c() {
            WelcomeFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewPager viewPager = WelcomeFragment.m239a(WelcomeFragment.this).f6196k;
            C1694h.m3122a((Object) viewPager, "binding.viewPager");
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d.class */
    static final class View$OnClickListenerC3068d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8972b;

        View$OnClickListenerC3068d(ActivityC2499a activityC2499a) {
            WelcomeFragment.this = r4;
            this.f8972b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CheckBox checkBox = WelcomeFragment.m239a(WelcomeFragment.this).f6190e;
            C1694h.m3122a((Object) checkBox, "binding.checkReq1");
            if (checkBox.isChecked()) {
                CheckBox checkBox2 = WelcomeFragment.m239a(WelcomeFragment.this).f6192g;
                C1694h.m3122a((Object) checkBox2, "binding.checkReq2");
                if (checkBox2.isChecked()) {
                    try {
                        new C3106l().m148a(MyApp.f5480c.m1802a());
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    }
                    C2398ai.f6930a.m1288a(true);
                    this.f8972b.finish();
                    ProtectionWizardMainActivity.f8920l.m252a(this.f8972b);
                    this.f8972b.overridePendingTransition(2130772003, 2130772004);
                    return;
                }
            }
            Toast.makeText(WelcomeFragment.this.getContext(), WelcomeFragment.this.getString(2131755568), 0).show();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e.class */
    static final class C3069e extends AbstractC1695i implements AbstractC1663b<String, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3069e() {
            super(1);
            WelcomeFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(String str) {
            m234a(str);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m234a(String str) {
            C1694h.m3117b(str, ImagesContract.URL);
            C3104j.f9124a.m161a(C1694h.m3123a((Object) str, (Object) "1") ? "WelcomeFragment.butTermsClick" : "WelcomeFragment.butPrivacyClick");
            if (C1694h.m3123a((Object) str, (Object) "1")) {
                C3078ac c3078ac = C3078ac.f8981a;
                ActivityC0711c activity = WelcomeFragment.this.getActivity();
                if (activity == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) activity, "getActivity()!!");
                c3078ac.m220a(activity, C3079ad.f8982a.m218a(C3079ad.f8982a.m219a()));
            } else if (!C1694h.m3123a((Object) str, (Object) "2")) {
                CheckBox checkBox = WelcomeFragment.m239a(WelcomeFragment.this).f6190e;
                C1694h.m3122a((Object) checkBox, "binding.checkReq1");
                CheckBox checkBox2 = WelcomeFragment.m239a(WelcomeFragment.this).f6190e;
                C1694h.m3122a((Object) checkBox2, "binding.checkReq1");
                checkBox.setChecked(!checkBox2.isChecked());
            } else {
                C3078ac c3078ac2 = C3078ac.f8981a;
                ActivityC0711c activity2 = WelcomeFragment.this.getActivity();
                if (activity2 == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) activity2, "getActivity()!!");
                c3078ac2.m220a(activity2, C3079ad.f8982a.m218a(C3079ad.f8982a.m214b()));
            }
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC2236eq m239a(WelcomeFragment welcomeFragment) {
        AbstractC2236eq abstractC2236eq = welcomeFragment.f8967b;
        if (abstractC2236eq == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2236eq;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C3065a c3065a;
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC0717h j = activityC2499a.m5665j();
        if (j != null) {
            C1694h.m3122a((Object) j, "it");
            c3065a = new C3065a(j);
        } else {
            c3065a = null;
        }
        AbstractC2236eq abstractC2236eq = this.f8967b;
        if (abstractC2236eq == null) {
            C1694h.m3116b("binding");
        }
        ViewPager viewPager = abstractC2236eq.f6196k;
        C1694h.m3122a((Object) viewPager, "binding.viewPager");
        viewPager.setAdapter(c3065a);
        AbstractC2236eq abstractC2236eq2 = this.f8967b;
        if (abstractC2236eq2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2236eq2.f6196k.m4315a(new C3066b());
        AbstractC2236eq abstractC2236eq3 = this.f8967b;
        if (abstractC2236eq3 == null) {
            C1694h.m3116b("binding");
        }
        TabLayout tabLayout = abstractC2236eq3.f6195j;
        AbstractC2236eq abstractC2236eq4 = this.f8967b;
        if (abstractC2236eq4 == null) {
            C1694h.m3116b("binding");
        }
        tabLayout.setupWithViewPager(abstractC2236eq4.f6196k);
        AbstractC2236eq abstractC2236eq5 = this.f8967b;
        if (abstractC2236eq5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2236eq5.f6189d.setOnClickListener(new View$OnClickListenerC3067c());
        AbstractC2236eq abstractC2236eq6 = this.f8967b;
        if (abstractC2236eq6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2236eq6.f6188c.setOnClickListener(new View$OnClickListenerC3068d(activityC2499a));
        AbstractC2236eq abstractC2236eq7 = this.f8967b;
        if (abstractC2236eq7 == null) {
            C1694h.m3116b("binding");
        }
        Button button = abstractC2236eq7.f6188c;
        C1694h.m3122a((Object) button, "binding.butGetStarted");
        button.setVisibility(8);
        AbstractC2236eq abstractC2236eq8 = this.f8967b;
        if (abstractC2236eq8 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2236eq8.f6193h;
        C1694h.m3122a((Object) linearLayout, "binding.llChecks");
        linearLayout.setVisibility(8);
        C3075aa c3075aa = new C3075aa();
        c3075aa.m223a(new C3069e());
        AbstractC2236eq abstractC2236eq9 = this.f8967b;
        if (abstractC2236eq9 == null) {
            C1694h.m3116b("binding");
        }
        AppCompatTextView appCompatTextView = abstractC2236eq9.f6191f;
        C1694h.m3122a((Object) appCompatTextView, "binding.checkReq1Text");
        AppCompatTextView appCompatTextView2 = appCompatTextView;
        String string = getString(2131755118);
        C1694h.m3122a((Object) string, "getString(R.string.activ…ting_tv_signin_agreement)");
        c3075aa.m224a(appCompatTextView2, string);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        return null;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558528, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8967b = (AbstractC2236eq) m5843a;
        AbstractC2236eq abstractC2236eq = this.f8967b;
        if (abstractC2236eq == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2236eq.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }
}
