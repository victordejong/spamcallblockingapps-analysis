package org.mistergroup.shouldianswer.p101ui.about;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
import org.mistergroup.shouldianswer.p097a.AbstractC2165c;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.promo.PromoActivity;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3118r;
/* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment.class */
public final class AboutFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2165c f7367b;

    /* renamed from: c */
    private boolean f7368c;

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$a.class */
    public static final class View$OnClickListenerC2502a implements View.OnClickListener {

        @AbstractC1634f(m3162b = "AboutFragment.kt", m3161c = {48, 51}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.about.AboutFragment$initWithActivity$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$a$1.class */
        public static final class C25031 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f7370a;

            /* renamed from: b */
            int f7371b;

            /* renamed from: d */
            private AbstractC1786ad f7373d;

            @AbstractC1634f(m3162b = "AboutFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.about.AboutFragment$initWithActivity$1$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$a$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$a$1$1.class */
            public static final class C25041 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f7374a;

                /* renamed from: c */
                private AbstractC1786ad f7376c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C25041(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C25031.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C25041) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C25041 c25041 = new C25041(abstractC1641c);
                    c25041.f7376c = (AbstractC1786ad) obj;
                    return c25041;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f7374a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f7376c;
                        Toast.makeText(AboutFragment.this.getContext(), 2131755062, 0).show();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C25031(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2502a.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C25031) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C25031 c25031 = new C25031(abstractC1641c);
                c25031.f7373d = (AbstractC1786ad) obj;
                return c25031;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f7371b;
                try {
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                if (i == 0) {
                    C1771k.m2979a(obj);
                    abstractC1786ad = this.f7373d;
                    C3079ad c3079ad = C3079ad.f8982a;
                    this.f7370a = abstractC1786ad;
                    this.f7371b = 1;
                    if (c3079ad.m215a(true, (AbstractC1641c<? super Boolean>) this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7370a;
                    C1771k.m2979a(obj);
                    AboutFragment.this.f7368c = false;
                    return C1775o.f4450a;
                } else {
                    AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f7370a;
                    C1771k.m2979a(obj);
                    abstractC1786ad = abstractC1786ad3;
                }
                C2408a.f6967a.m1147b(true);
                AboutFragment.this.f7368c = false;
                this.f7370a = abstractC1786ad;
                this.f7371b = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C25041(null), this) == a) {
                    return a;
                }
                AboutFragment.this.f7368c = false;
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC2502a() {
            AboutFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (AboutFragment.this.f7368c) {
                return;
            }
            C3074a.f8976a.m226d("about.appVersion");
            Toast.makeText(AboutFragment.this.getContext(), 2131755063, 0).show();
            AboutFragment.this.f7368c = true;
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C25031(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$b.class */
    static final class View$OnClickListenerC2505b implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f7377a;

        View$OnClickListenerC2505b(ActivityC2499a activityC2499a) {
            this.f7377a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3074a.f8976a.m227c("about.helpCommunity");
                PromoActivity.f8264l.m521a(this.f7377a);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$c.class */
    static final class View$OnClickListenerC2506c implements View.OnClickListener {
        View$OnClickListenerC2506c() {
            AboutFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3074a.f8976a.m226d("about.termsClick");
                Context context = AboutFragment.this.getContext();
                if (context == null) {
                    return;
                }
                C3078ac c3078ac = C3078ac.f8981a;
                C1694h.m3122a((Object) context, "it");
                c3078ac.m220a(context, C3079ad.f8982a.m218a(C3079ad.f8982a.m219a()));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$d.class */
    static final class View$OnClickListenerC2507d implements View.OnClickListener {
        View$OnClickListenerC2507d() {
            AboutFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3074a.f8976a.m226d("about.privacyClick");
                Context context = AboutFragment.this.getContext();
                if (context == null) {
                    return;
                }
                C3078ac c3078ac = C3078ac.f8981a;
                C1694h.m3122a((Object) context, "it");
                c3078ac.m220a(context, C3079ad.f8982a.m218a(C3079ad.f8982a.m214b()));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$e.class */
    static final class View$OnClickListenerC2508e implements View.OnClickListener {
        View$OnClickListenerC2508e() {
            AboutFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("UserSettings.followFacebook");
            Context context = AboutFragment.this.getContext();
            if (context != null) {
                C3078ac c3078ac = C3078ac.f8981a;
                C1694h.m3122a((Object) context, "it");
                c3078ac.m220a(context, "https://www.facebook.com/shouldianswer");
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutFragment$f.class */
    static final class View$OnClickListenerC2509f implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f7382b;

        View$OnClickListenerC2509f(ActivityC2499a activityC2499a) {
            AboutFragment.this = r4;
            this.f7382b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3078ac c3078ac = C3078ac.f8981a;
            ActivityC2499a activityC2499a = this.f7382b;
            String string = AboutFragment.this.getString(2131755316);
            C1694h.m3122a((Object) string, "getString(R.string.help_url_about_our_project)");
            c3078ac.m220a(activityC2499a, string);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2165c abstractC2165c = this.f7367b;
        if (abstractC2165c == null) {
            C1694h.m3116b("binding");
        }
        AppCompatTextView appCompatTextView = abstractC2165c.f5804j;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvAppVersion");
        appCompatTextView.setText(C3118r.f9187a.m95d() + " (db:" + String.valueOf(C2408a.f6967a.m1150b()) + ")");
        AbstractC2165c abstractC2165c2 = this.f7367b;
        if (abstractC2165c2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2165c2.f5804j.setOnClickListener(new View$OnClickListenerC2502a());
        AbstractC2165c abstractC2165c3 = this.f7367b;
        if (abstractC2165c3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2165c3.f5801g.setOnClickListener(new View$OnClickListenerC2505b(activityC2499a));
        AbstractC2165c abstractC2165c4 = this.f7367b;
        if (abstractC2165c4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2165c4.f5803i.setOnClickListener(new View$OnClickListenerC2506c());
        AbstractC2165c abstractC2165c5 = this.f7367b;
        if (abstractC2165c5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2165c5.f5802h.setOnClickListener(new View$OnClickListenerC2507d());
        AbstractC2165c abstractC2165c6 = this.f7367b;
        if (abstractC2165c6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2165c6.f5800f.setOnClickListener(new View$OnClickListenerC2508e());
        AbstractC2165c abstractC2165c7 = this.f7367b;
        if (abstractC2165c7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2165c7.f5799e.setOnClickListener(new View$OnClickListenerC2509f(activityC2499a));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2165c abstractC2165c = this.f7367b;
        if (abstractC2165c == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2165c.f5797c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558429, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f7367b = (AbstractC2165c) m5843a;
        AbstractC2165c abstractC2165c = this.f7367b;
        if (abstractC2165c == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2165c.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }
}
