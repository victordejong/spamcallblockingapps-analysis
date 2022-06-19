package p193e.p194a.p1011l.p1012a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.util.DebugSubscriptionEditView;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bT\u0010\u0010J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010R%\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R%\u0010\u001b\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0015\u001a\u0004\b\u001a\u0010\u0017R\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R%\u0010&\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0015\u001a\u0004\b%\u0010\u0017R%\u0010+\u001a\n \u0013*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0015\u001a\u0004\b)\u0010*R%\u0010.\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u0015\u001a\u0004\b-\u0010\u0017R%\u00101\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u0015\u001a\u0004\b0\u0010\u0017R%\u00104\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u0015\u001a\u0004\b3\u0010\u0017R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R%\u0010?\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010\u0015\u001a\u0004\b>\u0010\u0017R%\u0010D\u001a\n \u0013*\u0004\u0018\u00010@0@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010\u0015\u001a\u0004\bB\u0010CR%\u0010G\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010\u0015\u001a\u0004\bF\u0010\u0017R%\u0010J\u001a\n \u0013*\u0004\u0018\u00010@0@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010\u0015\u001a\u0004\bI\u0010CR%\u0010M\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010\u0015\u001a\u0004\bL\u0010\u0017R%\u0010P\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010\u0015\u001a\u0004\bO\u0010\u0017R%\u0010S\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010\u0015\u001a\u0004\bR\u0010\u0017¨\u0006U"}, d2 = {"Le/a/l/a/a;", "Ln3/r/a/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "SA", "Lcom/truecaller/premium/util/DebugSubscriptionEditView;", "kotlin.jvm.PlatformType", "p", "Ls1/g;", "getQuarterlyEditView", "()Lcom/truecaller/premium/util/DebugSubscriptionEditView;", "quarterlyEditView", "m", "getGoldEditView", "goldEditView", "Le/a/p4/b;", "e", "Le/a/p4/b;", "getQaMenuSettings", "()Le/a/p4/b;", "setQaMenuSettings", "(Le/a/p4/b;)V", "qaMenuSettings", "h", "getConsumableYearlyEditView", "consumableYearlyEditView", "Landroidx/appcompat/widget/SwitchCompat;", "l", "QA", "()Landroidx/appcompat/widget/SwitchCompat;", "enableSwitch", "j", "getConsumableMonthlyEditView", "consumableMonthlyEditView", "n", "getHalfYearlyEditView", "halfYearlyEditView", "t", "RA", "yearlyEditView", "Le/a/l/a/f;", "f", "Le/a/l/a/f;", "getDebugSubscriptionRepository", "()Le/a/l/a/f;", "setDebugSubscriptionRepository", "(Le/a/l/a/f;)V", "debugSubscriptionRepository", "g", "getConsumableGoldEditView", "consumableGoldEditView", "Landroid/widget/Button;", "q", "getResetButton", "()Landroid/widget/Button;", "resetButton", "o", "getMonthlyEditView", "monthlyEditView", "r", "getSaveButton", "saveButton", "s", "getWelcomeEditView", "welcomeEditView", "i", "getConsumableHalfYearlyEditView", "consumableHalfYearlyEditView", "k", "getConsumableQuarterlyEditView", "consumableQuarterlyEditView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.a.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/a.class */
public final class C16555a extends AbstractC16587k {

    /* renamed from: u */
    public static final /* synthetic */ int f46525u = 0;
    @Inject

    /* renamed from: e */
    public AbstractC19215b f46526e;
    @Inject

    /* renamed from: f */
    public C16572f f46527f;

    /* renamed from: g */
    public final g f46528g = C19286f.m13659t(this, C2752R.C2754id.consumableGoldEditView);

    /* renamed from: h */
    public final g f46529h = C19286f.m13659t(this, C2752R.C2754id.consumableYearlyEditView);

    /* renamed from: i */
    public final g f46530i = C19286f.m13659t(this, C2752R.C2754id.consumableHalfYearlyEditView);

    /* renamed from: j */
    public final g f46531j = C19286f.m13659t(this, C2752R.C2754id.consumableMonthlyEditView);

    /* renamed from: k */
    public final g f46532k = C19286f.m13659t(this, C2752R.C2754id.consumableQuarterlyEditView);

    /* renamed from: l */
    public final g f46533l = C19286f.m13659t(this, C2752R.C2754id.enableSwitch);

    /* renamed from: m */
    public final g f46534m = C19286f.m13659t(this, C2752R.C2754id.goldEditView);

    /* renamed from: n */
    public final g f46535n = C19286f.m13659t(this, C2752R.C2754id.halfYearlyEditView);

    /* renamed from: o */
    public final g f46536o = C19286f.m13659t(this, C2752R.C2754id.monthlyEditView);

    /* renamed from: p */
    public final g f46537p = C19286f.m13659t(this, C2752R.C2754id.quarterlyEditView);

    /* renamed from: q */
    public final g f46538q = C19286f.m13659t(this, C2752R.C2754id.resetButton);

    /* renamed from: r */
    public final g f46539r = C19286f.m13659t(this, 2131365534);

