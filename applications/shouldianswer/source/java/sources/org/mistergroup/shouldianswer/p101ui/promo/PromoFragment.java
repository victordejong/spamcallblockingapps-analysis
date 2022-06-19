package org.mistergroup.shouldianswer.p101ui.promo;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0458m;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import com.android.billingclient.api.AbstractC1162b;
import com.android.billingclient.api.AbstractC1169d;
import com.android.billingclient.api.AbstractC1175g;
import com.android.billingclient.api.AbstractC1181j;
import com.android.billingclient.api.C1170e;
import com.android.billingclient.api.C1173f;
import com.android.billingclient.api.C1176h;
import com.android.billingclient.api.C1178i;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.p097a.AbstractC2149bk;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.MainActivity;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment.class */
public final class PromoFragment extends AbstractC2510b implements AbstractC1175g {

    /* renamed from: c */
    private AbstractC2149bk f8270c;

    /* renamed from: d */
    private AbstractC1162b f8271d;

    /* renamed from: e */
    private boolean f8272e;

    /* renamed from: f */
    private boolean f8273f;

    /* renamed from: g */
    private boolean f8274g;

    /* renamed from: h */
    private boolean f8275h;

    /* renamed from: i */
    private String f8276i = "";

    /* renamed from: j */
    private String f8277j = "";

    /* renamed from: k */
    private String f8278k = "";

    /* renamed from: b */
    public static final C2773a f8266b = new C2773a(null);

    /* renamed from: l */
    private static final String f8267l = f8267l;

    /* renamed from: l */
    private static final String f8267l = f8267l;

    /* renamed from: m */
    private static final String f8268m = f8268m;

    /* renamed from: m */
    private static final String f8268m = f8268m;

    /* renamed from: n */
    private static final String f8269n = f8269n;

    /* renamed from: n */
    private static final String f8269n = f8269n;

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$a.class */
    public static final class C2773a {
        private C2773a() {
        }

        public /* synthetic */ C2773a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final PendingIntent m499a(Context context) {
            C1694h.m3117b(context, "context");
            Intent intent = new Intent(context, PromoActivity.class);
            intent.putExtras(m495d());
            intent.setFlags(67108864);
            C0458m m6555a = C0458m.m6555a(context);
            C1694h.m3122a((Object) m6555a, "TaskStackBuilder.create(context)");
            m6555a.m6552a(MainActivity.class);
            m6555a.m6554a(intent);
            return m6555a.m6559a(0, 134217728);
        }

        /* renamed from: a */
        public final String m500a() {
            return PromoFragment.f8267l;
        }

        /* renamed from: b */
        public final String m498b() {
            return PromoFragment.f8268m;
        }

        /* renamed from: b */
        public final void m497b(Context context) {
            C1694h.m3117b(context, "context");
            Intent intent = new Intent(context, PromoActivity.class);
            intent.putExtras(m495d());
            context.startActivity(intent);
        }

        /* renamed from: c */
        public final String m496c() {
            return PromoFragment.f8269n;
        }

