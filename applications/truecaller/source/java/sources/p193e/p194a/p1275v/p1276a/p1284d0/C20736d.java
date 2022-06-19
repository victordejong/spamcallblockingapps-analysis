package p193e.p194a.p1275v.p1276a.p1284d0;

import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.data.entity.Contact;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.tagger.NameSuggestionActivity;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h;
import p193e.p194a.p1275v.p1276a.p1298r0.C20841e;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1304k.C20902i;
import p193e.p194a.p1334w.p1335a.C21167a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010)\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010+¨\u0006-"}, d2 = {"Le/a/v/a/d0/d;", "Landroid/widget/LinearLayout;", "Le/a/v/a/d0/b;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Le/a/v/a/r0/e;", "appearance", "a", "(Le/a/v/a/r0/e;)V", "e", "g", "h", "d", C22021b.f61237c, "i", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, AbstractC2405c.f7629a, "(Lcom/truecaller/data/entity/Contact;)V", "e1", "f", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/u3/g;", "Le/a/u3/g;", "getFeatureRegistry", "()Le/a/u3/g;", "setFeatureRegistry", "(Le/a/u3/g;)V", "featureRegistry", "Le/a/v/a/d0/a;", "Le/a/v/a/d0/a;", "getPresenter", "()Le/a/v/a/d0/a;", "setPresenter", "(Le/a/v/a/d0/a;)V", "presenter", "Le/a/v/k/i;", "Le/a/v/k/i;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.d0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/d0/d.class */
public final class C20736d extends LinearLayout implements AbstractC20734b, AbstractC20848a {

    /* renamed from: a */
    public final C20902i f58343a;
    @Inject

    /* renamed from: b */
    public AbstractC20733a f58344b;
    @Inject

    /* renamed from: c */
    public C20592g f58345c;

