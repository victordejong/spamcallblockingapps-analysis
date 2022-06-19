package p193e.p194a.p1275v.p1276a.p1286f0;

import android.view.View;
import android.widget.FrameLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1304k.C20903j;
import s1.f0.r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001a¨\u0006\u001c"}, d2 = {"Le/a/v/a/f0/d;", "Landroid/widget/FrameLayout;", "Le/a/v/a/f0/b;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "a", AbstractC2405c.f7629a, "", "url", C22021b.f61237c, "(Ljava/lang/String;)V", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/v/a/f0/a;", "Le/a/v/a/f0/a;", "getPresenter", "()Le/a/v/a/f0/a;", "setPresenter", "(Le/a/v/a/f0/a;)V", "presenter", "Le/a/v/k/j;", "Le/a/v/k/j;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.f0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/f0/d.class */
public final class C20756d extends FrameLayout implements AbstractC20753b, AbstractC20848a {
    @Inject

    /* renamed from: a */
    public AbstractC20752a f58390a;

    /* renamed from: b */
    public final C20903j f58391b;

    /* renamed from: e.a.v.a.f0.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/f0/d$a.class */
    public static final class View$OnClickListenerC20757a implements View.OnClickListener {
        public View$OnClickListenerC20757a() {
            C20756d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20754c c20754c = (C20754c) C20756d.this.getPresenter();
            C20879a c20879a = c20754c.f58388c;
            String str = c20879a.f58670a;
            ViewActionEvent.LearnMoreSubAction learnMoreSubAction = ViewActionEvent.LearnMoreSubAction.LEARN_MORE;
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(learnMoreSubAction, "subAction");
            String value = learnMoreSubAction.getValue();
            l.e("Click", "action");
            n.B0(new ViewActionEvent("Click", value, str), c20879a.f58671b);
            AbstractC20753b abstractC20753b = (AbstractC20753b) c20754c.f57683a;
            if (abstractC20753b != null) {
                abstractC20753b.mo10759b((String) c20754c.f58387b.getValue());
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20756d(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r6
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = com.truecaller.details_view.C3857R.layout.view_learn_more
            r2 = r5
            r3 = 0
            android.view.View r0 = r0.inflate(r1, r2, r3)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.addView(r1)
            r0 = r7
            java.lang.String r1 = "rootView"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r7 = r0
            e.a.v.k.j r0 = new e.a.v.k.j
            r1 = r0
            r2 = r7
            r3 = r7
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "ViewLearnMoreBinding.inf…rom(context), this, true)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r7
            r0.f58391b = r1
            r0 = r6
            android.content.Context r0 = r0.getApplicationContext()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r6
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r5
            r0.mo10531s(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1286f0.C20756d.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20752a abstractC20752a = this.f58390a;
        if (abstractC20752a == null) {
            l.l("presenter");
            throw null;
        }
        C20754c c20754c = (C20754c) abstractC20752a;
        Objects.requireNonNull(c20754c);
        l.e(c20847s, "detailsViewModel");
        if (!(!r.p((String) c20754c.f58387b.getValue()))) {
            AbstractC20753b abstractC20753b = (AbstractC20753b) c20754c.f57683a;
            if (abstractC20753b == null) {
                return;
            }
            abstractC20753b.mo10758c();
            return;
        }
        C20879a c20879a = c20754c.f58388c;
        String str = c20879a.f58670a;
        ViewActionEvent.LearnMoreSubAction learnMoreSubAction = ViewActionEvent.LearnMoreSubAction.LEARN_MORE;
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(learnMoreSubAction, "subAction");
        String value = learnMoreSubAction.getValue();
        l.e("Shown", "action");
        n.B0(new ViewActionEvent("Shown", value, str), c20879a.f58671b);
        AbstractC20753b abstractC20753b2 = (AbstractC20753b) c20754c.f57683a;
        if (abstractC20753b2 == null) {
            return;
        }
        abstractC20753b2.mo10760a();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1286f0.AbstractC20753b
    /* renamed from: a */
    public void mo10760a() {
        C19286f.m13684T(this);
        this.f58391b.f58802a.setOnClickListener(new View$OnClickListenerC20757a());
    }

    @Override // p193e.p194a.p1275v.p1276a.p1286f0.AbstractC20753b
    /* renamed from: b */
    public void mo10759b(String str) {
        l.e(str, "url");
        C19291g.m13596Q0(str, C17891a1.C17902k.m15628a1(this));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1286f0.AbstractC20753b
    /* renamed from: c */
    public void mo10758c() {
        C19286f.m13689O(this);
    }

    public final AbstractC20752a getPresenter() {
        AbstractC20752a abstractC20752a = this.f58390a;
        if (abstractC20752a != null) {
            return abstractC20752a;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20752a abstractC20752a = this.f58390a;
        if (abstractC20752a != null) {
            ((AbstractC20576b) abstractC20752a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC20752a abstractC20752a = this.f58390a;
        if (abstractC20752a != null) {
            ((AbstractC20576b) abstractC20752a).f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final void setPresenter(AbstractC20752a abstractC20752a) {
        l.e(abstractC20752a, "<set-?>");
        this.f58390a = abstractC20752a;
    }
}
