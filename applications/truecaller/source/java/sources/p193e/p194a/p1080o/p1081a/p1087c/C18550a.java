package p193e.p194a.p1080o.p1081a.p1087c;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.reason.CallReason;
import com.truecaller.contextcall.p160ui.managecallreasons.HomeButtonBehaviour;
import com.truecaller.contextcall.p160ui.managecallreasons.ManageCallReasonsActivity;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1081a.p1087c.p1088n.C18572b;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import p193e.p194a.p1080o.p1081a.p1089g.p1090g.C18599a;
import p193e.p194a.p1080o.p1081a.p1089g.p1091h.C18608a;
import p193e.p194a.p1080o.p1081a.p1094h.AbstractC18638a;
import p193e.p194a.p1080o.p1081a.p1094h.AbstractC18650i;
import p193e.p194a.p1080o.p1097b.p1098a.C18694d;
import p193e.p194a.p1080o.p1102o.C18801n;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� L2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001MB\u0007¢\u0006\u0004\bK\u0010\u0011J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010\u001aJ\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\u0011J\u000f\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010\u0011J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020#H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010\u0011J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0011R\u001d\u00104\u001a\u00020/8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001d\u0010:\u001a\u0002058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\"\u0010B\u001a\u00020;8��@��X\u0081.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010J\u001a\u00020C8��@��X\u0081.¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010I¨\u0006N"}, d2 = {"Le/a/o/a/c/a;", "Landroidx/fragment/app/Fragment;", "Le/a/o/a/c/l;", "Le/a/o/a/g/c;", "Le/a/o/a/h/i;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "", "Le/a/o/a/c/g;", "callReasons", "Jj", "(Ljava/util/List;)V", "", "hint", "gq", "(Ljava/lang/String;)V", "Lcom/truecaller/contextcall/db/reason/CallReason;", "callReason", "Uw", "(Lcom/truecaller/contextcall/db/reason/CallReason;)V", "title", "setTitle", "ph", "Mk", "", "Hr", "()Z", "agreed", "c1", "(Z)V", "Le/a/o/a/g/d;", "type", "Vi", "(Le/a/o/a/g/d;)V", "q4", "onDestroy", "Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;", "h", "Ls1/g;", "Q3", "()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;", "manageCallReasonAnalyticsContext", "Le/a/o/o/n;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/o/o/n;", "binding", "Le/a/o/a/h/a;", "f", "Le/a/o/a/h/a;", "getCommunityGuideline$context_call_release", "()Le/a/o/a/h/a;", "setCommunityGuideline$context_call_release", "(Le/a/o/a/h/a;)V", "communityGuideline", "Le/a/o/a/c/k;", "e", "Le/a/o/a/c/k;", "RA", "()Le/a/o/a/c/k;", "setPresenter$context_call_release", "(Le/a/o/a/c/k;)V", "presenter", "<init>", "j", AbstractC2405c.f7629a, "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.c.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/a.class */
public final class C18550a extends AbstractC18559d implements AbstractC18569l, AbstractC18590c, AbstractC18650i {

