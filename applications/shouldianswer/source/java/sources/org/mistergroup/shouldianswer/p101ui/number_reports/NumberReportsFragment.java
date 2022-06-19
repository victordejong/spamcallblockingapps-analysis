package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0925w;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.List;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import org.mistergroup.shouldianswer.model.C2454t;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2139ba;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.promo.PromoFragment;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment.class */
public final class NumberReportsFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2752a f8207b = new C2752a(null);

    /* renamed from: c */
    private AbstractC2139ba f8208c;

    /* renamed from: d */
    private C2768h f8209d;

    /* renamed from: e */
    private C2766f f8210e;

    /* renamed from: f */
    private NumberInfo f8211f;

    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a.class */
    public static final class C2752a {
        private C2752a() {
        }

        public /* synthetic */ C2752a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final Bundle m548a(NumberInfo numberInfo) {
            C1694h.m3117b(numberInfo, "numberInfo");
            Bundle bundle = new Bundle();
            bundle.putParcelable("numberInfo", numberInfo);
            return bundle;
        }

        /* renamed from: a */
        public final void m549a(Context context, NumberInfo numberInfo) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(numberInfo, "numberInfo");
            Intent intent = new Intent(context, NumberReportsActivity.class);
            intent.putExtras(m548a(numberInfo));
            context.startActivity(intent);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b.class */
    static final class C2753b extends AbstractC1695i implements AbstractC1662a<C1775o> {

        /* renamed from: a */
        final /* synthetic */ NumberInfo f8212a;

        /* renamed from: b */
        final /* synthetic */ NumberReportsFragment f8213b;

        /* renamed from: c */
        final /* synthetic */ ActivityC2499a f8214c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2753b(NumberInfo numberInfo, NumberReportsFragment numberReportsFragment, ActivityC2499a activityC2499a) {
            super(0);
            this.f8212a = numberInfo;
            this.f8213b = numberReportsFragment;
            this.f8214c = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1662a
        /* renamed from: a */
        public /* synthetic */ C1775o mo3a() {
            m547b();
            return C1775o.f4450a;
        }

        /* renamed from: b */
        public final void m547b() {
            String str;
            C3104j.f9124a.m161a("NumberReviewsActivity.moreReviews");
            try {
                str = URLEncoder.encode(this.f8212a.m1479b(), "UTF-8");
                C1694h.m3122a((Object) str, "URLEncoder.encode(numberInfo.getNumber(), \"UTF-8\")");
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                str = "";
            }
            try {
                this.f8213b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C2454t.f7186a.m984a().m981b() + "/search?q=" + str + "&src=map&countryOperator=" + this.f8212a.m1475c())));
            } catch (Exception e2) {
                C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
                Toast.makeText(this.f8214c, "Error openning web browser!", 1).show();
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c.class */
    static final class C2754c extends AbstractC1695i implements AbstractC1662a<C1775o> {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8216b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2754c(ActivityC2499a activityC2499a) {
            super(0);
            NumberReportsFragment.this = r4;
            this.f8216b = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1662a
        /* renamed from: a */
        public /* synthetic */ C1775o mo3a() {
            m546b();
            return C1775o.f4450a;
        }

        /* renamed from: b */
        public final void m546b() {
            C3104j.f9124a.m161a("NumberReviewsActivity.donation");
            PromoFragment.f8266b.m497b(NumberReportsFragment.this.m859a());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d.class */
    static final class C2755d extends AbstractC1695i implements AbstractC1663b<List<? extends C2758a>, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2755d() {
            super(1);
            NumberReportsFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(List<? extends C2758a> list) {
            m545a((List<C2758a>) list);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m545a(List<C2758a> list) {
            NumberReportsFragment.m552a(NumberReportsFragment.this).m532a(false);
            NumberReportsFragment.m552a(NumberReportsFragment.this).m534a(list);
            ProgressBar progressBar = NumberReportsFragment.m551b(NumberReportsFragment.this).f5693d;
            C1694h.m3122a((Object) progressBar, "binding.progressBar");
            progressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e.class */
    public static final class C2756e extends AbstractC1695i implements AbstractC1663b<Exception, C1775o> {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8219b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2756e(ActivityC2499a activityC2499a) {
            super(1);
            NumberReportsFragment.this = r4;
            this.f8219b = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(Exception exc) {
            m544a(exc);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m544a(Exception exc) {
            C1694h.m3117b(exc, "it");
            try {
                ProgressBar progressBar = NumberReportsFragment.m551b(NumberReportsFragment.this).f5693d;
                C1694h.m3122a((Object) progressBar, "binding.progressBar");
                progressBar.setVisibility(8);
                new DialogInterfaceC0090d.C0091a(this.f8219b).m7915b(2131755428).m7927a(2131755219, new DialogInterface.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsFragment.e.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        C2756e.this.f8219b.finish();
                    }
                }).m7918a(false).m7916b().show();
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ C2766f m552a(NumberReportsFragment numberReportsFragment) {
        C2766f c2766f = numberReportsFragment.f8210e;
        if (c2766f == null) {
            C1694h.m3116b("numberReviewsAdapter");
        }
        return c2766f;
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC2139ba m551b(NumberReportsFragment numberReportsFragment) {
        AbstractC2139ba abstractC2139ba = numberReportsFragment.f8208c;
        if (abstractC2139ba == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2139ba;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        Uri data;
        C1694h.m3117b(activityC2499a, "activity");
        try {
            AbstractC0919u m5061a = C0925w.m5055a(this).m5061a(C2768h.class);
            C1694h.m3122a((Object) m5061a, "ViewModelProviders.of(th…ewsViewModel::class.java)");
            this.f8209d = (C2768h) m5061a;
            C2768h c2768h = this.f8209d;
            if (c2768h == null) {
                C1694h.m3116b("model");
            }
            c2768h.m528a((AbstractC1663b<? super List<C2758a>, C1775o>) new C2755d());
            C2768h c2768h2 = this.f8209d;
            if (c2768h2 == null) {
                C1694h.m3116b("model");
            }
            c2768h2.m524b(new C2756e(activityC2499a));
            C2768h c2768h3 = this.f8209d;
            if (c2768h3 == null) {
                C1694h.m3116b("model");
            }
            this.f8210e = new C2766f(c2768h3.m525b());
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
            AbstractC2139ba abstractC2139ba = this.f8208c;
            if (abstractC2139ba == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView = abstractC2139ba.f5694e;
            C1694h.m3122a((Object) recyclerView, "binding.recyclerView");
            C2766f c2766f = this.f8210e;
            if (c2766f == null) {
                C1694h.m3116b("numberReviewsAdapter");
            }
            recyclerView.setAdapter(c2766f);
            AbstractC2139ba abstractC2139ba2 = this.f8208c;
            if (abstractC2139ba2 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView2 = abstractC2139ba2.f5694e;
            C1694h.m3122a((Object) recyclerView2, "binding.recyclerView");
            recyclerView2.setLayoutManager(linearLayoutManager);
            C2766f c2766f2 = this.f8210e;
            if (c2766f2 == null) {
                C1694h.m3116b("numberReviewsAdapter");
            }
            c2766f2.m532a(true);
            C2766f c2766f3 = this.f8210e;
            if (c2766f3 == null) {
                C1694h.m3116b("numberReviewsAdapter");
            }
            c2766f3.m534a((List<C2758a>) null);
            try {
                Intent intent = activityC2499a.getIntent();
                if (intent != null) {
                    if (C1694h.m3123a((Object) intent.getAction(), (Object) "android.intent.action.VIEW") && (data = intent.getData()) != null) {
                        C1694h.m3122a((Object) data, "uri");
                        this.f8211f = new NumberInfo(data.getPathSegments().get(1), C3099f.f9116a.m177a(), EnumC2436k.UNKNOWN, false, 8, null);
                    }
                    Bundle extras = intent.getExtras();
                    if (extras != null && extras.containsKey("numberInfo")) {
                        this.f8211f = (NumberInfo) extras.getParcelable("numberInfo");
                    }
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            if (this.f8211f == null) {
                m859a().finish();
                return;
            }
            NumberInfo numberInfo = this.f8211f;
            if (numberInfo == null) {
                return;
            }
            String m1469f = numberInfo.m1469f();
            AbstractC0078a b = m857b();
            if (b != null) {
                C1705p c1705p = C1705p.f4394a;
                String string = getString(2131755468);
                C1694h.m3122a((Object) string, "getString(R.string.reports_for___)");
                Object[] objArr = new Object[1];
                objArr[0] = m1469f;
                String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
                C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
                b.mo7759a(format);
            }
            AbstractC2139ba abstractC2139ba3 = this.f8208c;
            if (abstractC2139ba3 == null) {
                C1694h.m3116b("binding");
            }
            ProgressBar progressBar = abstractC2139ba3.f5693d;
            C1694h.m3122a((Object) progressBar, "binding.progressBar");
            progressBar.setVisibility(0);
            C2768h c2768h4 = this.f8209d;
            if (c2768h4 == null) {
                C1694h.m3116b("model");
            }
            c2768h4.m527a(numberInfo, false);
            C2766f c2766f4 = this.f8210e;
            if (c2766f4 == null) {
                C1694h.m3116b("numberReviewsAdapter");
            }
            c2766f4.m533a(new C2753b(numberInfo, this, activityC2499a));
            C2766f c2766f5 = this.f8210e;
            if (c2766f5 == null) {
                C1694h.m3116b("numberReviewsAdapter");
            }
            c2766f5.m530b(new C2754c(activityC2499a));
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2139ba abstractC2139ba = this.f8208c;
        if (abstractC2139ba == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2139ba.f5692c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558477, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8208c = (AbstractC2139ba) m5843a;
        AbstractC2139ba abstractC2139ba = this.f8208c;
        if (abstractC2139ba == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2139ba.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }
}
