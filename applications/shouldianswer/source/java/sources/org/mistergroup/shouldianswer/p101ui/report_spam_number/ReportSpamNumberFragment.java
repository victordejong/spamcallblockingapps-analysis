package org.mistergroup.shouldianswer.p101ui.report_spam_number;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.AbstractC0078a;
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
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2380aa;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.EnumC2439m;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.p097a.AbstractC2182cq;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment.class */
public final class ReportSpamNumberFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2818a f8385b = new C2818a(null);

    /* renamed from: c */
    private AbstractC2182cq f8386c;

    /* renamed from: d */
    private boolean f8387d;

    /* renamed from: e */
    private C2832b f8388e;

    /* renamed from: f */
    private NumberInfo f8389f;

    /* renamed from: g */
    private boolean f8390g = true;

    /* renamed from: h */
    private boolean f8391h;

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a.class */
    public static final class C2818a {
        private C2818a() {
        }

        public /* synthetic */ C2818a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final Bundle m443a(NumberReport numberReport) {
            C1694h.m3117b(numberReport, "numberReport");
            Bundle bundle = new Bundle();
            bundle.putParcelable("numberReport", numberReport);
            return bundle;
        }

        /* renamed from: a */
        public final void m444a(Context context, NumberReport numberReport) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(numberReport, "numberReport");
            Intent intent = new Intent(context, ReportSpamNumberActivity.class);
            intent.putExtras(m443a(numberReport));
            context.startActivity(intent);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b.class */
    static final class View$OnClickListenerC2819b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8393b;

        View$OnClickListenerC2819b(ActivityC2499a activityC2499a) {
            ReportSpamNumberFragment.this = r4;
            this.f8393b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.this.m448d();
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.this.m452a(true);
            this.f8393b.finish();
            this.f8393b.overridePendingTransition(2130771998, 2130771997);
            Toast.makeText(ReportSpamNumberFragment.this.getContext(), ReportSpamNumberFragment.this.getString(2131755018), 1).show();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$c.class */
    static final class View$OnClickListenerC2820c implements View.OnClickListener {
        View$OnClickListenerC2820c() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.FINANCE_SERVICE);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$d.class */
    static final class View$OnClickListenerC2821d implements View.OnClickListener {
        View$OnClickListenerC2821d() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.POLITICAL);
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$e.class */
    static final class View$OnClickListenerC2822e implements View.OnClickListener {
        View$OnClickListenerC2822e() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.SCAM);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$f.class */
    static final class View$OnClickListenerC2823f implements View.OnClickListener {
        View$OnClickListenerC2823f() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.TELEMARKETER);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$g.class */
    static final class View$OnClickListenerC2824g implements View.OnClickListener {
        View$OnClickListenerC2824g() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.SURVEY);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h.class */
    static final class View$OnClickListenerC2825h implements View.OnClickListener {
        View$OnClickListenerC2825h() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.UNSOLICITED_CALL);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$i.class */
    static final class View$OnClickListenerC2826i implements View.OnClickListener {
        View$OnClickListenerC2826i() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.SILENT_CALL);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$j.class */
    static final class View$OnClickListenerC2827j implements View.OnClickListener {
        View$OnClickListenerC2827j() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1424a(EnumC2439m.NONE);
            ReportSpamNumberFragment.this.f8387d = true;
            ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            ReportSpamNumberFragment.this.m445f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$k.class */
    static final class C2828k extends AbstractC1695i implements AbstractC1674m<View, Boolean, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2828k() {
            super(2);
            ReportSpamNumberFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* synthetic */ C1775o mo44a(View view, Boolean bool) {
            m442a(view, bool.booleanValue());
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m442a(View view, boolean z) {
            C1694h.m3117b(view, "view");
            if (!z) {
                ReportSpamNumberFragment.m453a(ReportSpamNumberFragment.this, false, 1, null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l.class */
    public static final class C2829l implements TextWatcher {
        C2829l() {
            ReportSpamNumberFragment.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!ReportSpamNumberFragment.this.f8391h) {
                if (!ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1405l()) {
                    ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1420b(true);
                    ReportSpamNumberFragment.this.m446e();
                }
                ReportSpamNumberFragment.this.f8387d = true;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @AbstractC1634f(m3162b = "ReportSpamNumberFragment.kt", m3161c = {169}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$storeReport$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m.class */
    public static final class C2830m extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8404a;

        /* renamed from: b */
        int f8405b;

        /* renamed from: d */
        final /* synthetic */ boolean f8407d;

        /* renamed from: e */
        private AbstractC1786ad f8408e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2830m(boolean z, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            ReportSpamNumberFragment.this = r5;
            this.f8407d = z;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2830m) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2830m c2830m = new C2830m(this.f8407d, abstractC1641c);
            c2830m.f8408e = (AbstractC1786ad) obj;
            return c2830m;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8405b;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8408e;
                    ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b().m1420b(!this.f8407d);
                    C2380aa c2380aa = C2380aa.f6848a;
                    NumberReport m440b = ReportSpamNumberFragment.m455a(ReportSpamNumberFragment.this).m440b();
                    this.f8404a = abstractC1786ad;
                    this.f8405b = 1;
                    if (c2380aa.m1375b(m440b, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8404a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ C2832b m455a(ReportSpamNumberFragment reportSpamNumberFragment) {
        C2832b c2832b = reportSpamNumberFragment.f8388e;
        if (c2832b == null) {
            C1694h.m3116b("model");
        }
        return c2832b;
    }

    /* renamed from: a */
    static /* synthetic */ void m453a(ReportSpamNumberFragment reportSpamNumberFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        reportSpamNumberFragment.m452a(z);
    }

    /* renamed from: a */
    public final void m452a(boolean z) {
        if (!this.f8387d) {
            if (!z) {
                return;
            }
            C2832b c2832b = this.f8388e;
            if (c2832b == null) {
                C1694h.m3116b("model");
            }
            if (!c2832b.m440b().m1405l()) {
                return;
            }
        }
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2830m(z, null), 2, null);
        this.f8387d = false;
    }

    /* renamed from: e */
    public final void m446e() {
        int i;
        boolean z = this.f8390g;
        AbstractC2182cq abstractC2182cq = this.f8386c;
        if (abstractC2182cq == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2182cq.f5893n;
        C1694h.m3122a((Object) linearLayout, "binding.llConfirmation");
        LinearLayout linearLayout2 = linearLayout;
        C2832b c2832b = this.f8388e;
        if (c2832b == null) {
            C1694h.m3116b("model");
        }
        if (c2832b.m440b().m1405l()) {
            C2832b c2832b2 = this.f8388e;
            if (c2832b2 == null) {
                C1694h.m3116b("model");
            }
            if (c2832b2.m440b().m1412f() != EnumC2439m.NONE) {
                i = 0;
                m856a(z, linearLayout2, i);
            }
        }
        i = 8;
        m856a(z, linearLayout2, i);
    }

    /* renamed from: f */
    public final void m445f() {
        try {
            this.f8391h = true;
            C2832b c2832b = this.f8388e;
            if (c2832b == null) {
                C1694h.m3116b("model");
            }
            EnumC2439m m1412f = c2832b.m440b().m1412f();
            C2832b c2832b2 = this.f8388e;
            if (c2832b2 == null) {
                C1694h.m3116b("model");
            }
            String m1409h = c2832b2.m440b().m1409h();
            AbstractC2182cq abstractC2182cq = this.f8386c;
            if (abstractC2182cq == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView = abstractC2182cq.f5898s;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvPhoneNumber");
            NumberInfo numberInfo = this.f8389f;
            if (numberInfo == null) {
                C1694h.m3116b("numberInfo");
            }
            appCompatTextView.setText(numberInfo.m1469f());
            boolean z = this.f8390g;
            AbstractC2182cq abstractC2182cq2 = this.f8386c;
            if (abstractC2182cq2 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2182cq2.f5894o;
            C1694h.m3122a((Object) linearLayout, "binding.llEnterComment");
            m856a(z, linearLayout, m1412f != EnumC2439m.NONE ? 0 : 8);
            boolean z2 = this.f8390g;
            AbstractC2182cq abstractC2182cq3 = this.f8386c;
            if (abstractC2182cq3 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout2 = abstractC2182cq3.f5897r;
            C1694h.m3122a((Object) linearLayout2, "binding.llSelectedCategory");
            m856a(z2, linearLayout2, m1412f != EnumC2439m.NONE ? 0 : 8);
            boolean z3 = this.f8390g;
            AbstractC2182cq abstractC2182cq4 = this.f8386c;
            if (abstractC2182cq4 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout3 = abstractC2182cq4.f5896q;
            C1694h.m3122a((Object) linearLayout3, "binding.llSelectCategory");
            LinearLayout linearLayout4 = linearLayout3;
            int i = 8;
            if (m1412f == EnumC2439m.NONE) {
                i = 0;
            }
            m856a(z3, linearLayout4, i);
            m446e();
            AbstractC2182cq abstractC2182cq5 = this.f8386c;
            if (abstractC2182cq5 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView2 = abstractC2182cq5.f5899t;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvSelectedCategory");
            appCompatTextView2.setText(EnumC2439m.f7139w.m1015a(m1412f));
            AbstractC2182cq abstractC2182cq6 = this.f8386c;
            if (abstractC2182cq6 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq6.f5892m.setText(m1409h);
            this.f8390g = false;
        } finally {
            this.f8391h = false;
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        try {
            AbstractC0078a b = m857b();
            if (b != null) {
                b.mo7759a("");
            }
            this.f8388e = ((ReportSpamNumberActivity) activityC2499a).m456m();
            NumberReport numberReport = null;
            Intent intent = ((ReportSpamNumberActivity) activityC2499a).getIntent();
            NumberReport numberReport2 = numberReport;
            if (intent != null) {
                Bundle extras = intent.getExtras();
                numberReport2 = numberReport;
                if (extras != null) {
                    numberReport2 = numberReport;
                    if (extras.containsKey("numberReport")) {
                        NumberReport numberReport3 = (NumberReport) extras.getParcelable("numberReport");
                        numberReport2 = numberReport;
                        if (numberReport3 != null) {
                            numberReport2 = numberReport3;
                        }
                    }
                }
            }
            if (numberReport2 == null) {
                C3104j.m152c(C3104j.f9124a, "ReportSpamNumberFragment.initWithActivity invalid params!", null, 2, null);
                activityC2499a.finish();
                return;
            }
            C2832b c2832b = this.f8388e;
            if (c2832b == null) {
                C1694h.m3116b("model");
            }
            if (numberReport2 == null) {
                C1694h.m3124a();
            }
            c2832b.m441a(numberReport2);
            C2832b c2832b2 = this.f8388e;
            if (c2832b2 == null) {
                C1694h.m3116b("model");
            }
            String m1419c = c2832b2.m440b().m1419c();
            if (m1419c == null) {
                C1694h.m3124a();
            }
            C2832b c2832b3 = this.f8388e;
            if (c2832b3 == null) {
                C1694h.m3116b("model");
            }
            String m1408i = c2832b3.m440b().m1408i();
            if (m1408i == null) {
                C1694h.m3124a();
            }
            this.f8389f = new NumberInfo(m1419c, m1408i, EnumC2436k.UNKNOWN, false, 8, null);
            AbstractC2182cq abstractC2182cq = this.f8386c;
            if (abstractC2182cq == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq.f5883d.setOnClickListener(new View$OnClickListenerC2820c());
            AbstractC2182cq abstractC2182cq2 = this.f8386c;
            if (abstractC2182cq2 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq2.f5884e.setOnClickListener(new View$OnClickListenerC2821d());
            AbstractC2182cq abstractC2182cq3 = this.f8386c;
            if (abstractC2182cq3 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq3.f5885f.setOnClickListener(new View$OnClickListenerC2822e());
            AbstractC2182cq abstractC2182cq4 = this.f8386c;
            if (abstractC2182cq4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq4.f5888i.setOnClickListener(new View$OnClickListenerC2823f());
            AbstractC2182cq abstractC2182cq5 = this.f8386c;
            if (abstractC2182cq5 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq5.f5887h.setOnClickListener(new View$OnClickListenerC2824g());
            AbstractC2182cq abstractC2182cq6 = this.f8386c;
            if (abstractC2182cq6 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq6.f5889j.setOnClickListener(new View$OnClickListenerC2825h());
            AbstractC2182cq abstractC2182cq7 = this.f8386c;
            if (abstractC2182cq7 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq7.f5886g.setOnClickListener(new View$OnClickListenerC2826i());
            AbstractC2182cq abstractC2182cq8 = this.f8386c;
            if (abstractC2182cq8 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq8.f5890k.setOnClickListener(new View$OnClickListenerC2827j());
            C2828k c2828k = new C2828k();
            C2829l c2829l = new C2829l();
            AbstractC2182cq abstractC2182cq9 = this.f8386c;
            if (abstractC2182cq9 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq9.f5892m.setOnFocusChangeListener(new View$OnFocusChangeListenerC2831a(c2828k));
            AbstractC2182cq abstractC2182cq10 = this.f8386c;
            if (abstractC2182cq10 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq10.f5892m.addTextChangedListener(c2829l);
            AbstractC2182cq abstractC2182cq11 = this.f8386c;
            if (abstractC2182cq11 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2182cq11.f5891l.setOnClickListener(new View$OnClickListenerC2819b(activityC2499a));
            m445f();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2182cq abstractC2182cq = this.f8386c;
        if (abstractC2182cq == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2182cq.f5882c;
    }

    /* renamed from: d */
    public final void m448d() {
        C2832b c2832b = this.f8388e;
        if (c2832b == null) {
            C1694h.m3116b("model");
        }
        NumberReport m440b = c2832b.m440b();
        AbstractC2182cq abstractC2182cq = this.f8386c;
        if (abstractC2182cq == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText = abstractC2182cq.f5892m;
        C1694h.m3122a((Object) betterEditText, "binding.editComment");
        m440b.m1413e(String.valueOf(betterEditText.getText()));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558498, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8386c = (AbstractC2182cq) m5843a;
        this.f8390g = true;
        AbstractC2182cq abstractC2182cq = this.f8386c;
        if (abstractC2182cq == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2182cq.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        m448d();
        m453a(this, false, 1, null);
    }
}