    /* renamed from: i */
    public static final /* synthetic */ l[] f52309i = {C22128a.m8621g0(C18550a.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/FragmentManageReasonsBinding;", 0)};

    /* renamed from: j */
    public static final C18553c f52310j = new C18553c(null);
    @Inject

    /* renamed from: e */
    public AbstractC18568k f52311e;
    @Inject

    /* renamed from: f */
    public AbstractC18638a f52312f;

    /* renamed from: g */
    public final ViewBindingProperty f52313g = new C19350a(new C18552b());

    /* renamed from: h */
    public final g f52314h = C25225a.m3978P1(new C18554d());

    /* renamed from: e.a.o.a.c.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/o/a/c/a$a.class */
    public static final class C18551a extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ int f52315b;

        /* renamed from: c */
        public final /* synthetic */ Object f52316c;

        /* renamed from: d */
        public final /* synthetic */ Object f52317d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18551a(int i, Object obj, Object obj2) {
            super(0);
            this.f52315b = i;
            this.f52316c = obj;
            this.f52317d = obj2;
        }

        public final Object invoke() {
            s sVar = s.a;
            int i = this.f52315b;
            if (i == 0) {
                ((C18550a) this.f52317d).m14788RA().mo14773g2((AbstractC18562g) this.f52316c);
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                ((C18550a) this.f52317d).m14788RA().mo14771ue((AbstractC18562g) this.f52316c);
                return sVar;
            }
        }
    }

    /* renamed from: e.a.o.a.c.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/a$b.class */
    public static final class C18552b extends m implements s1.z.b.l<C18550a, C18801n> {
        public C18552b() {
            super(1);
        }

        /* renamed from: d */
        public Object m14787d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3771R.C3773id.continueBtn;
            MaterialButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C3771R.C3773id.reasonsContainer;
                LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                if (linearLayout != null) {
                    i = C3771R.C3773id.textHeaderSubtitle;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C3771R.C3773id.textHeaderTitle;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            return new C18801n((ScrollView) requireView, findViewById, linearLayout, textView, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.o.a.c.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/a$c.class */
    public static final class C18553c {
        public C18553c(f fVar) {
        }
    }

    /* renamed from: e.a.o.a.c.a$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/a$d.class */
    public static final class C18554d extends m implements a<ContextCallAnalyticsContext> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18554d() {
            super(0);
            C18550a.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
            if (r4 != null) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r3 = this;
                r0 = r3
                e.a.o.a.c.a r0 = p193e.p194a.p1080o.p1081a.p1087c.C18550a.this
                n3.r.a.l r0 = r0.getActivity()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L23
                r0 = r4
                android.content.Intent r0 = r0.getIntent()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L23
                r0 = r4
                java.lang.String r1 = "manage_call_reason_source"
                java.lang.String r0 = r0.getStringExtra(r1)
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L23
                goto L2a
            L23:
                com.truecaller.contextcall.utils.ContextCallAnalyticsContext r0 = com.truecaller.contextcall.utils.ContextCallAnalyticsContext.SETTINGS
                java.lang.String r0 = r0.name()
                r4 = r0
            L2a:
                r0 = r4
                java.lang.String r1 = "activity?.intent?.getStr…ticsContext.SETTINGS.name"
                s1.z.c.l.d(r0, r1)
                r0 = r4
                com.truecaller.contextcall.utils.ContextCallAnalyticsContext r0 = com.truecaller.contextcall.utils.ContextCallAnalyticsContext.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1087c.C18550a.C18554d.invoke():java.lang.Object");
        }
    }

    /* renamed from: e.a.o.a.c.a$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/a$e.class */
    public static final class View$OnClickListenerC18555e implements View.OnClickListener {
        public View$OnClickListenerC18555e() {
            C18550a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C26907a c26907a = new C26907a(C18550a.this.getParentFragmentManager());
            int i = C3771R.C3773id.container;
            C18572b.C18574b c18574b = C18572b.f52353i;
            ContextCallAnalyticsContext mo14766Q3 = C18550a.this.mo14766Q3();
            Objects.requireNonNull(c18574b);
            s1.z.c.l.e(mo14766Q3, "manageCallReasonAnalyticsContext");
            C18572b c18572b = new C18572b();
            Bundle bundle = new Bundle();
            bundle.putString("manage_call_reason_source", mo14766Q3.name());
            c18572b.setArguments(bundle);
            c26907a.m1120m(i, c18572b, null);
            c26907a.m1128e(d0.a(C18572b.class).c());
            c26907a.mo1126g();
        }
    }

    /* renamed from: e.a.o.a.c.a$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/a$f.class */
    public static final class View$OnClickListenerC18556f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC18562g f52320a;

        /* renamed from: b */
        public final /* synthetic */ C18550a f52321b;

        public View$OnClickListenerC18556f(AbstractC18562g abstractC18562g, C18550a c18550a) {
            this.f52320a = abstractC18562g;
            this.f52321b = c18550a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f52321b.m14788RA().mo14770z3(this.f52320a);
        }
    }

    public C18550a() {
        super(C3771R.layout.fragment_manage_reasons);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Hg */
    public void mo14748Hg() {
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: Hr */
    public boolean mo14769Hr() {
        AbstractC18638a abstractC18638a = this.f52312f;
        if (abstractC18638a == null) {
            s1.z.c.l.l("communityGuideline");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        return abstractC18638a.mo14671b(childFragmentManager, mo14766Q3());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: Jj */
    public void mo14768Jj(List<? extends AbstractC18562g> list) {
        s1.z.c.l.e(list, "callReasons");
        m14789QA().f52827b.removeAllViews();
        for (AbstractC18562g abstractC18562g : list) {
            LinearLayout linearLayout = m14789QA().f52827b;
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            C18694d c18694d = new C18694d(requireContext, null, 0, 6);
            c18694d.setReason(abstractC18562g);
            c18694d.setOnClickListener(new View$OnClickListenerC18556f(abstractC18562g, this));
            c18694d.setOnEditListener(new C18551a(0, abstractC18562g, this));
            c18694d.setOnDeleteListener(new C18551a(1, abstractC18562g, this));
            linearLayout.addView(c18694d);
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: Mk */
    public void mo14767Mk() {
        MaterialButton materialButton = m14789QA().f52826a;
        s1.z.c.l.d(materialButton, "binding.continueBtn");
        C19286f.m13689O(materialButton);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: Q3 */
    public ContextCallAnalyticsContext mo14766Q3() {
        return (ContextCallAnalyticsContext) this.f52314h.getValue();
    }

    /* renamed from: QA */
    public final C18801n m14789QA() {
        return (C18801n) this.f52313g.m34468b(this, f52309i[0]);
    }

    /* renamed from: RA */
    public final AbstractC18568k m14788RA() {
        AbstractC18568k abstractC18568k = this.f52311e;
        if (abstractC18568k != null) {
            return abstractC18568k;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: Uw */
    public void mo14765Uw(CallReason callReason) {
        s1.z.c.l.e(callReason, "callReason");
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        s1.z.c.l.e(childFragmentManager, "fragmentManager");
        s1.z.c.l.e(callReason, "callReason");
        C18608a c18608a = new C18608a();
        Bundle bundle = new Bundle();
        bundle.putParcelable("CallReason", callReason);
        c18608a.setArguments(bundle);
        c18608a.show(childFragmentManager, d0.a(C18608a.class).c());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Vi */
    public void mo14747Vi(AbstractC18591d abstractC18591d) {
        s1.z.c.l.e(abstractC18591d, "type");
        if (s1.z.c.l.a(abstractC18591d, AbstractC18591d.C18592a.f52375a)) {
            AbstractC18568k abstractC18568k = this.f52311e;
            if (abstractC18568k != null) {
                abstractC18568k.mo14772l6();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        } else if (!s1.z.c.l.a(abstractC18591d, AbstractC18591d.C18593b.f52376a)) {
        } else {
            AbstractC18568k abstractC18568k2 = this.f52311e;
            if (abstractC18568k2 != null) {
                abstractC18568k2.mo14775Qb();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18650i
    /* renamed from: c1 */
    public void mo14670c1(boolean z) {
        AbstractC18568k abstractC18568k = this.f52311e;
        if (abstractC18568k != null) {
            abstractC18568k.mo14774c1(z);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: gq */
    public void mo14764gq(String str) {
        s1.z.c.l.e(str, "hint");
        C18599a.C18600a c18600a = C18599a.f52380l;
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        c18600a.m14739a(childFragmentManager, str, mo14766Q3());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18559d
    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        AbstractC18568k abstractC18568k = this.f52311e;
        if (abstractC18568k != null) {
            abstractC18568k.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onDestroy() {
        AbstractC18568k abstractC18568k = this.f52311e;
        if (abstractC18568k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18568k.mo9806c();
        C18550a.super.onDestroy();
    }

    public void onResume() {
        C18550a.super.onResume();
        ManageCallReasonsActivity activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof ManageCallReasonsActivity)) {
            lVar = null;
        }
        ManageCallReasonsActivity manageCallReasonsActivity = lVar;
        if (manageCallReasonsActivity != null) {
            manageCallReasonsActivity.m35585pa(HomeButtonBehaviour.GO_BACK);
        }
        AbstractC18568k abstractC18568k = this.f52311e;
        if (abstractC18568k != null) {
            abstractC18568k.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C18550a.super.onViewCreated(view, bundle);
        m14789QA().f52826a.setOnClickListener(new View$OnClickListenerC18555e());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    /* renamed from: ph */
    public void mo14763ph() {
        MaterialButton materialButton = m14789QA().f52826a;
        s1.z.c.l.d(materialButton, "binding.continueBtn");
        C19286f.m13684T(materialButton);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: q4 */
    public void mo14746q4() {
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        AbstractC25393a supportActionBar = activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3542y(str);
        }
    }
}