    /* renamed from: e.a.v.a.d0.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/d0/d$a.class */
    public static final class View$OnClickListenerC20737a implements View.OnClickListener {
        public View$OnClickListenerC20737a() {
            C20736d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20735c c20735c = (C20735c) C20736d.this.getPresenter();
            Objects.requireNonNull(c20735c.f58341e);
            AbstractC20734b abstractC20734b = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b != null) {
                C20847s c20847s = c20735c.f58338b;
                if (c20847s != null) {
                    abstractC20734b.mo10794f(c20847s.f58578a);
                } else {
                    l.l("detailsViewModel");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.v.a.d0.d$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/d0/d$b.class */
    public static final class View$OnClickListenerC20738b implements View.OnClickListener {
        public View$OnClickListenerC20738b() {
            C20736d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20735c c20735c = (C20735c) C20736d.this.getPresenter();
            C20879a c20879a = c20735c.f58341e;
            n.B0(ViewActionEvent.f9985d.m35924n(c20879a.f58670a), c20879a.f58671b);
            AbstractC20734b abstractC20734b = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b != null) {
                C20847s c20847s = c20735c.f58338b;
                if (c20847s != null) {
                    abstractC20734b.mo10795e1(c20847s.f58578a);
                } else {
                    l.l("detailsViewModel");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.v.a.d0.d$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/d0/d$c.class */
    public static final class View$OnClickListenerC20739c implements View.OnClickListener {
        public View$OnClickListenerC20739c() {
            C20736d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20735c c20735c = (C20735c) C20736d.this.getPresenter();
            C20879a c20879a = c20735c.f58341e;
            String str = c20879a.f58670a;
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e(RemoteMessageConst.Notification.TAG, "action");
            n.B0(new ViewActionEvent(RemoteMessageConst.Notification.TAG, null, str), c20879a.f58671b);
            AbstractC20734b abstractC20734b = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b != null) {
                C20847s c20847s = c20735c.f58338b;
                if (c20847s != null) {
                    abstractC20734b.mo10798c(c20847s.f58578a);
                } else {
                    l.l("detailsViewModel");
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20736d(android.content.Context r16, android.util.AttributeSet r17, int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1284d0.C20736d.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20733a abstractC20733a = this.f58344b;
        if (abstractC20733a == null) {
            l.l("presenter");
            throw null;
        }
        C20735c c20735c = (C20735c) abstractC20733a;
        Objects.requireNonNull(c20735c);
        l.e(c20847s, "detailsViewModel");
        c20735c.f58338b = c20847s;
        Contact contact = c20847s.f58578a;
        C20841e c20841e = c20847s.f58580c.f58554c;
        boolean m10156e = c20735c.f58342f.m10156e(contact);
        boolean z = c20735c.m10801Ij() || c20735c.m10802Hj(contact) || m10156e;
        if (c20841e == null || !z) {
            AbstractC20734b abstractC20734b = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b == null) {
                return;
            }
            abstractC20734b.mo10791i();
            return;
        }
        if (c20735c.m10802Hj(contact)) {
            AbstractC20734b abstractC20734b2 = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b2 != null) {
                abstractC20734b2.mo10796e(c20841e);
            }
        } else {
            AbstractC20734b abstractC20734b3 = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b3 != null) {
                abstractC20734b3.mo10797d();
            }
        }
        if (c20735c.m10801Ij()) {
            AbstractC20734b abstractC20734b4 = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b4 != null) {
                abstractC20734b4.mo10793g(c20841e);
            }
        } else {
            AbstractC20734b abstractC20734b5 = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b5 != null) {
                abstractC20734b5.mo10799b();
            }
        }
        if (m10156e) {
            AbstractC20734b abstractC20734b6 = (AbstractC20734b) c20735c.f57683a;
            if (abstractC20734b6 == null) {
                return;
            }
            abstractC20734b6.mo10800a(c20841e);
            return;
        }
        AbstractC20734b abstractC20734b7 = (AbstractC20734b) c20735c.f57683a;
        if (abstractC20734b7 == null) {
            return;
        }
        abstractC20734b7.mo10792h();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: a */
    public void mo10800a(C20841e c20841e) {
        l.e(c20841e, "appearance");
        C19286f.m13684T(this);
        ConstraintLayout constraintLayout = this.f58343a.f58796g;
        l.d(constraintLayout, "binding.invite");
        C19286f.m13684T(constraintLayout);
        AbstractC20845h abstractC20845h = c20841e.f58562c;
        GoldShineImageView goldShineImageView = this.f58343a.f58797h;
        l.d(goldShineImageView, "binding.inviteIcon");
        abstractC20845h.mo10630a(goldShineImageView);
        AbstractC20845h abstractC20845h2 = c20841e.f58562c;
        GoldShineTextView goldShineTextView = this.f58343a.f58798i;
        l.d(goldShineTextView, "binding.inviteTextView");
        abstractC20845h2.mo10629b(goldShineTextView);
        this.f58343a.f58796g.setOnClickListener(new View$OnClickListenerC20737a());
        ConstraintLayout constraintLayout2 = this.f58343a.f58791b;
        l.d(constraintLayout2, "binding.addTag");
        if (!C19286f.m13663p(constraintLayout2)) {
            ConstraintLayout constraintLayout3 = this.f58343a.f58799j;
            l.d(constraintLayout3, "binding.suggestName");
            if (!C19286f.m13663p(constraintLayout3)) {
                return;
            }
        }
        View view = this.f58343a.f58794e;
        l.d(view, "binding.dividerInviteName");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: b */
    public void mo10799b() {
        ConstraintLayout constraintLayout = this.f58343a.f58791b;
        l.d(constraintLayout, "binding.addTag");
        C19286f.m13689O(constraintLayout);
        View view = this.f58343a.f58795f;
        l.d(view, "binding.dividerNameTag");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: c */
    public void mo10798c(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        h m15628a1 = C17891a1.C17902k.m15628a1(this);
        C20592g c20592g = this.f58345c;
        if (c20592g == null) {
            l.l("featureRegistry");
            throw null;
        }
        C17891a1.C17902k.m15628a1(this).startActivityForResult(C17422k.m16061p(m15628a1, contact, 2, 4, c20592g), 2);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: d */
    public void mo10797d() {
        ConstraintLayout constraintLayout = this.f58343a.f58799j;
        l.d(constraintLayout, "binding.suggestName");
        C19286f.m13689O(constraintLayout);
        View view = this.f58343a.f58795f;
        l.d(view, "binding.dividerNameTag");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: e */
    public void mo10796e(C20841e c20841e) {
        l.e(c20841e, "appearance");
        C19286f.m13684T(this);
        ConstraintLayout constraintLayout = this.f58343a.f58799j;
        l.d(constraintLayout, "binding.suggestName");
        C19286f.m13684T(constraintLayout);
        AbstractC20845h abstractC20845h = c20841e.f58561b;
        GoldShineImageView goldShineImageView = this.f58343a.f58800k;
        l.d(goldShineImageView, "binding.suggestNameIcon");
        abstractC20845h.mo10630a(goldShineImageView);
        AbstractC20845h abstractC20845h2 = c20841e.f58561b;
        GoldShineTextView goldShineTextView = this.f58343a.f58801l;
        l.d(goldShineTextView, "binding.suggestNameTextView");
        abstractC20845h2.mo10629b(goldShineTextView);
        this.f58343a.f58799j.setOnClickListener(new View$OnClickListenerC20738b());
        ConstraintLayout constraintLayout2 = this.f58343a.f58791b;
        l.d(constraintLayout2, "binding.addTag");
        if (C19286f.m13663p(constraintLayout2)) {
            View view = this.f58343a.f58795f;
            l.d(view, "binding.dividerNameTag");
            C19286f.m13684T(view);
        }
        ConstraintLayout constraintLayout3 = this.f58343a.f58796g;
        l.d(constraintLayout3, "binding.invite");
        if (C19286f.m13663p(constraintLayout3)) {
            View view2 = this.f58343a.f58794e;
            l.d(view2, "binding.dividerInviteName");
            C19286f.m13684T(view2);
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: e1 */
    public void mo10795e1(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        C17891a1.C17902k.m15628a1(this).startActivity(NameSuggestionActivity.m34625ra(C17891a1.C17902k.m15628a1(this), contact, "details"));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: f */
    public void mo10794f(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        C21167a.f59336h.m10178a(contact, ReferralAnalytics$Source.DETAILS_VIEW).show(C17891a1.C17902k.m15628a1(this).getSupportFragmentManager(), C21167a.class.getSimpleName());
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: g */
    public void mo10793g(C20841e c20841e) {
        l.e(c20841e, "appearance");
        C19286f.m13684T(this);
        ConstraintLayout constraintLayout = this.f58343a.f58791b;
        l.d(constraintLayout, "binding.addTag");
        C19286f.m13684T(constraintLayout);
        AbstractC20845h abstractC20845h = c20841e.f58560a;
        GoldShineImageView goldShineImageView = this.f58343a.f58792c;
        l.d(goldShineImageView, "binding.addTagIcon");
        abstractC20845h.mo10630a(goldShineImageView);
        AbstractC20845h abstractC20845h2 = c20841e.f58560a;
        GoldShineTextView goldShineTextView = this.f58343a.f58793d;
        l.d(goldShineTextView, "binding.addTagTextView");
        abstractC20845h2.mo10629b(goldShineTextView);
        this.f58343a.f58791b.setOnClickListener(new View$OnClickListenerC20739c());
        ConstraintLayout constraintLayout2 = this.f58343a.f58799j;
        l.d(constraintLayout2, "binding.suggestName");
        if (C19286f.m13663p(constraintLayout2)) {
            View view = this.f58343a.f58795f;
            l.d(view, "binding.dividerNameTag");
            C19286f.m13684T(view);
        }
        ConstraintLayout constraintLayout3 = this.f58343a.f58796g;
        l.d(constraintLayout3, "binding.invite");
        if (C19286f.m13663p(constraintLayout3)) {
            View view2 = this.f58343a.f58794e;
            l.d(view2, "binding.dividerInviteName");
            C19286f.m13684T(view2);
        }
    }

    public final C20592g getFeatureRegistry() {
        C20592g c20592g = this.f58345c;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featureRegistry");
        throw null;
    }

    public final AbstractC20733a getPresenter() {
        AbstractC20733a abstractC20733a = this.f58344b;
        if (abstractC20733a != null) {
            return abstractC20733a;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: h */
    public void mo10792h() {
        ConstraintLayout constraintLayout = this.f58343a.f58796g;
        l.d(constraintLayout, "binding.invite");
        C19286f.m13689O(constraintLayout);
        View view = this.f58343a.f58794e;
        l.d(view, "binding.dividerInviteName");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1284d0.AbstractC20734b
    /* renamed from: i */
    public void mo10791i() {
        C19286f.m13689O(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20733a abstractC20733a = this.f58344b;
        if (abstractC20733a != null) {
            ((AbstractC20576b) abstractC20733a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC20733a abstractC20733a = this.f58344b;
        if (abstractC20733a != null) {
            ((AbstractC20576b) abstractC20733a).f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final void setFeatureRegistry(C20592g c20592g) {
        l.e(c20592g, "<set-?>");
        this.f58345c = c20592g;
    }

    public final void setPresenter(AbstractC20733a abstractC20733a) {
        l.e(abstractC20733a, "<set-?>");
        this.f58344b = abstractC20733a;
    }
}