    /* renamed from: s */
    public final g f46540s = C19286f.m13659t(this, C2752R.C2754id.welcomeEditView);

    /* renamed from: t */
    public final g f46541t = C19286f.m13659t(this, C2752R.C2754id.yearlyEditView);

    /* renamed from: e.a.l.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/a/a$a.class */
    public static final class View$OnClickListenerC16556a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f46542a;

        /* renamed from: b */
        public final /* synthetic */ Object f46543b;

        public View$OnClickListenerC16556a(int i, Object obj) {
            this.f46542a = i;
            this.f46543b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f46542a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C16555a c16555a = (C16555a) this.f46543b;
                C16572f c16572f = c16555a.f46527f;
                if (c16572f == null) {
                    l.l("debugSubscriptionRepository");
                    throw null;
                }
                C16578h c16578h = new C16578h(((DebugSubscriptionEditView) c16555a.f46536o.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46537p.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46535n.getValue()).getSubscription(), c16555a.m17250RA().getSubscription(), ((DebugSubscriptionEditView) c16555a.f46540s.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46534m.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46529h.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46528g.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46530i.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46532k.getValue()).getSubscription(), ((DebugSubscriptionEditView) c16555a.f46531j.getValue()).getSubscription(), c16555a.m17250RA().getSubscription());
                l.e(c16578h, "debugSubscriptions");
                c16572f.f46573b.mo13868N1(c16572f.f46572a.m(c16578h));
                return;
            }
            C16555a c16555a2 = (C16555a) this.f46543b;
            int i2 = C16555a.f46525u;
            SwitchCompat m17251QA = c16555a2.m17251QA();
            l.d(m17251QA, "enableSwitch");
            m17251QA.setChecked(false);
            C16572f c16572f2 = ((C16555a) this.f46543b).f46527f;
            if (c16572f2 == null) {
                l.l("debugSubscriptionRepository");
                throw null;
            }
            c16572f2.f46573b.mo13868N1(null);
            ((C16555a) this.f46543b).m17249SA();
        }
    }

    /* renamed from: e.a.l.a.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/a$b.class */
    public static final class C16557b implements CompoundButton.OnCheckedChangeListener {
        public C16557b() {
            C16555a.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            AbstractC19215b abstractC19215b = C16555a.this.f46526e;
            if (abstractC19215b != null) {
                abstractC19215b.mo13869L1(z);
            } else {
                l.l("qaMenuSettings");
                throw null;
            }
        }
    }

    /* renamed from: QA */
    public final SwitchCompat m17251QA() {
        return (SwitchCompat) this.f46533l.getValue();
    }

    /* renamed from: RA */
    public final DebugSubscriptionEditView m17250RA() {
        return (DebugSubscriptionEditView) this.f46541t.getValue();
    }

    /* renamed from: SA */
    public final void m17249SA() {
        C16572f c16572f = this.f46527f;
        if (c16572f == null) {
            l.l("debugSubscriptionRepository");
            throw null;
        }
        C16578h m17234a = c16572f.m17234a();
        ((DebugSubscriptionEditView) this.f46536o.getValue()).setSubscription(m17234a.f46578a);
        m17250RA().setSubscription(m17234a.f46581d);
        ((DebugSubscriptionEditView) this.f46540s.getValue()).setSubscription(m17234a.f46582e);
        ((DebugSubscriptionEditView) this.f46537p.getValue()).setSubscription(m17234a.f46579b);
        ((DebugSubscriptionEditView) this.f46535n.getValue()).setSubscription(m17234a.f46580c);
        ((DebugSubscriptionEditView) this.f46534m.getValue()).setSubscription(m17234a.f46583f);
        ((DebugSubscriptionEditView) this.f46529h.getValue()).setSubscription(m17234a.f46584g);
        ((DebugSubscriptionEditView) this.f46528g.getValue()).setSubscription(m17234a.f46585h);
        ((DebugSubscriptionEditView) this.f46530i.getValue()).setSubscription(m17234a.f46586i);
        ((DebugSubscriptionEditView) this.f46532k.getValue()).setSubscription(m17234a.f46587j);
        ((DebugSubscriptionEditView) this.f46531j.getValue()).setSubscription(m17234a.f46588k);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_debug_subscriptions, viewGroup, false);
    }

    public void onStart() {
        Window window;
        C16555a.super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -2);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C16555a.super.onViewCreated(view, bundle);
        SwitchCompat m17251QA = m17251QA();
        l.d(m17251QA, "enableSwitch");
        AbstractC19215b abstractC19215b = this.f46526e;
        if (abstractC19215b == null) {
            l.l("qaMenuSettings");
            throw null;
        }
        m17251QA.setChecked(abstractC19215b.mo13849g2());
        m17251QA().setOnCheckedChangeListener(new C16557b());
        ((Button) this.f46538q.getValue()).setOnClickListener(new View$OnClickListenerC16556a(0, this));
        ((Button) this.f46539r.getValue()).setOnClickListener(new View$OnClickListenerC16556a(1, this));
        m17249SA();
    }
}
