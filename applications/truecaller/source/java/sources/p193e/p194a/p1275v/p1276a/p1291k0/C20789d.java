package p193e.p194a.p1275v.p1276a.p1291k0;

import android.content.Context;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1304k.C20907n;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0016\u001a\u00020\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006'"}, d2 = {"Le/a/v/a/k0/d;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/v/a/s0/a;", "Le/a/v/a/k0/b;", "Ls1/s;", "onAttachedToWindow", "()V", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "K", "onDetachedFromWindow", "Lcom/truecaller/premium/PremiumLaunchContext;", "launchContext", "D0", "(Lcom/truecaller/premium/PremiumLaunchContext;)V", "Le/a/v/k/n;", "t", "Le/a/v/k/n;", "getBinding", "()Le/a/v/k/n;", "binding", "Le/a/l/a2;", "v", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "Le/a/v/a/k0/a;", "u", "Le/a/v/a/k0/a;", "getPresenter", "()Le/a/v/a/k0/a;", "setPresenter", "(Le/a/v/a/k0/a;)V", "presenter", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.k0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/k0/d.class */
public final class C20789d extends ConstraintLayout implements AbstractC20848a, AbstractC20787b {

    /* renamed from: t */
    public final C20907n f58440t;
    @Inject

    /* renamed from: u */
    public AbstractC20786a f58441u;
    @Inject

    /* renamed from: v */
    public AbstractC16613a2 f58442v;

    /* renamed from: e.a.v.a.k0.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/k0/d$a.class */
    public static final class View$OnClickListenerC20790a implements View.OnClickListener {
        public View$OnClickListenerC20790a() {
            C20789d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC20787b abstractC20787b = (AbstractC20787b) ((C20788c) C20789d.this.getPresenter()).f57683a;
            if (abstractC20787b != null) {
                abstractC20787b.mo10699D0(PremiumLaunchContext.CONTACT_DETAIL_CONTACT_REQ);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20789d(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            r0 = r12
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r10 = r0
        L9:
            r0 = r12
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L14
            r0 = 0
            r11 = r0
        L14:
            r0 = r8
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r8
            r2 = 0
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4)
            r0 = r8
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = com.truecaller.details_view.C3857R.layout.view_private_number_paywall
            r2 = r7
            android.view.View r0 = r0.inflate(r1, r2)
            int r0 = com.truecaller.details_view.C3857R.C3859id.premiumButtons
            r10 = r0
            r0 = r7
            r1 = r10
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.premium.ui.embedded.EmbeddedPurchaseView r0 = (com.truecaller.premium.p173ui.embedded.EmbeddedPurchaseView) r0
            r13 = r0
            r0 = r13
            if (r0 == 0) goto La9
            int r0 = com.truecaller.details_view.C3857R.C3859id.view
            r10 = r0
            r0 = r7
            r1 = r10
            android.view.View r0 = r0.findViewById(r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto La9
            int r0 = com.truecaller.details_view.C3857R.C3859id.viewPremiumOffering
            r10 = r0
            r0 = r7
            r1 = r10
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r14 = r0
            r0 = r14
            if (r0 == 0) goto La9
            e.a.v.k.n r0 = new e.a.v.k.n
            r1 = r0
            r2 = r7
            r3 = r13
            r4 = r9
            r5 = r14
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "ViewPrivateNumberPaywall…ater.from(context), this)"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            r1 = r9
            r0.f58440t = r1
            r0 = r8
            android.content.Context r0 = r0.getApplicationContext()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r7
            r0.mo10532r(r1)
            int r0 = com.truecaller.details_view.C3857R.C3858drawable.background_outlined_view
            r10 = r0
            java.lang.Object r0 = p1727n3.p1807k.p1809b.C26467a.f74235a
            r9 = r0
            r0 = r7
            r1 = r8
            r2 = r10
            android.graphics.drawable.Drawable r1 = p1727n3.p1807k.p1809b.C26467a.C26470c.m1789b(r1, r2)
            r0.setBackground(r1)
            return
        La9:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "Missing required view with ID: "
            r3 = r7
            android.content.res.Resources r3 = r3.getResources()
            r4 = r10
            java.lang.String r3 = r3.getResourceName(r4)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1291k0.C20789d.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1291k0.AbstractC20787b
    /* renamed from: D0 */
    public void mo10699D0(PremiumLaunchContext premiumLaunchContext) {
        l.e(premiumLaunchContext, "launchContext");
        AbstractC16613a2 abstractC16613a2 = this.f58442v;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        abstractC16613a2.mo17167b(context, premiumLaunchContext);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1291k0.AbstractC20787b
    /* renamed from: K */
    public void mo10698K() {
        C19286f.m13684T(this);
        this.f58440t.f58811c.setOnClickListener(new View$OnClickListenerC20790a());
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20786a abstractC20786a = this.f58441u;
        if (abstractC20786a == null) {
            l.l("presenter");
            throw null;
        }
        C20788c c20788c = (C20788c) abstractC20786a;
        Objects.requireNonNull(c20788c);
        l.e(c20847s, "detailsViewModel");
        AbstractC20787b abstractC20787b = (AbstractC20787b) c20788c.f57683a;
        if (abstractC20787b == null) {
            return;
        }
        abstractC20787b.mo10698K();
    }

    public final C20907n getBinding() {
        return this.f58440t;
    }

    public final AbstractC16613a2 getPremiumScreenNavigator() {
        AbstractC16613a2 abstractC16613a2 = this.f58442v;
        if (abstractC16613a2 != null) {
            return abstractC16613a2;
        }
        l.l("premiumScreenNavigator");
        throw null;
    }

    public final AbstractC20786a getPresenter() {
        AbstractC20786a abstractC20786a = this.f58441u;
        if (abstractC20786a != null) {
            return abstractC20786a;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20786a abstractC20786a = this.f58441u;
        if (abstractC20786a != null) {
            ((AbstractC20576b) abstractC20786a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC20786a abstractC20786a = this.f58441u;
        if (abstractC20786a != null) {
            ((AbstractC20576b) abstractC20786a).f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final void setPremiumScreenNavigator(AbstractC16613a2 abstractC16613a2) {
        l.e(abstractC16613a2, "<set-?>");
        this.f58442v = abstractC16613a2;
    }

    public final void setPresenter(AbstractC20786a abstractC20786a) {
        l.e(abstractC20786a, "<set-?>");
        this.f58441u = abstractC20786a;
    }
}
