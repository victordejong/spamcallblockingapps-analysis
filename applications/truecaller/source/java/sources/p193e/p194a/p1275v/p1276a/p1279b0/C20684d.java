package p193e.p194a.p1275v.p1276a.p1279b0;

import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.p162ui.callhistory.SingleCallHistoryExpandedView;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1304k.C20900g;
import p193e.p194a.p1275v.p1308o.AbstractC20918a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J+\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0006J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0012J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010!\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0019\u0010&\u001a\u00020\"8\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010#\u001a\u0004\b$\u0010%R\"\u0010-\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u0006."}, d2 = {"Le/a/v/a/b0/d;", "Landroid/widget/LinearLayout;", "Le/a/v/a/b0/b;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Le/a/v/a/b0/e;", "first", "second", "third", "f", "(Le/a/v/a/b0/e;Le/a/v/a/b0/e;Le/a/v/a/b0/e;)V", C22021b.f61237c, "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, AbstractC2405c.f7629a, "(Lcom/truecaller/data/entity/Contact;)V", "g", "d", "a", "e", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/v/a/b0/a;", "Le/a/v/a/b0/a;", "getPresenter", "()Le/a/v/a/b0/a;", "setPresenter", "(Le/a/v/a/b0/a;)V", "presenter", "Le/a/v/k/g;", "Le/a/v/k/g;", "getBinding", "()Le/a/v/k/g;", "binding", "Le/a/v/o/a;", "Le/a/v/o/a;", "getCallingRouter", "()Le/a/v/o/a;", "setCallingRouter", "(Le/a/v/o/a;)V", "callingRouter", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.b0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/d.class */
public final class C20684d extends LinearLayout implements AbstractC20678b, AbstractC20848a {
    @Inject

    /* renamed from: a */
    public AbstractC20677a f58253a;
    @Inject

    /* renamed from: b */
    public AbstractC20918a f58254b;

    /* renamed from: c */
    public final C20900g f58255c;

    /* renamed from: e.a.v.a.b0.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/d$a.class */
    public static final class View$OnClickListenerC20685a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Contact f58257b;

        public View$OnClickListenerC20685a(Contact contact) {
            C20684d.this = r4;
            this.f58257b = contact;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC20677a presenter = C20684d.this.getPresenter();
            Contact contact = this.f58257b;
            C20679c c20679c = (C20679c) presenter;
            Objects.requireNonNull(c20679c);
            l.e(contact, AnalyticsConstants.CONTACT);
            C20879a c20879a = c20679c.f58244p;
            String str = c20879a.f58670a;
            ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.CALL_HISTORY;
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(contactDetailsAction, "action");
            String value = contactDetailsAction.getValue();
            l.e(value, "action");
            n.B0(new ViewActionEvent(value, null, str), c20879a.f58671b);
            AbstractC20678b abstractC20678b = (AbstractC20678b) c20679c.f57683a;
            if (abstractC20678b != null) {
                abstractC20678b.mo10850d(contact);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20684d(android.content.Context r14, android.util.AttributeSet r15, int r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1279b0.C20684d.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20677a abstractC20677a = this.f58253a;
        if (abstractC20677a == null) {
            l.l("presenter");
            throw null;
        }
        C20679c c20679c = (C20679c) abstractC20677a;
        Objects.requireNonNull(c20679c);
        l.e(c20847s, "detailsViewModel");
        c20679c.f58232d = c20847s;
        c20679c.m10860Jj();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: a */
    public void mo10853a(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC20918a abstractC20918a = this.f58254b;
        if (abstractC20918a != null) {
            abstractC20918a.mo10524b(C17891a1.C17902k.m15628a1(this), contact);
        } else {
            l.l("callingRouter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: b */
    public void mo10852b() {
        C19286f.m13689O(this);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: c */
    public void mo10851c(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        MaterialButton materialButton = this.f58255c.f58772a;
        l.d(materialButton, "binding.btnViewAll");
        C19286f.m13684T(materialButton);
        View view = this.f58255c.f58778g;
        l.d(view, "binding.thirdDivider");
        C19286f.m13684T(view);
        this.f58255c.f58772a.setOnClickListener(new View$OnClickListenerC20685a(contact));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: d */
    public void mo10850d(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC20918a abstractC20918a = this.f58254b;
        if (abstractC20918a != null) {
            abstractC20918a.mo10525a(C17891a1.C17902k.m15628a1(this), contact);
        } else {
            l.l("callingRouter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: e */
    public void mo10849e(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC20918a abstractC20918a = this.f58254b;
        if (abstractC20918a == null) {
            l.l("callingRouter");
            throw null;
        }
        h m15628a1 = C17891a1.C17902k.m15628a1(this);
        Objects.requireNonNull(m15628a1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        abstractC20918a.mo10523c(m15628a1, contact);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: f */
    public void mo10848f(C20686e c20686e, C20686e c20686e2, C20686e c20686e3) {
        l.e(c20686e, "first");
        C19286f.m13684T(this);
        this.f58255c.f58773b.set(c20686e);
        if (c20686e2 != null) {
            View view = this.f58255c.f58774c;
            l.d(view, "binding.firstDivider");
            C19286f.m13684T(view);
            SingleCallHistoryExpandedView singleCallHistoryExpandedView = this.f58255c.f58775d;
            C19286f.m13684T(singleCallHistoryExpandedView);
            singleCallHistoryExpandedView.set(c20686e2);
        } else {
            View view2 = this.f58255c.f58774c;
            l.d(view2, "binding.firstDivider");
            C19286f.m13689O(view2);
            SingleCallHistoryExpandedView singleCallHistoryExpandedView2 = this.f58255c.f58775d;
            l.d(singleCallHistoryExpandedView2, "binding.secondCall");
            C19286f.m13689O(singleCallHistoryExpandedView2);
        }
        if (c20686e3 != null) {
            View view3 = this.f58255c.f58776e;
            l.d(view3, "binding.secondDivider");
            C19286f.m13684T(view3);
            SingleCallHistoryExpandedView singleCallHistoryExpandedView3 = this.f58255c.f58777f;
            C19286f.m13684T(singleCallHistoryExpandedView3);
            singleCallHistoryExpandedView3.set(c20686e3);
            return;
        }
        View view4 = this.f58255c.f58776e;
        l.d(view4, "binding.secondDivider");
        C19286f.m13689O(view4);
        SingleCallHistoryExpandedView singleCallHistoryExpandedView4 = this.f58255c.f58777f;
        l.d(singleCallHistoryExpandedView4, "binding.thirdCall");
        C19286f.m13689O(singleCallHistoryExpandedView4);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1279b0.AbstractC20678b
    /* renamed from: g */
    public void mo10847g() {
        View view = this.f58255c.f58778g;
        l.d(view, "binding.thirdDivider");
        C19286f.m13689O(view);
        MaterialButton materialButton = this.f58255c.f58772a;
        l.d(materialButton, "binding.btnViewAll");
        C19286f.m13689O(materialButton);
    }

    public final C20900g getBinding() {
        return this.f58255c;
    }

    public final AbstractC20918a getCallingRouter() {
        AbstractC20918a abstractC20918a = this.f58254b;
        if (abstractC20918a != null) {
            return abstractC20918a;
        }
        l.l("callingRouter");
        throw null;
    }

    public final AbstractC20677a getPresenter() {
        AbstractC20677a abstractC20677a = this.f58253a;
        if (abstractC20677a != null) {
            return abstractC20677a;
        }
        l.l("presenter");
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20677a abstractC20677a = this.f58253a;
        if (abstractC20677a != null) {
            ((C20679c) abstractC20677a).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC20677a abstractC20677a = this.f58253a;
        if (abstractC20677a != null) {
            ((C20679c) abstractC20677a).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final void setCallingRouter(AbstractC20918a abstractC20918a) {
        l.e(abstractC20918a, "<set-?>");
        this.f58254b = abstractC20918a;
    }

    public final void setPresenter(AbstractC20677a abstractC20677a) {
        l.e(abstractC20677a, "<set-?>");
        this.f58253a = abstractC20677a;
    }
}
