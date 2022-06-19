package org.mistergroup.shouldianswer.p101ui.number_detail;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0458m;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2380aa;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.p097a.AbstractC2130as;
import org.mistergroup.shouldianswer.p097a.AbstractC2132au;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.MainActivity;
import org.mistergroup.shouldianswer.p101ui.number_reports.NumberReportsFragment;
import org.mistergroup.shouldianswer.p101ui.report_safe_number.ReportSafeNumberFragment;
import org.mistergroup.shouldianswer.p101ui.report_spam_number.ReportSpamNumberFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3117q;
/* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment.class */
public final class NumberDetailFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2713b f8028b = new C2713b(null);

    /* renamed from: c */
    private AbstractC2132au f8029c;

    /* renamed from: d */
    private NumberInfo f8030d;

    /* renamed from: e */
    private boolean f8031e;

    /* renamed from: f */
    private boolean f8032f;

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a.class */
    public static final class C2711a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8033a;

        /* renamed from: b */
        Object f8034b;

        /* renamed from: c */
        int f8035c;

        /* renamed from: d */
        final /* synthetic */ AbstractC2132au f8036d;

        /* renamed from: e */
        final /* synthetic */ String f8037e;

        /* renamed from: f */
        final /* synthetic */ String f8038f;

        /* renamed from: g */
        final /* synthetic */ String f8039g;

        /* renamed from: h */
        final /* synthetic */ NumberInfo f8040h;

        /* renamed from: i */
        final /* synthetic */ EnumC2395ag f8041i;

        /* renamed from: j */
        final /* synthetic */ String f8042j;

        /* renamed from: k */
        final /* synthetic */ Boolean f8043k;

        /* renamed from: l */
        final /* synthetic */ boolean f8044l;

        /* renamed from: m */
        final /* synthetic */ EnumC2395ag f8045m;

        /* renamed from: n */
        final /* synthetic */ NumberReport f8046n;

        /* renamed from: o */
        final /* synthetic */ Integer f8047o;

        /* renamed from: p */
        final /* synthetic */ Integer f8048p;

        /* renamed from: q */
        final /* synthetic */ C1699m.C1702c f8049q;

        /* renamed from: r */
        private AbstractC1786ad f8050r;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1.class */
        public static final class C27121 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8051a;

            /* renamed from: c */
            final /* synthetic */ String f8053c;

            /* renamed from: d */
            private AbstractC1786ad f8054d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27121(String str, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2711a.this = r5;
                this.f8053c = str;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27121) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27121 c27121 = new C27121(this.f8053c, abstractC1641c);
                c27121.f8054d = (AbstractC1786ad) obj;
                return c27121;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                int i;
                C1622b.m3174a();
                if (this.f8051a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8054d;
                    AppCompatTextView appCompatTextView = C2711a.this.f8036d.f5642L;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvCountry");
                    String str = this.f8053c;
                    if (str != null) {
                        if (str.length() > 0) {
                            i = 0;
                            appCompatTextView.setVisibility(i);
                            AppCompatTextView appCompatTextView2 = C2711a.this.f8036d.f5642L;
                            C1694h.m3122a((Object) appCompatTextView2, "binding.tvCountry");
                            appCompatTextView2.setText(this.f8053c);
                            return C1775o.f4450a;
                        }
                    }
                    i = 8;
                    appCompatTextView.setVisibility(i);
                    AppCompatTextView appCompatTextView22 = C2711a.this.f8036d.f5642L;
                    C1694h.m3122a((Object) appCompatTextView22, "binding.tvCountry");
                    appCompatTextView22.setText(this.f8053c);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2711a(AbstractC2132au abstractC2132au, AbstractC1641c abstractC1641c, String str, String str2, String str3, NumberInfo numberInfo, EnumC2395ag enumC2395ag, String str4, Boolean bool, boolean z, EnumC2395ag enumC2395ag2, NumberReport numberReport, Integer num, Integer num2, C1699m.C1702c c1702c) {
            super(2, abstractC1641c);
            this.f8036d = abstractC2132au;
            this.f8037e = str;
            this.f8038f = str2;
            this.f8039g = str3;
            this.f8040h = numberInfo;
            this.f8041i = enumC2395ag;
            this.f8042j = str4;
            this.f8043k = bool;
            this.f8044l = z;
            this.f8045m = enumC2395ag2;
            this.f8046n = numberReport;
            this.f8047o = num;
            this.f8048p = num2;
            this.f8049q = c1702c;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2711a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2711a c2711a = new C2711a(this.f8036d, abstractC1641c, this.f8037e, this.f8038f, this.f8039g, this.f8040h, this.f8041i, this.f8042j, this.f8043k, this.f8044l, this.f8045m, this.f8046n, this.f8047o, this.f8048p, this.f8049q);
            c2711a.f8050r = (AbstractC1786ad) obj;
            return c2711a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f8035c;
            try {
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f8050r;
                NumberInfo numberInfo = this.f8040h;
                this.f8033a = abstractC1786ad;
                this.f8035c = 1;
                Object m1474c = numberInfo.m1474c(this);
                obj = m1474c;
                if (m1474c == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str = (String) this.f8034b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8033a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                abstractC1786ad = (AbstractC1786ad) this.f8033a;
                C1771k.m2979a(obj);
            }
            String str2 = (String) obj;
            this.f8033a = abstractC1786ad;
            this.f8034b = str2;
            this.f8035c = 2;
            if (C1890e.m2686a(C3084c.m192b(), new C27121(str2, null), this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b.class */
    public static final class C2713b {

        @AbstractC1634f(m3162b = "NumberDetailFragment.kt", m3161c = {577}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$Companion$start$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$b$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b$a.class */
        public static final class C2714a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8055a;

            /* renamed from: b */
            Object f8056b;

            /* renamed from: c */
            int f8057c;

            /* renamed from: d */
            final /* synthetic */ NumberInfo f8058d;

            /* renamed from: e */
            private AbstractC1786ad f8059e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2714a(NumberInfo numberInfo, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f8058d = numberInfo;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2714a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2714a c2714a = new C2714a(this.f8058d, abstractC1641c);
                c2714a.f8059e = (AbstractC1786ad) obj;
                return c2714a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f8057c;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8059e;
                    NumberInfo numberInfo = new NumberInfo(this.f8058d.m1485a(), this.f8058d.m1475c(), this.f8058d.m1473d(), true);
                    this.f8055a = abstractC1786ad;
                    this.f8056b = numberInfo;
                    this.f8057c = 1;
                    if (numberInfo.m1434w(this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    NumberInfo numberInfo2 = (NumberInfo) this.f8056b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8055a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            }
        }

        private C2713b() {
        }

        public /* synthetic */ C2713b(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final PendingIntent m555a(Context context, NumberInfo numberInfo) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(numberInfo, "numberInfo");
            Intent intent = new Intent(context, NumberDetailActivity.class);
            intent.putExtras(m554a(numberInfo));
            intent.setFlags(67108864);
            C0458m m6555a = C0458m.m6555a(context);
            C1694h.m3122a((Object) m6555a, "TaskStackBuilder.create(context)");
            m6555a.m6552a(MainActivity.class);
            m6555a.m6554a(intent);
            return m6555a.m6559a(0, 134217728);
        }

        /* renamed from: a */
        public final Bundle m554a(NumberInfo numberInfo) {
            C1694h.m3117b(numberInfo, "numberInfo");
            Bundle bundle = new Bundle();
            bundle.putParcelable("numberInfo", numberInfo);
            return bundle;
        }

        /* renamed from: b */
        public final void m553b(Context context, NumberInfo numberInfo) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(numberInfo, "numberInfo");
            C1892g.m2677a(C1843bd.f4587a, null, null, new C2714a(numberInfo, null), 3, null);
            Intent intent = new Intent(context, NumberDetailActivity.class);
            if (!(context instanceof Activity)) {
                intent.setFlags(intent.getFlags() + 268435456);
            }
            intent.putExtras(m554a(numberInfo));
            context.startActivity(intent);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c.class */
    static final class View$OnClickListenerC2715c implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8060a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8061b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8062c;

        View$OnClickListenerC2715c(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8060a = numberInfo;
            this.f8061b = numberDetailFragment;
            this.f8062c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m227c("NumberDetailActivity.onCallNumber");
            C3086e c3086e = C3086e.f9028a;
            Context context = this.f8061b.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c3086e.m187a(context, this.f8060a.m1479b(), (AbstractC1663b<? super Boolean, C1775o>) null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$d.class */
    static final class View$OnClickListenerC2716d implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8063a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8064b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8065c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$d$1.class */
        static final class C27171 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8066a;

            /* renamed from: b */
            int f8067b;

            /* renamed from: c */
            final /* synthetic */ NumberReport f8068c;

            /* renamed from: d */
            private AbstractC1786ad f8069d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27171(NumberReport numberReport, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f8068c = numberReport;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27171) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27171 c27171 = new C27171(this.f8068c, abstractC1641c);
                c27171.f8069d = (AbstractC1786ad) obj;
                return c27171;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f8067b;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8069d;
                    C2380aa c2380aa = C2380aa.f6848a;
                    NumberReport numberReport = this.f8068c;
                    this.f8066a = abstractC1786ad;
                    this.f8067b = 1;
                    if (c2380aa.m1375b(numberReport, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8066a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC2716d(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8063a = numberInfo;
            this.f8064b = numberDetailFragment;
            this.f8065c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NumberReport numberReport = new NumberReport(this.f8063a);
            numberReport.m1420b(true);
            numberReport.m1425a(EnumC2395ag.NEGATIVE);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27171(numberReport, null), 2, null);
            ReportSpamNumberFragment.C2818a c2818a = ReportSpamNumberFragment.f8385b;
            Context context = this.f8064b.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2818a.m444a(context, numberReport);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e.class */
    static final class View$OnClickListenerC2718e implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8070a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8071b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8072c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e$1.class */
        static final class C27191 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8073a;

            /* renamed from: b */
            int f8074b;

            /* renamed from: c */
            final /* synthetic */ NumberReport f8075c;

            /* renamed from: d */
            private AbstractC1786ad f8076d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27191(NumberReport numberReport, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f8075c = numberReport;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27191) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27191 c27191 = new C27191(this.f8075c, abstractC1641c);
                c27191.f8076d = (AbstractC1786ad) obj;
                return c27191;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f8074b;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8076d;
                    C2380aa c2380aa = C2380aa.f6848a;
                    NumberReport numberReport = this.f8075c;
                    this.f8073a = abstractC1786ad;
                    this.f8074b = 1;
                    if (c2380aa.m1375b(numberReport, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8073a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC2718e(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8070a = numberInfo;
            this.f8071b = numberDetailFragment;
            this.f8072c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NumberReport numberReport = new NumberReport(this.f8070a);
            numberReport.m1420b(true);
            numberReport.m1425a(EnumC2395ag.POSITIVE);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27191(numberReport, null), 2, null);
            ReportSafeNumberFragment.C2806a c2806a = ReportSafeNumberFragment.f8359b;
            Context context = this.f8071b.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2806a.m463a(context, numberReport);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f.class */
    public static final class View$OnClickListenerC2720f implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8077a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8078b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8079c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$f$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1.class */
        public static final class DialogInterface$OnClickListenerC27211 implements DialogInterface.OnClickListener {

            /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$f$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1.class */
            public static final class C27221 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                Object f8081a;

                /* renamed from: b */
                Object f8082b;

                /* renamed from: c */
                int f8083c;

                /* renamed from: e */
                private AbstractC1786ad f8085e;

                /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$f$1$1$1 */
                /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1$1.class */
                public static final class C27231 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                    /* renamed from: a */
                    int f8086a;

                    /* renamed from: b */
                    final /* synthetic */ C27221 f8087b;

                    /* renamed from: c */
                    private AbstractC1786ad f8088c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C27231(AbstractC1641c abstractC1641c, C27221 c27221) {
                        super(2, abstractC1641c);
                        this.f8087b = c27221;
                    }

                    @Override // kotlin.p081e.p082a.AbstractC1674m
                    /* renamed from: a */
                    public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                        return ((C27231) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: a */
                    public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                        C1694h.m3117b(abstractC1641c, "completion");
                        C27231 c27231 = new C27231(abstractC1641c, this.f8087b);
                        c27231.f8088c = (AbstractC1786ad) obj;
                        return c27231;
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: b */
                    public final Object mo42b(Object obj) {
                        C1622b.m3174a();
                        if (this.f8086a == 0) {
                            C1771k.m2979a(obj);
                            AbstractC1786ad abstractC1786ad = this.f8088c;
                            View$OnClickListenerC2720f.this.f8078b.m556e();
                            return C1775o.f4450a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27221(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    DialogInterface$OnClickListenerC27211.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27221) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27221 c27221 = new C27221(abstractC1641c);
                    c27221.f8085e = (AbstractC1786ad) obj;
                    return c27221;
                }

                /* JADX WARN: Removed duplicated region for block: B:34:0x012a  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x012c  */
                /* JADX WARN: Removed duplicated region for block: B:39:0x0168  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x018f  */
                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object mo42b(java.lang.Object r7) {
                    /*
                        Method dump skipped, instructions count: 405
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.View$OnClickListenerC2720f.DialogInterface$OnClickListenerC27211.C27221.mo42b(java.lang.Object):java.lang.Object");
                }
            }

            DialogInterface$OnClickListenerC27211() {
                View$OnClickListenerC2720f.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C1694h.m3117b(dialogInterface, "dialogInterface");
                C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27221(null), 2, null);
            }
        }

        View$OnClickListenerC2720f(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8077a = numberInfo;
            this.f8078b = numberDetailFragment;
            this.f8079c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(this.f8078b.m859a()).m7920a(this.f8078b.getString(2131755413)).m7913b(this.f8078b.getString(2131755280)).m7919a(this.f8078b.getString(2131755562), new DialogInterface$OnClickListenerC27211()).m7912b(this.f8078b.getString(2131755386), null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g.class */
    public static final class View$OnClickListenerC2724g implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8089a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8090b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8091c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$g$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1.class */
        public static final class C27251 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8092a;

            /* renamed from: b */
            Object f8093b;

            /* renamed from: c */
            Object f8094c;

            /* renamed from: d */
            int f8095d;

            /* renamed from: f */
            private AbstractC1786ad f8097f;

            /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$g$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1.class */
            public static final class C27261 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8098a;

                /* renamed from: b */
                final /* synthetic */ NumberReport f8099b;

                /* renamed from: c */
                final /* synthetic */ C27251 f8100c;

                /* renamed from: d */
                final /* synthetic */ EnumC2395ag f8101d;

                /* renamed from: e */
                private AbstractC1786ad f8102e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27261(NumberReport numberReport, AbstractC1641c abstractC1641c, C27251 c27251, EnumC2395ag enumC2395ag) {
                    super(2, abstractC1641c);
                    this.f8099b = numberReport;
                    this.f8100c = c27251;
                    this.f8101d = enumC2395ag;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27261) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27261 c27261 = new C27261(this.f8099b, abstractC1641c, this.f8100c, this.f8101d);
                    c27261.f8102e = (AbstractC1786ad) obj;
                    return c27261;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8098a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8102e;
                        if (this.f8101d == EnumC2395ag.NEGATIVE) {
                            ReportSpamNumberFragment.C2818a c2818a = ReportSpamNumberFragment.f8385b;
                            Context context = View$OnClickListenerC2724g.this.f8090b.getContext();
                            if (context == null) {
                                C1694h.m3124a();
                            }
                            C1694h.m3122a((Object) context, "context!!");
                            c2818a.m444a(context, this.f8099b);
                        } else {
                            ReportSafeNumberFragment.C2806a c2806a = ReportSafeNumberFragment.f8359b;
                            Context context2 = View$OnClickListenerC2724g.this.f8090b.getContext();
                            if (context2 == null) {
                                C1694h.m3124a();
                            }
                            C1694h.m3122a((Object) context2, "context!!");
                            c2806a.m463a(context2, this.f8099b);
                        }
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27251(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2724g.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27251) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27251 c27251 = new C27251(abstractC1641c);
                c27251.f8097f = (AbstractC1786ad) obj;
                return c27251;
            }

            /* JADX WARN: Removed duplicated region for block: B:31:0x00d5 A[Catch: Exception -> 0x0119, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0119, blocks: (B:11:0x0037, B:15:0x005a, B:17:0x006a, B:19:0x007b, B:24:0x009b, B:29:0x00cc, B:31:0x00d5), top: B:40:0x000a }] */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r7) {
                /*
                    Method dump skipped, instructions count: 296
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.View$OnClickListenerC2724g.C27251.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        View$OnClickListenerC2724g(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8089a = numberInfo;
            this.f8090b = numberDetailFragment;
            this.f8091c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27251(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$h.class */
    static final class View$OnClickListenerC2727h implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8104b;

        View$OnClickListenerC2727h(ActivityC2499a activityC2499a) {
            NumberDetailFragment.this = r4;
            this.f8104b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3078ac c3078ac = C3078ac.f8981a;
            ActivityC2499a activityC2499a = this.f8104b;
            String string = NumberDetailFragment.this.getString(2131755319);
            C1694h.m3122a((Object) string, "getString(R.string.help_…dd_edit_or_delete_review)");
            c3078ac.m220a(activityC2499a, string);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$i.class */
    static final class View$OnClickListenerC2728i implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8106b;

        View$OnClickListenerC2728i(ActivityC2499a activityC2499a) {
            NumberDetailFragment.this = r4;
            this.f8106b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3078ac c3078ac = C3078ac.f8981a;
            ActivityC2499a activityC2499a = this.f8106b;
            String string = NumberDetailFragment.this.getString(2131755319);
            C1694h.m3122a((Object) string, "getString(R.string.help_…dd_edit_or_delete_review)");
            c3078ac.m220a(activityC2499a, string);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j.class */
    public static final class C2729j extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8107a;

        /* renamed from: b */
        Object f8108b;

        /* renamed from: c */
        Object f8109c;

        /* renamed from: d */
        Object f8110d;

        /* renamed from: e */
        Object f8111e;

        /* renamed from: f */
        Object f8112f;

        /* renamed from: g */
        Object f8113g;

        /* renamed from: h */
        int f8114h;

        /* renamed from: i */
        int f8115i;

        /* renamed from: j */
        int f8116j;

        /* renamed from: k */
        int f8117k;

        /* renamed from: l */
        int f8118l;

        /* renamed from: m */
        int f8119m;

        /* renamed from: n */
        int f8120n;

        /* renamed from: o */
        final /* synthetic */ NumberInfo f8121o;

        /* renamed from: p */
        final /* synthetic */ NumberDetailFragment f8122p;

        /* renamed from: q */
        final /* synthetic */ ActivityC2499a f8123q;

        /* renamed from: r */
        private AbstractC1786ad f8124r;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$j$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1.class */
        public static final class C27301 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8125a;

            /* renamed from: b */
            final /* synthetic */ C1699m.C1702c f8126b;

            /* renamed from: c */
            final /* synthetic */ String f8127c;

            /* renamed from: d */
            final /* synthetic */ C1699m.C1702c f8128d;

            /* renamed from: e */
            final /* synthetic */ int f8129e;

            /* renamed from: f */
            final /* synthetic */ int f8130f;

            /* renamed from: g */
            final /* synthetic */ C2729j f8131g;

            /* renamed from: h */
            final /* synthetic */ LinearLayout f8132h;

            /* renamed from: i */
            private AbstractC1786ad f8133i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27301(C1699m.C1702c c1702c, String str, C1699m.C1702c c1702c2, int i, int i2, AbstractC1641c abstractC1641c, C2729j c2729j, LinearLayout linearLayout) {
                super(2, abstractC1641c);
                this.f8126b = c1702c;
                this.f8127c = str;
                this.f8128d = c1702c2;
                this.f8129e = i;
                this.f8130f = i2;
                this.f8131g = c2729j;
                this.f8132h = linearLayout;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27301) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27301 c27301 = new C27301(this.f8126b, this.f8127c, this.f8128d, this.f8129e, this.f8130f, abstractC1641c, this.f8131g, this.f8132h);
                c27301.f8133i = (AbstractC1786ad) obj;
                return c27301;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8125a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8133i;
                    AbstractC2130as abstractC2130as = (AbstractC2130as) C0651f.m5843a(this.f8131g.f8122p.getLayoutInflater(), 2131558473, (ViewGroup) this.f8132h, false);
                    AppCompatTextView appCompatTextView = abstractC2130as.f5625g;
                    C1694h.m3122a((Object) appCompatTextView, "itemBinding.tvCaption");
                    appCompatTextView.setText((String) this.f8126b.f4391a);
                    AppCompatTextView appCompatTextView2 = abstractC2130as.f5626h;
                    C1694h.m3122a((Object) appCompatTextView2, "itemBinding.tvDescription");
                    appCompatTextView2.setText(this.f8127c);
                    AppCompatTextView appCompatTextView3 = abstractC2130as.f5627i;
                    C1694h.m3122a((Object) appCompatTextView3, "itemBinding.tvTime");
                    appCompatTextView3.setVisibility(((String) this.f8128d.f4391a).length() > 0 ? 0 : 8);
                    AppCompatTextView appCompatTextView4 = abstractC2130as.f5627i;
                    C1694h.m3122a((Object) appCompatTextView4, "itemBinding.tvTime");
                    appCompatTextView4.setText((String) this.f8128d.f4391a);
                    ImageView imageView = abstractC2130as.f5623e;
                    C1694h.m3122a((Object) imageView, "itemBinding.imgCallType");
                    int i = 8;
                    if (this.f8129e > 0) {
                        i = 0;
                    }
                    imageView.setVisibility(i);
                    if (this.f8129e > 0) {
                        abstractC2130as.f5623e.setImageResource(this.f8129e);
                        abstractC2130as.f5623e.setColorFilter(this.f8130f, PorterDuff.Mode.MULTIPLY);
                    }
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.setMargins(0, 0, 0, 10);
                    LinearLayout linearLayout = this.f8132h;
                    C1694h.m3122a((Object) abstractC2130as, "itemBinding");
                    linearLayout.addView(abstractC2130as.m5863d(), layoutParams);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2729j(NumberInfo numberInfo, AbstractC1641c abstractC1641c, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            super(2, abstractC1641c);
            this.f8121o = numberInfo;
            this.f8122p = numberDetailFragment;
            this.f8123q = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2729j) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2729j c2729j = new C2729j(this.f8121o, abstractC1641c, this.f8122p, this.f8123q);
            c2729j.f8124r = (AbstractC1786ad) obj;
            return c2729j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0125 A[Catch: Exception -> 0x03ad, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x03ad, blocks: (B:9:0x0080, B:14:0x00c4, B:17:0x00e4, B:21:0x0125, B:27:0x016c, B:29:0x0178, B:31:0x0193, B:33:0x019e, B:33:0x019e, B:34:0x01a1, B:36:0x01b1, B:38:0x01bb, B:42:0x0204, B:44:0x022a, B:45:0x025e, B:45:0x025e, B:46:0x0261, B:48:0x027c), top: B:59:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0178 A[Catch: Exception -> 0x03ad, TRY_ENTER, TryCatch #0 {Exception -> 0x03ad, blocks: (B:9:0x0080, B:14:0x00c4, B:17:0x00e4, B:21:0x0125, B:27:0x016c, B:29:0x0178, B:31:0x0193, B:33:0x019e, B:33:0x019e, B:34:0x01a1, B:36:0x01b1, B:38:0x01bb, B:42:0x0204, B:44:0x022a, B:45:0x025e, B:45:0x025e, B:46:0x0261, B:48:0x027c), top: B:59:0x000f }] */
        /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v41, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v45, types: [T, java.lang.String] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0387 -> B:54:0x03a1). Please submit an issue!!! */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 956
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.C2729j.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k.class */
    static final class View$OnClickListenerC2731k implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8134a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8135b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8136c;

        View$OnClickListenerC2731k(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8134a = numberInfo;
            this.f8135b = numberDetailFragment;
            this.f8136c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3074a.f8976a.m227c("NumberDetailActivity.onSMS");
                Intent intent = new Intent("android.intent.action.VIEW");
                String m1479b = this.f8134a.m1479b();
                intent.setData(Uri.parse("sms: " + m1479b));
                this.f8135b.startActivity(intent);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$l.class */
    public static final class View$OnClickListenerC2732l implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8137a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8138b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8139c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$l$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$l$1.class */
        public static final class C27331 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8140a;

            /* renamed from: b */
            int f8141b;

            /* renamed from: d */
            private AbstractC1786ad f8143d;

            /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$l$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$l$1$1.class */
            public static final class C27341 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8144a;

                /* renamed from: c */
                private AbstractC1786ad f8146c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27341(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C27331.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27341) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27341 c27341 = new C27341(abstractC1641c);
                    c27341.f8146c = (AbstractC1786ad) obj;
                    return c27341;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8144a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8146c;
                        View$OnClickListenerC2732l.this.f8138b.m556e();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27331(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2732l.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27331) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27331 c27331 = new C27331(abstractC1641c);
                c27331.f8143d = (AbstractC1786ad) obj;
                return c27331;
            }

            /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r7) {
                /*
                    Method dump skipped, instructions count: 239
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.View$OnClickListenerC2732l.C27331.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        View$OnClickListenerC2732l(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8137a = numberInfo;
            this.f8138b = numberDetailFragment;
            this.f8139c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27331(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$m.class */
    public static final class View$OnClickListenerC2735m implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8147a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8148b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8149c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$m$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$m$1.class */
        public static final class C27361 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8150a;

            /* renamed from: b */
            int f8151b;

            /* renamed from: d */
            private AbstractC1786ad f8153d;

            /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$m$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$m$1$1.class */
            public static final class C27371 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8154a;

                /* renamed from: c */
                private AbstractC1786ad f8156c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27371(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C27361.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27371) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27371 c27371 = new C27371(abstractC1641c);
                    c27371.f8156c = (AbstractC1786ad) obj;
                    return c27371;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8154a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8156c;
                        View$OnClickListenerC2735m.this.f8148b.m556e();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27361(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2735m.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27361) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27361 c27361 = new C27361(abstractC1641c);
                c27361.f8153d = (AbstractC1786ad) obj;
                return c27361;
            }

            /* JADX WARN: Removed duplicated region for block: B:34:0x00dd  */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r7) {
                /*
                    Method dump skipped, instructions count: 238
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.View$OnClickListenerC2735m.C27361.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        View$OnClickListenerC2735m(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8147a = numberInfo;
            this.f8148b = numberDetailFragment;
            this.f8149c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27361(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$n */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$n.class */
    public static final class View$OnClickListenerC2738n implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8157a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8158b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8159c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$n$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$n$1.class */
        public static final class C27391 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8160a;

            /* renamed from: b */
            int f8161b;

            /* renamed from: d */
            private AbstractC1786ad f8163d;

            /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$n$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$n$1$1.class */
            public static final class C27401 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8164a;

                /* renamed from: c */
                private AbstractC1786ad f8166c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27401(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C27391.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27401) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27401 c27401 = new C27401(abstractC1641c);
                    c27401.f8166c = (AbstractC1786ad) obj;
                    return c27401;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8164a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8166c;
                        View$OnClickListenerC2738n.this.f8158b.m556e();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27391(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2738n.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27391) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27391 c27391 = new C27391(abstractC1641c);
                c27391.f8163d = (AbstractC1786ad) obj;
                return c27391;
            }

            /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r7) {
                /*
                    Method dump skipped, instructions count: 239
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.View$OnClickListenerC2738n.C27391.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        View$OnClickListenerC2738n(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8157a = numberInfo;
            this.f8158b = numberDetailFragment;
            this.f8159c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27391(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$o */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$o.class */
    public static final class View$OnClickListenerC2741o implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8167a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8168b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8169c;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$o$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$o$1.class */
        public static final class C27421 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8170a;

            /* renamed from: b */
            int f8171b;

            /* renamed from: d */
            private AbstractC1786ad f8173d;

            /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$o$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$o$1$1.class */
            public static final class C27431 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8174a;

                /* renamed from: c */
                private AbstractC1786ad f8176c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C27431(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C27421.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C27431) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C27431 c27431 = new C27431(abstractC1641c);
                    c27431.f8176c = (AbstractC1786ad) obj;
                    return c27431;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8174a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8176c;
                        View$OnClickListenerC2741o.this.f8168b.m556e();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27421(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2741o.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27421) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27421 c27421 = new C27421(abstractC1641c);
                c27421.f8173d = (AbstractC1786ad) obj;
                return c27421;
            }

            /* JADX WARN: Removed duplicated region for block: B:34:0x00dd  */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r7) {
                /*
                    Method dump skipped, instructions count: 238
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.View$OnClickListenerC2741o.C27421.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        View$OnClickListenerC2741o(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8167a = numberInfo;
            this.f8168b = numberDetailFragment;
            this.f8169c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C27421(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$p */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p.class */
    static final class View$OnClickListenerC2744p implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8177a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8178b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8179c;

        View$OnClickListenerC2744p(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8177a = numberInfo;
            this.f8178b = numberDetailFragment;
            this.f8179c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2385ac m1451o = this.f8177a.m1451o();
            if (m1451o != null) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(m1451o.m1368a())));
                this.f8178b.startActivity(intent);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$q */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q.class */
    public static final class C2745q extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8180a;

        /* renamed from: b */
        Object f8181b;

        /* renamed from: c */
        int f8182c;

        /* renamed from: d */
        final /* synthetic */ C2385ac f8183d;

        /* renamed from: e */
        final /* synthetic */ NumberDetailFragment f8184e;

        /* renamed from: f */
        final /* synthetic */ ActivityC2499a f8185f;

        /* renamed from: g */
        private AbstractC1786ad f8186g;

        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$q$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q$1.class */
        public static final class C27461 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8187a;

            /* renamed from: c */
            final /* synthetic */ C1699m.C1702c f8189c;

            /* renamed from: d */
            private AbstractC1786ad f8190d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27461(C1699m.C1702c c1702c, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2745q.this = r5;
                this.f8189c = c1702c;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27461) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27461 c27461 = new C27461(this.f8189c, abstractC1641c);
                c27461.f8190d = (AbstractC1786ad) obj;
                return c27461;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8187a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8190d;
                    if (((Bitmap) this.f8189c.f4391a) != null) {
                        ImageView imageView = NumberDetailFragment.m560b(C2745q.this.f8184e).f5632B;
                        C1694h.m3122a((Object) imageView, "binding.ivPhoto");
                        imageView.setVisibility(0);
                        NumberDetailFragment.m560b(C2745q.this.f8184e).f5632B.setImageBitmap((Bitmap) this.f8189c.f4391a);
                    } else {
                        ImageView imageView2 = NumberDetailFragment.m560b(C2745q.this.f8184e).f5632B;
                        C1694h.m3122a((Object) imageView2, "binding.ivPhoto");
                        imageView2.setVisibility(8);
                        LinearLayout linearLayout = NumberDetailFragment.m560b(C2745q.this.f8184e).f5635E;
                        C1694h.m3122a((Object) linearLayout, "binding.llGroupWithShadow");
                        linearLayout.setBackground(null);
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2745q(C2385ac c2385ac, AbstractC1641c abstractC1641c, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            super(2, abstractC1641c);
            this.f8183d = c2385ac;
            this.f8184e = numberDetailFragment;
            this.f8185f = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2745q) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2745q c2745q = new C2745q(this.f8183d, abstractC1641c, this.f8184e, this.f8185f);
            c2745q.f8186g = (AbstractC1786ad) obj;
            return c2745q;
        }

        /* JADX WARN: Type inference failed for: r1v10, types: [T, android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r1v2, types: [T, android.graphics.Bitmap] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8182c;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8186g;
                    C1699m.C1702c c1702c = new C1699m.C1702c();
                    c1702c.f4391a = C3117q.f9185a.m100c(this.f8183d.m1368a());
                    if (((Bitmap) c1702c.f4391a) == null) {
                        c1702c.f4391a = C3117q.f9185a.m101b(this.f8183d.m1353d());
                    }
                    this.f8180a = abstractC1786ad;
                    this.f8181b = c1702c;
                    this.f8182c = 1;
                    if (C1890e.m2686a(C3084c.m192b(), new C27461(c1702c, null), this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C1699m.C1702c c1702c2 = (C1699m.C1702c) this.f8181b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8180a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$r */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r.class */
    static final class View$OnClickListenerC2747r implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8191a;

        /* renamed from: b */
        final /* synthetic */ NumberDetailFragment f8192b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8193c;

        View$OnClickListenerC2747r(NumberInfo numberInfo, NumberDetailFragment numberDetailFragment, ActivityC2499a activityC2499a) {
            this.f8191a = numberInfo;
            this.f8192b = numberDetailFragment;
            this.f8193c = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NumberReportsFragment.f8207b.m549a(this.f8192b.m859a(), this.f8191a);
        }
    }

    @AbstractC1634f(m3162b = "NumberDetailFragment.kt", m3161c = {549, 550}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$onResume$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$s */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$s.class */
    public static final class C2748s extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8194a;

        /* renamed from: b */
        int f8195b;

        /* renamed from: d */
        private AbstractC1786ad f8197d;

        @AbstractC1634f(m3162b = "NumberDetailFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$onResume$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$s$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$s$1.class */
        public static final class C27491 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8198a;

            /* renamed from: c */
            private AbstractC1786ad f8200c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27491(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2748s.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27491) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27491 c27491 = new C27491(abstractC1641c);
                c27491.f8200c = (AbstractC1786ad) obj;
                return c27491;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8198a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8200c;
                    NumberDetailFragment.this.m556e();
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2748s(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            NumberDetailFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2748s) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2748s c2748s = new C2748s(abstractC1641c);
            c2748s.f8197d = (AbstractC1786ad) obj;
            return c2748s;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00b2  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 195
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.C2748s.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC1634f(m3162b = "NumberDetailFragment.kt", m3161c = {391}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$updateUI$1$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailFragment$t */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$t.class */
    public static final class C2750t extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8201a;

        /* renamed from: b */
        int f8202b;

        /* renamed from: c */
        final /* synthetic */ NumberInfo f8203c;

        /* renamed from: d */
        private AbstractC1786ad f8204d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2750t(NumberInfo numberInfo, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f8203c = numberInfo;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2750t) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2750t c2750t = new C2750t(this.f8203c, abstractC1641c);
            c2750t.f8204d = (AbstractC1786ad) obj;
            return c2750t;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8202b;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8204d;
                    C3104j.f9124a.m163a(new Exception("NumberDetailFragment.updateUI - data not collected"));
                    NumberInfo numberInfo = this.f8203c;
                    this.f8201a = abstractC1786ad;
                    this.f8202b = 1;
                    if (numberInfo.m1434w(this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8201a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC2132au m560b(NumberDetailFragment numberDetailFragment) {
        AbstractC2132au abstractC2132au = numberDetailFragment.f8029c;
        if (abstractC2132au == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2132au;
    }

    /* renamed from: d */
    private final void m558d() {
        Resources resources = getResources();
        C1694h.m3122a((Object) resources, "getResources()");
        int m562a = m562a(resources);
        AbstractC2132au abstractC2132au = this.f8029c;
        if (abstractC2132au == null) {
            C1694h.m3116b("binding");
        }
        Toolbar toolbar = abstractC2132au.f5651c;
        AbstractC2132au abstractC2132au2 = this.f8029c;
        if (abstractC2132au2 == null) {
            C1694h.m3116b("binding");
        }
        int paddingLeft = abstractC2132au2.f5651c.getPaddingLeft();
        AbstractC2132au abstractC2132au3 = this.f8029c;
        if (abstractC2132au3 == null) {
            C1694h.m3116b("binding");
        }
        int paddingRight = abstractC2132au3.f5651c.getPaddingRight();
        AbstractC2132au abstractC2132au4 = this.f8029c;
        if (abstractC2132au4 == null) {
            C1694h.m3116b("binding");
        }
        Toolbar toolbar2 = abstractC2132au4.f5651c;
        C1694h.m3122a((Object) toolbar2, "binding.appToolbar");
        toolbar.setPadding(paddingLeft, m562a, paddingRight, toolbar2.getPaddingBottom());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(36:142|(2:144|145)(1:146)|147|(2:149|150)(1:151)|152|(4:159|160|218|219)|268|161|(1:163)(1:164)|165|(1:167)(1:168)|169|(1:171)(1:172)|173|(1:175)(1:176)|177|(1:179)(1:180)|181|(2:183|184)(1:185)|186|(2:188|189)(1:190)|191|(2:193|194)|195|(2:197|198)(1:199)|200|(2:202|203)|204|(2:206|207)(1:208)|209|(1:211)|212|213|160|218|219) */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x07a0, code lost:
        r21 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x07a7, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r21, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x08f2, code lost:
        r20 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0460 A[Catch: Exception -> 0x08f6, TRY_LEAVE, TryCatch #3 {Exception -> 0x08f6, blocks: (B:56:0x0256, B:61:0x02a6, B:64:0x02be, B:71:0x02dc, B:72:0x02fe, B:75:0x0305, B:77:0x0327, B:82:0x033a, B:88:0x035b, B:93:0x0384, B:99:0x03ab, B:104:0x03d4, B:106:0x03ec, B:112:0x0403, B:119:0x0445, B:121:0x0460, B:125:0x047c, B:129:0x049e, B:131:0x04a6, B:133:0x04b6, B:138:0x04c8, B:142:0x04e7, B:147:0x0509, B:152:0x0531, B:154:0x058f, B:156:0x059a, B:159:0x05a8, B:215:0x07a2, B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:274:0x0256, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x05de A[Catch: Exception -> 0x07a0, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x05f8 A[Catch: Exception -> 0x07a0, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0605  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0614 A[Catch: Exception -> 0x07a0, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0621  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0630 A[Catch: Exception -> 0x07a0, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0658  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0666 A[Catch: Exception -> 0x07a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x06ae  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x06b4  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x06c2 A[Catch: Exception -> 0x07a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x06fd  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0703  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0711 A[Catch: Exception -> 0x07a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0752  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0759  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0764 A[Catch: Exception -> 0x07a0, TRY_ENTER, TryCatch #0 {Exception -> 0x07a0, blocks: (B:161:0x05c4, B:163:0x05de, B:165:0x05ed, B:167:0x05f8, B:169:0x0609, B:171:0x0614, B:173:0x0625, B:175:0x0630, B:177:0x0641, B:183:0x0666, B:186:0x0699, B:193:0x06c2, B:195:0x06e8, B:202:0x0711, B:204:0x073d, B:211:0x0764, B:213:0x0787), top: B:268:0x05c4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x07f2 A[Catch: Exception -> 0x08f2, TRY_ENTER, TryCatch #4 {Exception -> 0x08f2, blocks: (B:217:0x07a7, B:218:0x07af, B:218:0x07af, B:220:0x07b6, B:222:0x07c8, B:227:0x07da, B:229:0x07f2, B:231:0x07f7, B:233:0x0801, B:235:0x0806, B:240:0x0819, B:242:0x0833, B:244:0x0889, B:246:0x0898, B:250:0x08a3, B:254:0x08b1, B:258:0x08be, B:260:0x08cd), top: B:275:0x07a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0801 A[Catch: Exception -> 0x08f2, TRY_ENTER, TryCatch #4 {Exception -> 0x08f2, blocks: (B:217:0x07a7, B:218:0x07af, B:218:0x07af, B:220:0x07b6, B:222:0x07c8, B:227:0x07da, B:229:0x07f2, B:231:0x07f7, B:233:0x0801, B:235:0x0806, B:240:0x0819, B:242:0x0833, B:244:0x0889, B:246:0x0898, B:250:0x08a3, B:254:0x08b1, B:258:0x08be, B:260:0x08cd), top: B:275:0x07a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x080f  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0815  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0833 A[Catch: Exception -> 0x08f2, TryCatch #4 {Exception -> 0x08f2, blocks: (B:217:0x07a7, B:218:0x07af, B:218:0x07af, B:220:0x07b6, B:222:0x07c8, B:227:0x07da, B:229:0x07f2, B:231:0x07f7, B:233:0x0801, B:235:0x0806, B:240:0x0819, B:242:0x0833, B:244:0x0889, B:246:0x0898, B:250:0x08a3, B:254:0x08b1, B:258:0x08be, B:260:0x08cd), top: B:275:0x07a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x089f  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x08cd A[Catch: Exception -> 0x08f2, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x08f2, blocks: (B:217:0x07a7, B:218:0x07af, B:218:0x07af, B:220:0x07b6, B:222:0x07c8, B:227:0x07da, B:229:0x07f2, B:231:0x07f7, B:233:0x0801, B:235:0x0806, B:240:0x0819, B:242:0x0833, B:244:0x0889, B:246:0x0898, B:250:0x08a3, B:254:0x08b1, B:258:0x08be, B:260:0x08cd), top: B:275:0x07a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0380  */
    /* JADX WARN: Type inference failed for: r1v161, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v166, types: [T, java.lang.String] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m556e() {
        /*
            Method dump skipped, instructions count: 2323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.m556e():void");
    }

    /* renamed from: a */
    public final int m562a(Resources resources) {
        C1694h.m3117b(resources, "resources");
        int identifier = resources.getIdentifier("status_bar_height", "dimen", AbstractC1468a.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x0352, code lost:
        if (r0.m1368a() == 0) goto L92;
     */
    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo240a(org.mistergroup.shouldianswer.p101ui.ActivityC2499a r11, android.os.Bundle r12) {
        /*
            Method dump skipped, instructions count: 1313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment.mo240a(org.mistergroup.shouldianswer.ui.a, android.os.Bundle):void");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2132au abstractC2132au = this.f8029c;
        if (abstractC2132au == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2132au.f5651c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623938, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558474, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8029c = (AbstractC2132au) m5843a;
        AbstractC2132au abstractC2132au = this.f8029c;
        if (abstractC2132au == null) {
            C1694h.m3116b("binding");
        }
        AppCompatTextView appCompatTextView = abstractC2132au.f5642L;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvCountry");
        appCompatTextView.setVisibility(8);
        m558d();
        AbstractC2132au abstractC2132au2 = this.f8029c;
        if (abstractC2132au2 == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2132au2.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C1694h.m3117b(menuItem, "item");
        if (menuItem.getItemId() == 2131361841) {
            new DialogInterfaceC0090d.C0091a(m859a()).m7913b(getString(2131755409)).m7919a(getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2748s(null), 2, null);
    }
}