        /* renamed from: d */
        public final Bundle m495d() {
            return new Bundle();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$b.class */
    static final class View$OnClickListenerC2774b implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8279a;

        View$OnClickListenerC2774b(ActivityC2499a activityC2499a) {
            this.f8279a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f8279a.finish();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$c.class */
    static final class View$OnClickListenerC2775c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8281b;

        View$OnClickListenerC2775c(ActivityC2499a activityC2499a) {
            PromoFragment.this = r4;
            this.f8281b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3078ac c3078ac = C3078ac.f8981a;
            ActivityC2499a activityC2499a = this.f8281b;
            String string = PromoFragment.this.getString(2131755318);
            C1694h.m3122a((Object) string, "getString(R.string.help_…ow_could_be_app_for_free)");
            c3078ac.m220a(activityC2499a, string);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$d.class */
    static final class View$OnClickListenerC2776d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8283b;

        View$OnClickListenerC2776d(ActivityC2499a activityC2499a) {
            PromoFragment.this = r4;
            this.f8283b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3078ac c3078ac = C3078ac.f8981a;
            ActivityC2499a activityC2499a = this.f8283b;
            String string = PromoFragment.this.getString(2131755320);
            C1694h.m3122a((Object) string, "getString(R.string.help_url_how_to_add_review)");
            c3078ac.m220a(activityC2499a, string);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$e.class */
    static final class View$OnClickListenerC2777e implements View.OnClickListener {
        View$OnClickListenerC2777e() {
            PromoFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PromoFragment.this.f8273f) {
                C3078ac.f8981a.m220a(PromoFragment.this.m859a(), "https://play.google.com/store/account/subscriptions?package=org.mistergroup.shouldianswer&sku=sub_tier_1");
                return;
            }
            C3074a.f8976a.m226d("Promo.butDonationBronze start sub_tier_1");
            PromoFragment.this.m519a(PromoFragment.f8267l);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$f.class */
    static final class View$OnClickListenerC2778f implements View.OnClickListener {
        View$OnClickListenerC2778f() {
            PromoFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PromoFragment.this.f8274g) {
                C3078ac.f8981a.m220a(PromoFragment.this.m859a(), "https://play.google.com/store/account/subscriptions?package=org.mistergroup.shouldianswer&sku=sub_tier_2");
                return;
            }
            C3074a.f8976a.m226d("Promo.butDonationSilver start sub_tier_2");
            PromoFragment.this.m519a(PromoFragment.f8268m);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$g.class */
    static final class View$OnClickListenerC2779g implements View.OnClickListener {
        View$OnClickListenerC2779g() {
            PromoFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PromoFragment.this.f8275h) {
                C3078ac.f8981a.m220a(PromoFragment.this.m859a(), "https://play.google.com/store/account/subscriptions?package=org.mistergroup.shouldianswer&sku=sub_tier_3");
                return;
            }
            C3074a.f8976a.m226d("Promo.butDonationGold start sub_tier_3");
            PromoFragment.this.m519a(PromoFragment.f8269n);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$h.class */
    static final class View$OnClickListenerC2780h implements View.OnClickListener {
        View$OnClickListenerC2780h() {
            PromoFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3074a.f8976a.m226d("Promo.writeReview");
                PromoFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=org.mistergroup.shouldianswer")));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$i.class */
    static final class View$OnClickListenerC2781i implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC2781i f8288a = new View$OnClickListenerC2781i();

        View$OnClickListenerC2781i() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2398ai.f6930a.m1284b(false);
            C3074a.f8976a.m226d("Promo.disable");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$j.class */
    static final class View$OnClickListenerC2782j implements View.OnClickListener {
        View$OnClickListenerC2782j() {
            PromoFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3074a.f8976a.m226d("Promo.followFacebook");
                PromoFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/shouldianswer")));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$k.class */
    static final class View$OnClickListenerC2783k implements View.OnClickListener {
        View$OnClickListenerC2783k() {
            PromoFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PromoFragment.this.m504f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$l.class */
    public static final class C2784l implements AbstractC1169d {

        /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$l$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a.class */
        static final class C2785a implements AbstractC1181j {
            C2785a() {
                C2784l.this = r4;
            }

            @Override // com.android.billingclient.api.AbstractC1181j
            /* renamed from: a */
            public final void mo492a(int i, List<C1176h> list) {
                try {
                    C1694h.m3122a((Object) list, "skuDetailsList");
                    for (C1176h c1176h : list) {
                        C1694h.m3122a((Object) c1176h, "skuDetails");
                        String m3868c = c1176h.m3868c();
                        String m3870a = c1176h.m3870a();
                        if (C1694h.m3123a((Object) m3870a, (Object) PromoFragment.f8266b.m500a())) {
                            PromoFragment promoFragment = PromoFragment.this;
                            C1694h.m3122a((Object) m3868c, FirebaseAnalytics.Param.PRICE);
                            promoFragment.f8276i = m3868c;
                        } else if (C1694h.m3123a((Object) m3870a, (Object) PromoFragment.f8266b.m498b())) {
                            PromoFragment promoFragment2 = PromoFragment.this;
                            C1694h.m3122a((Object) m3868c, FirebaseAnalytics.Param.PRICE);
                            promoFragment2.f8277j = m3868c;
                        } else if (C1694h.m3123a((Object) m3870a, (Object) PromoFragment.f8266b.m496c())) {
                            PromoFragment promoFragment3 = PromoFragment.this;
                            C1694h.m3122a((Object) m3868c, FirebaseAnalytics.Param.PRICE);
                            promoFragment3.f8278k = m3868c;
                        }
                    }
                    PromoFragment.this.f8272e = true;
                    PromoFragment.this.m506e();
                    PromoFragment.this.m509d();
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
            }
        }

        C2784l() {
            PromoFragment.this = r4;
        }

        @Override // com.android.billingclient.api.AbstractC1169d
        /* renamed from: a */
        public void mo494a() {
        }

        @Override // com.android.billingclient.api.AbstractC1169d
        /* renamed from: a */
        public void mo493a(int i) {
            if (i == 0) {
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(PromoFragment.f8266b.m500a());
                    arrayList.add(PromoFragment.f8266b.m498b());
                    arrayList.add(PromoFragment.f8266b.m496c());
                    C1178i.C1180a m3859c = C1178i.m3859c();
                    m3859c.m3856a(arrayList).m3857a("subs");
                    PromoFragment.m505e(PromoFragment.this).mo3905a(m3859c.m3858a(), new C2785a());
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
            }
        }
    }

    @AbstractC1634f(m3162b = "PromoFragment.kt", m3161c = {163}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.promo.PromoFragment$updatePurchases$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$m.class */
    public static final class C2786m extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8293a;

        /* renamed from: b */
        Object f8294b;

        /* renamed from: c */
        int f8295c;

        /* renamed from: e */
        private AbstractC1786ad f8297e;

        @AbstractC1634f(m3162b = "PromoFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.promo.PromoFragment$updatePurchases$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoFragment$m$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1.class */
        public static final class C27871 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8298a;

            /* renamed from: c */
            final /* synthetic */ C1173f.C1174a f8300c;

            /* renamed from: d */
            private AbstractC1786ad f8301d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27871(C1173f.C1174a c1174a, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2786m.this = r5;
                this.f8300c = c1174a;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27871) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27871 c27871 = new C27871(this.f8300c, abstractC1641c);
                c27871.f8301d = (AbstractC1786ad) obj;
                return c27871;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8298a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8301d;
                    PromoFragment.this.f8273f = false;
                    PromoFragment.this.f8274g = false;
                    PromoFragment.this.f8275h = false;
                    C1173f.C1174a c1174a = this.f8300c;
                    C1694h.m3122a((Object) c1174a, "purchasesResult");
                    if (c1174a.m3871a() != null) {
                        C1173f.C1174a c1174a2 = this.f8300c;
                        C1694h.m3122a((Object) c1174a2, "purchasesResult");
                        List<C1173f> m3871a = c1174a2.m3871a();
                        C1694h.m3122a((Object) m3871a, "purchasesResult.purchasesList");
                        for (C1173f c1173f : m3871a) {
                            C1694h.m3122a((Object) c1173f, "purchase");
                            String m3875a = c1173f.m3875a();
                            if (C1694h.m3123a((Object) m3875a, (Object) PromoFragment.f8266b.m500a())) {
                                PromoFragment.this.f8273f = true;
                            } else if (C1694h.m3123a((Object) m3875a, (Object) PromoFragment.f8266b.m498b())) {
                                PromoFragment.this.f8274g = true;
                            } else if (C1694h.m3123a((Object) m3875a, (Object) PromoFragment.f8266b.m496c())) {
                                PromoFragment.this.f8275h = true;
                            }
                        }
                        PromoFragment.this.m506e();
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2786m(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            PromoFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2786m) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2786m c2786m = new C2786m(abstractC1641c);
            c2786m.f8297e = (AbstractC1786ad) obj;
            return c2786m;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8295c;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f8297e;
                C3104j.m157a(C3104j.f9124a, "billingClient.queryPurchases", (String) null, 2, (Object) null);
                C1173f.C1174a mo3903a = PromoFragment.m505e(PromoFragment.this).mo3903a("subs");
                this.f8293a = abstractC1786ad;
                this.f8294b = mo3903a;
                this.f8295c = 1;
                if (C1890e.m2686a(C3084c.m192b(), new C27871(mo3903a, null), this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C1173f.C1174a c1174a = (C1173f.C1174a) this.f8294b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8293a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: e */
    public static final /* synthetic */ AbstractC1162b m505e(PromoFragment promoFragment) {
        AbstractC1162b abstractC1162b = promoFragment.f8271d;
        if (abstractC1162b == null) {
            C1694h.m3116b("billingClient");
        }
        return abstractC1162b;
    }

    @Override // com.android.billingclient.api.AbstractC1175g
    /* renamed from: a */
    public void mo520a(int i, List<C1173f> list) {
        if (i != 0 || list == null) {
            if (i == 1) {
                C3074a.f8976a.m227c("Promo.onPurchasesUpdated canceled by user");
                return;
            }
            C3074a c3074a = C3074a.f8976a;
            c3074a.m227c("Promo.onPurchasesUpdated canceled due error " + i);
            return;
        }
        for (C1173f c1173f : list) {
            C3074a c3074a2 = C3074a.f8976a;
            c3074a2.m227c("Promo.onPurchasesUpdated purchase.sku=" + c1173f.m3875a());
        }
        m509d();
    }

    /* renamed from: a */
    public final void m519a(String str) {
        C1694h.m3117b(str, "skuId");
        try {
            C1170e m3878a = C1170e.m3879i().m3877a(str).m3876b("inapp").m3878a();
            AbstractC1162b abstractC1162b = this.f8271d;
            if (abstractC1162b == null) {
                C1694h.m3116b("billingClient");
            }
            abstractC1162b.mo3913a(getActivity(), m3878a);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2149bk abstractC2149bk = this.f8270c;
        if (abstractC2149bk == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2149bk.f5733o;
        C1694h.m3122a((Object) linearLayout, "binding.llPanel");
        linearLayout.setVisibility(8);
        AbstractC2149bk abstractC2149bk2 = this.f8270c;
        if (abstractC2149bk2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk2.f5726h.setOnClickListener(new View$OnClickListenerC2774b(activityC2499a));
        AbstractC2149bk abstractC2149bk3 = this.f8270c;
        if (abstractC2149bk3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk3.f5727i.setOnClickListener(new View$OnClickListenerC2777e());
        AbstractC2149bk abstractC2149bk4 = this.f8270c;
        if (abstractC2149bk4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk4.f5729k.setOnClickListener(new View$OnClickListenerC2778f());
        AbstractC2149bk abstractC2149bk5 = this.f8270c;
        if (abstractC2149bk5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk5.f5728j.setOnClickListener(new View$OnClickListenerC2779g());
        AbstractC2149bk abstractC2149bk6 = this.f8270c;
        if (abstractC2149bk6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk6.f5731m.setOnClickListener(new View$OnClickListenerC2780h());
        AbstractC2149bk abstractC2149bk7 = this.f8270c;
        if (abstractC2149bk7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk7.f5722d.setOnClickListener(View$OnClickListenerC2781i.f8288a);
        AbstractC2149bk abstractC2149bk8 = this.f8270c;
        if (abstractC2149bk8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk8.f5723e.setOnClickListener(new View$OnClickListenerC2782j());
        AbstractC2149bk abstractC2149bk9 = this.f8270c;
        if (abstractC2149bk9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk9.f5730l.setOnClickListener(new View$OnClickListenerC2783k());
        AbstractC1162b m3917a = AbstractC1162b.m3918a(m859a()).m3916a(this).m3917a();
        C1694h.m3122a((Object) m3917a, "BillingClient.newBuilder…setListener(this).build()");
        this.f8271d = m3917a;
        AbstractC1162b abstractC1162b = this.f8271d;
        if (abstractC1162b == null) {
            C1694h.m3116b("billingClient");
        }
        abstractC1162b.mo3907a(new C2784l());
        AbstractC2149bk abstractC2149bk10 = this.f8270c;
        if (abstractC2149bk10 == null) {
            C1694h.m3116b("binding");
        }
        Button button = abstractC2149bk10.f5727i;
        C1694h.m3122a((Object) button, "binding.buttonDonationBronze");
        button.setVisibility(4);
        AbstractC2149bk abstractC2149bk11 = this.f8270c;
        if (abstractC2149bk11 == null) {
            C1694h.m3116b("binding");
        }
        Button button2 = abstractC2149bk11.f5729k;
        C1694h.m3122a((Object) button2, "binding.buttonDonationSilver");
        button2.setVisibility(4);
        AbstractC2149bk abstractC2149bk12 = this.f8270c;
        if (abstractC2149bk12 == null) {
            C1694h.m3116b("binding");
        }
        Button button3 = abstractC2149bk12.f5728j;
        C1694h.m3122a((Object) button3, "binding.buttonDonationGold");
        button3.setVisibility(4);
        AbstractC2149bk abstractC2149bk13 = this.f8270c;
        if (abstractC2149bk13 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk13.f5724f.setOnClickListener(new View$OnClickListenerC2775c(activityC2499a));
        AbstractC2149bk abstractC2149bk14 = this.f8270c;
        if (abstractC2149bk14 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2149bk14.f5725g.setOnClickListener(new View$OnClickListenerC2776d(activityC2499a));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2149bk abstractC2149bk = this.f8270c;
        if (abstractC2149bk == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2149bk.f5721c;
    }

    /* renamed from: d */
    public final void m509d() {
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2786m(null), 2, null);
    }

    /* renamed from: e */
    public final void m506e() {
        String format;
        String format2;
        String format3;
        try {
            AbstractC2149bk abstractC2149bk = this.f8270c;
            if (abstractC2149bk == null) {
                C1694h.m3116b("binding");
            }
            Button button = abstractC2149bk.f5727i;
            C1694h.m3122a((Object) button, "binding.buttonDonationBronze");
            button.setVisibility(this.f8272e ? 0 : 4);
            AbstractC2149bk abstractC2149bk2 = this.f8270c;
            if (abstractC2149bk2 == null) {
                C1694h.m3116b("binding");
            }
            Button button2 = abstractC2149bk2.f5729k;
            C1694h.m3122a((Object) button2, "binding.buttonDonationSilver");
            button2.setVisibility(this.f8272e ? 0 : 4);
            AbstractC2149bk abstractC2149bk3 = this.f8270c;
            if (abstractC2149bk3 == null) {
                C1694h.m3116b("binding");
            }
            Button button3 = abstractC2149bk3.f5728j;
            C1694h.m3122a((Object) button3, "binding.buttonDonationGold");
            int i = 4;
            if (this.f8272e) {
                i = 0;
            }
            button3.setVisibility(i);
            if (!this.f8272e) {
                return;
            }
            AbstractC2149bk abstractC2149bk4 = this.f8270c;
            if (abstractC2149bk4 == null) {
                C1694h.m3116b("binding");
            }
            Button button4 = abstractC2149bk4.f5727i;
            C1694h.m3122a((Object) button4, "binding.buttonDonationBronze");
            if (this.f8273f) {
                format = getString(2131755551);
            } else {
                C1705p c1705p = C1705p.f4394a;
                String string = getString(2131755510);
                C1694h.m3122a((Object) string, "getString(R.string.subscribe)");
                Object[] objArr = {this.f8276i};
                format = String.format(string, Arrays.copyOf(objArr, objArr.length));
                C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
            }
            button4.setText(format);
            AbstractC2149bk abstractC2149bk5 = this.f8270c;
            if (abstractC2149bk5 == null) {
                C1694h.m3116b("binding");
            }
            Button button5 = abstractC2149bk5.f5729k;
            C1694h.m3122a((Object) button5, "binding.buttonDonationSilver");
            if (this.f8274g) {
                format2 = getString(2131755551);
            } else {
                C1705p c1705p2 = C1705p.f4394a;
                String string2 = getString(2131755510);
                C1694h.m3122a((Object) string2, "getString(R.string.subscribe)");
                Object[] objArr2 = {this.f8277j};
                format2 = String.format(string2, Arrays.copyOf(objArr2, objArr2.length));
                C1694h.m3122a((Object) format2, "java.lang.String.format(format, *args)");
            }
            button5.setText(format2);
            AbstractC2149bk abstractC2149bk6 = this.f8270c;
            if (abstractC2149bk6 == null) {
                C1694h.m3116b("binding");
            }
            Button button6 = abstractC2149bk6.f5728j;
            C1694h.m3122a((Object) button6, "binding.buttonDonationGold");
            if (this.f8275h) {
                format3 = getString(2131755551);
            } else {
                C1705p c1705p3 = C1705p.f4394a;
                String string3 = getString(2131755510);
                C1694h.m3122a((Object) string3, "getString(R.string.subscribe)");
                Object[] objArr3 = {this.f8278k};
                format3 = String.format(string3, Arrays.copyOf(objArr3, objArr3.length));
                C1694h.m3122a((Object) format3, "java.lang.String.format(format, *args)");
            }
            button6.setText(format3);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: f */
    public final void m504f() {
        String string = getString(2131755150);
        C1694h.m3122a((Object) string, "getString(R.string.app_name)");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", string);
        intent.putExtra("android.intent.extra.TEXT", "https://play.google.com/store/apps/details?id=org.mistergroup.shouldianswer&referrer=utm_source=sian_share&utm_medium=sian_share&utm_campaign=sian_share");
        startActivity(Intent.createChooser(intent, getString(2131755075)));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558482, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8270c = (AbstractC2149bk) m5843a;
        AbstractC2149bk abstractC2149bk = this.f8270c;
        if (abstractC2149bk == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2149bk.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f8272e) {
            m509d();
        }
    }
}
