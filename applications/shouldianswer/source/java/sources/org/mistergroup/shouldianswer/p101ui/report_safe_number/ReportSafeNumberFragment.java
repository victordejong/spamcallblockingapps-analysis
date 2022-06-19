package org.mistergroup.shouldianswer.p101ui.report_safe_number;

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
import org.mistergroup.shouldianswer.p097a.AbstractC2178cm;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment.class */
public final class ReportSafeNumberFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2806a f8359b = new C2806a(null);

    /* renamed from: c */
    private AbstractC2178cm f8360c;

    /* renamed from: d */
    private boolean f8361d;

    /* renamed from: e */
    private C2816b f8362e;

    /* renamed from: f */
    private NumberInfo f8363f;

    /* renamed from: g */
    private boolean f8364g = true;

    /* renamed from: h */
    private boolean f8365h;

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a.class */
    public static final class C2806a {
        private C2806a() {
        }

        public /* synthetic */ C2806a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final Bundle m462a(NumberReport numberReport) {
            C1694h.m3117b(numberReport, "numberReport");
            Bundle bundle = new Bundle();
            bundle.putParcelable("numberReport", numberReport);
            return bundle;
        }

        /* renamed from: a */
        public final void m463a(Context context, NumberReport numberReport) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(numberReport, "numberReport");
            Intent intent = new Intent(context, ReportSafeNumberActivity.class);
            intent.putExtras(m462a(numberReport));
            context.startActivity(intent);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$b.class */
    static final class View$OnClickListenerC2807b implements View.OnClickListener {
        View$OnClickListenerC2807b() {
            ReportSafeNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1424a(EnumC2439m.SAFE_COMPANY);
            ReportSafeNumberFragment.this.f8361d = true;
            ReportSafeNumberFragment.m473a(ReportSafeNumberFragment.this, false, 1, null);
            ReportSafeNumberFragment.this.m466e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$c.class */
    static final class View$OnClickListenerC2808c implements View.OnClickListener {
        View$OnClickListenerC2808c() {
            ReportSafeNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1424a(EnumC2439m.SAFE_NONPROFIT);
            ReportSafeNumberFragment.this.f8361d = true;
            ReportSafeNumberFragment.m473a(ReportSafeNumberFragment.this, false, 1, null);
            ReportSafeNumberFragment.this.m466e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$d.class */
    static final class View$OnClickListenerC2809d implements View.OnClickListener {
        View$OnClickListenerC2809d() {
            ReportSafeNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1424a(EnumC2439m.SAFE_PERSONAL);
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m457c().m1396a("");
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m457c().m1394b("");
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m457c().m1392c("");
            ReportSafeNumberFragment.this.f8361d = true;
            ReportSafeNumberFragment.m473a(ReportSafeNumberFragment.this, false, 1, null);
            ReportSafeNumberFragment.this.m466e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e.class */
    static final class View$OnClickListenerC2810e implements View.OnClickListener {
        View$OnClickListenerC2810e() {
            ReportSafeNumberFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1424a(EnumC2439m.NONE);
            ReportSafeNumberFragment.this.f8361d = true;
            ReportSafeNumberFragment.m473a(ReportSafeNumberFragment.this, false, 1, null);
            ReportSafeNumberFragment.this.m466e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f.class */
    static final class View$OnClickListenerC2811f implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8371b;

        View$OnClickListenerC2811f(ActivityC2499a activityC2499a) {
            ReportSafeNumberFragment.this = r4;
            this.f8371b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportSafeNumberFragment.this.m464f();
            ReportSafeNumberFragment.this.m472a(true);
            Toast.makeText(ReportSafeNumberFragment.this.getContext(), ReportSafeNumberFragment.this.getString(2131755018), 1).show();
            this.f8371b.finish();
            this.f8371b.overridePendingTransition(2130771998, 2130771997);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g.class */
    static final class C2812g extends AbstractC1695i implements AbstractC1674m<View, Boolean, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2812g() {
            super(2);
            ReportSafeNumberFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* synthetic */ C1775o mo44a(View view, Boolean bool) {
            m461a(view, bool.booleanValue());
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m461a(View view, boolean z) {
            C1694h.m3117b(view, "view");
            if (!z) {
                ReportSafeNumberFragment.m473a(ReportSafeNumberFragment.this, false, 1, null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h.class */
    public static final class C2813h implements TextWatcher {
        C2813h() {
            ReportSafeNumberFragment.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!ReportSafeNumberFragment.this.f8365h) {
                if (!ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1405l()) {
                    ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1420b(true);
                    ReportSafeNumberFragment.this.m468d();
                }
                ReportSafeNumberFragment.this.f8361d = true;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @AbstractC1634f(m3162b = "ReportSafeNumberFragment.kt", m3161c = {169}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$storeReport$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$i.class */
    public static final class C2814i extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8374a;

        /* renamed from: b */
        int f8375b;

        /* renamed from: d */
        final /* synthetic */ boolean f8377d;

        /* renamed from: e */
        private AbstractC1786ad f8378e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2814i(boolean z, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            ReportSafeNumberFragment.this = r5;
            this.f8377d = z;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2814i) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2814i c2814i = new C2814i(this.f8377d, abstractC1641c);
            c2814i.f8378e = (AbstractC1786ad) obj;
            return c2814i;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8375b;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8378e;
                    ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b().m1420b(!this.f8377d);
                    C2380aa c2380aa = C2380aa.f6848a;
                    NumberReport m458b = ReportSafeNumberFragment.m475a(ReportSafeNumberFragment.this).m458b();
                    this.f8374a = abstractC1786ad;
                    this.f8375b = 1;
                    if (c2380aa.m1375b(m458b, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8374a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ C2816b m475a(ReportSafeNumberFragment reportSafeNumberFragment) {
        C2816b c2816b = reportSafeNumberFragment.f8362e;
        if (c2816b == null) {
            C1694h.m3116b("model");
        }
        return c2816b;
    }

    /* renamed from: a */
    static /* synthetic */ void m473a(ReportSafeNumberFragment reportSafeNumberFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        reportSafeNumberFragment.m472a(z);
    }

    /* renamed from: a */
    public final void m472a(boolean z) {
        if (!this.f8361d) {
            if (!z) {
                return;
            }
            C2816b c2816b = this.f8362e;
            if (c2816b == null) {
                C1694h.m3116b("model");
            }
            if (!c2816b.m458b().m1405l()) {
                return;
            }
        }
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2814i(z, null), 2, null);
        this.f8361d = false;
    }

    /* renamed from: d */
    public final void m468d() {
        int i;
        boolean z = this.f8364g;
        AbstractC2178cm abstractC2178cm = this.f8360c;
        if (abstractC2178cm == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2178cm.f5868n;
        C1694h.m3122a((Object) linearLayout, "binding.llConfirmation");
        LinearLayout linearLayout2 = linearLayout;
        C2816b c2816b = this.f8362e;
        if (c2816b == null) {
            C1694h.m3116b("model");
        }
        if (c2816b.m458b().m1405l()) {
            C2816b c2816b2 = this.f8362e;
            if (c2816b2 == null) {
                C1694h.m3116b("model");
            }
            if (c2816b2.m458b().m1412f() != EnumC2439m.NONE) {
                i = 0;
                m856a(z, linearLayout2, i);
            }
        }
        i = 8;
        m856a(z, linearLayout2, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x015b, code lost:
        if (r0 == org.mistergroup.shouldianswer.model.EnumC2439m.SAFE_NONPROFIT) goto L55;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m466e() {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.report_safe_number.ReportSafeNumberFragment.m466e():void");
    }

    /* renamed from: f */
    public final void m464f() {
        C2816b c2816b = this.f8362e;
        if (c2816b == null) {
            C1694h.m3116b("model");
        }
        NumberReport.C2376c m457c = c2816b.m457c();
        AbstractC2178cm abstractC2178cm = this.f8360c;
        if (abstractC2178cm == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText = abstractC2178cm.f5863i;
        C1694h.m3122a((Object) betterEditText, "binding.editComment");
        m457c.m1390d(String.valueOf(betterEditText.getText()));
        C2816b c2816b2 = this.f8362e;
        if (c2816b2 == null) {
            C1694h.m3116b("model");
        }
        NumberReport.C2376c m457c2 = c2816b2.m457c();
        AbstractC2178cm abstractC2178cm2 = this.f8360c;
        if (abstractC2178cm2 == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText2 = abstractC2178cm2.f5865k;
        C1694h.m3122a((Object) betterEditText2, "binding.editCompanyName");
        m457c2.m1396a(String.valueOf(betterEditText2.getText()));
        C2816b c2816b3 = this.f8362e;
        if (c2816b3 == null) {
            C1694h.m3116b("model");
        }
        NumberReport.C2376c m457c3 = c2816b3.m457c();
        AbstractC2178cm abstractC2178cm3 = this.f8360c;
        if (abstractC2178cm3 == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText3 = abstractC2178cm3.f5864j;
        C1694h.m3122a((Object) betterEditText3, "binding.editCompanyActivity");
        m457c3.m1394b(String.valueOf(betterEditText3.getText()));
        C2816b c2816b4 = this.f8362e;
        if (c2816b4 == null) {
            C1694h.m3116b("model");
        }
        NumberReport.C2376c m457c4 = c2816b4.m457c();
        AbstractC2178cm abstractC2178cm4 = this.f8360c;
        if (abstractC2178cm4 == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText4 = abstractC2178cm4.f5866l;
        C1694h.m3122a((Object) betterEditText4, "binding.editCompanyWebsite");
        m457c4.m1392c(String.valueOf(betterEditText4.getText()));
        C2816b c2816b5 = this.f8362e;
        if (c2816b5 == null) {
            C1694h.m3116b("model");
        }
        NumberReport m458b = c2816b5.m458b();
        C2816b c2816b6 = this.f8362e;
        if (c2816b6 == null) {
            C1694h.m3116b("model");
        }
        m458b.m1426a(c2816b6.m457c());
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
            this.f8362e = ((ReportSafeNumberActivity) activityC2499a).m476m();
            NumberReport numberReport = null;
            Intent intent = ((ReportSafeNumberActivity) activityC2499a).getIntent();
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
                C3104j.m152c(C3104j.f9124a, "ReportSafeNumberFragment.initWithActivity invalid params!", null, 2, null);
                activityC2499a.finish();
                return;
            }
            C2816b c2816b = this.f8362e;
            if (c2816b == null) {
                C1694h.m3116b("model");
            }
            if (numberReport2 == null) {
                C1694h.m3124a();
            }
            c2816b.m459a(numberReport2);
            C2816b c2816b2 = this.f8362e;
            if (c2816b2 == null) {
                C1694h.m3116b("model");
            }
            NumberReport.C2376c m1402o = c2816b2.m458b().m1402o();
            if (m1402o != null) {
                C2816b c2816b3 = this.f8362e;
                if (c2816b3 == null) {
                    C1694h.m3116b("model");
                }
                c2816b3.m460a(m1402o);
            }
            C2816b c2816b4 = this.f8362e;
            if (c2816b4 == null) {
                C1694h.m3116b("model");
            }
            String m1419c = c2816b4.m458b().m1419c();
            if (m1419c == null) {
                C1694h.m3124a();
            }
            C2816b c2816b5 = this.f8362e;
            if (c2816b5 == null) {
                C1694h.m3116b("model");
            }
            String m1408i = c2816b5.m458b().m1408i();
            if (m1408i == null) {
                C1694h.m3124a();
            }
            this.f8363f = new NumberInfo(m1419c, m1408i, EnumC2436k.UNKNOWN, false, 8, null);
            AbstractC2178cm abstractC2178cm = this.f8360c;
            if (abstractC2178cm == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm.f5860f.setOnClickListener(new View$OnClickListenerC2807b());
            AbstractC2178cm abstractC2178cm2 = this.f8360c;
            if (abstractC2178cm2 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm2.f5861g.setOnClickListener(new View$OnClickListenerC2808c());
            AbstractC2178cm abstractC2178cm3 = this.f8360c;
            if (abstractC2178cm3 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm3.f5862h.setOnClickListener(new View$OnClickListenerC2809d());
            AbstractC2178cm abstractC2178cm4 = this.f8360c;
            if (abstractC2178cm4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm4.f5858d.setOnClickListener(new View$OnClickListenerC2810e());
            C2812g c2812g = new C2812g();
            C2813h c2813h = new C2813h();
            AbstractC2178cm abstractC2178cm5 = this.f8360c;
            if (abstractC2178cm5 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm5.f5863i.setOnFocusChangeListener(new View$OnFocusChangeListenerC2815a(c2812g));
            AbstractC2178cm abstractC2178cm6 = this.f8360c;
            if (abstractC2178cm6 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm6.f5863i.addTextChangedListener(c2813h);
            AbstractC2178cm abstractC2178cm7 = this.f8360c;
            if (abstractC2178cm7 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm7.f5865k.setOnFocusChangeListener(new View$OnFocusChangeListenerC2815a(c2812g));
            AbstractC2178cm abstractC2178cm8 = this.f8360c;
            if (abstractC2178cm8 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm8.f5865k.addTextChangedListener(c2813h);
            AbstractC2178cm abstractC2178cm9 = this.f8360c;
            if (abstractC2178cm9 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm9.f5864j.setOnFocusChangeListener(new View$OnFocusChangeListenerC2815a(c2812g));
            AbstractC2178cm abstractC2178cm10 = this.f8360c;
            if (abstractC2178cm10 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm10.f5864j.addTextChangedListener(c2813h);
            AbstractC2178cm abstractC2178cm11 = this.f8360c;
            if (abstractC2178cm11 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm11.f5866l.setOnFocusChangeListener(new View$OnFocusChangeListenerC2815a(c2812g));
            AbstractC2178cm abstractC2178cm12 = this.f8360c;
            if (abstractC2178cm12 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm12.f5866l.addTextChangedListener(c2813h);
            AbstractC2178cm abstractC2178cm13 = this.f8360c;
            if (abstractC2178cm13 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2178cm13.f5859e.setOnClickListener(new View$OnClickListenerC2811f(activityC2499a));
            m466e();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2178cm abstractC2178cm = this.f8360c;
        if (abstractC2178cm == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2178cm.f5857c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558496, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8360c = (AbstractC2178cm) m5843a;
        this.f8364g = true;
        AbstractC2178cm abstractC2178cm = this.f8360c;
        if (abstractC2178cm == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2178cm.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        m464f();
        m473a(this, false, 1, null);
    }
}
