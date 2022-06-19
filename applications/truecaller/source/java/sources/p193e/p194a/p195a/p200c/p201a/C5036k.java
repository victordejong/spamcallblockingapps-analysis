package p193e.p194a.p195a.p200c.p201a;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.truecaller.C2752R;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.messaging.data.types.Message;
import javax.inject.Inject;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.AbstractC10627r;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import s1.g;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.c.a.k */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/k.class */
public final class C5036k extends C5701c {

    /* renamed from: A */
    public C10635s f17241A;

    /* renamed from: B */
    public final View f17242B;
    @Inject

    /* renamed from: b */
    public AbstractC9691j f17243b;
    @Inject

    /* renamed from: c */
    public AbstractC10024k f17244c;

    /* renamed from: d */
    public final g f17245d;

    /* renamed from: e */
    public final g f17246e;

    /* renamed from: f */
    public final g f17247f;

    /* renamed from: g */
    public final g f17248g;

    /* renamed from: h */
    public final g f17249h;

    /* renamed from: i */
    public final g f17250i;

    /* renamed from: j */
    public final g f17251j;

    /* renamed from: k */
    public final g f17252k;

    /* renamed from: l */
    public final g f17253l;

    /* renamed from: m */
    public final g f17254m;

    /* renamed from: n */
    public final g f17255n;

    /* renamed from: o */
    public final g f17256o;

    /* renamed from: p */
    public final g f17257p;

    /* renamed from: q */
    public final g f17258q;

    /* renamed from: r */
    public final g f17259r;

    /* renamed from: s */
    public final g f17260s;

    /* renamed from: t */
    public final g f17261t;

    /* renamed from: u */
    public final g f17262u;

    /* renamed from: v */
    public final g f17263v;

    /* renamed from: w */
    public final g f17264w;

    /* renamed from: x */
    public final g f17265x;

    /* renamed from: y */
    public Message f17266y;

    /* renamed from: z */
    public AbstractC5037a f17267z;

    /* renamed from: e.a.a.c.a.k$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/k$a.class */
    public interface AbstractC5037a {
        /* renamed from: A9 */
        boolean mo32747A9();

        /* renamed from: Ac */
        void mo32746Ac(C10529b c10529b);

        /* renamed from: Q9 */
        void mo32717Q9(AbstractC10567a abstractC10567a, Message message, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z);

        /* renamed from: Z3 */
        void mo32707Z3();

        /* renamed from: fj */
        void mo32701fj(Message message, CardFeedBackType cardFeedBackType, boolean z);

        /* renamed from: jc */
        void mo32694jc(k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z);

        /* renamed from: w7 */
        void mo32677w7(Message message, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z);

        /* renamed from: w8 */
        void mo32676w8(String str, Message message);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5036k(View view) {
        super(view);
        l.e(view, "itemView");
        this.f17242B = view;
        AbstractC16444k2.f46188a.m17389a().mo11370w(this);
        this.f17245d = C19286f.m13660s(view, C2752R.C2754id.actionBtn);
        this.f17246e = C19286f.m13660s(view, C2752R.C2754id.defaultUiContainer);
        this.f17247f = C19286f.m13660s(view, 2131363262);
        this.f17248g = C19286f.m13660s(view, C2752R.C2754id.deliveryUiContainer);
        this.f17249h = C19286f.m13660s(view, C2752R.C2754id.amount);
        this.f17250i = C19286f.m13660s(view, 2131362945);
        this.f17251j = C19286f.m13660s(view, 2131362947);
        this.f17252k = C19286f.m13660s(view, C2752R.C2754id.infoView);
        this.f17253l = C19286f.m13660s(view, C2752R.C2754id.moreInfoView);
        this.f17254m = C19286f.m13660s(view, 2131365240);
        this.f17255n = C19286f.m13660s(view, C2752R.C2754id.semicardArrow);
        this.f17256o = C19286f.m13660s(view, 2131364203);
        this.f17257p = C19286f.m13660s(view, 2131364372);
        this.f17258q = C19286f.m13660s(view, C2752R.C2754id.infoTypeLHS);
        this.f17259r = C19286f.m13660s(view, C2752R.C2754id.infoTypeRHS);
        this.f17260s = C19286f.m13660s(view, C2752R.C2754id.infoValueLHS);
        this.f17261t = C19286f.m13660s(view, C2752R.C2754id.infoValueRHS);
        this.f17262u = C19286f.m13660s(view, C2752R.C2754id.moreInfoTypeLHS);
        this.f17263v = C19286f.m13660s(view, C2752R.C2754id.moreInfoTypeRHS);
        this.f17264w = C19286f.m13660s(view, C2752R.C2754id.moreInfoValueLHS);
        this.f17265x = C19286f.m13660s(view, C2752R.C2754id.moreInfoValueRHS);
    }

    /* renamed from: a */
    public final Chip m33959a() {
        return (Chip) this.f17245d.getValue();
    }

    /* renamed from: b */
    public final TextView m33958b() {
        return (TextView) this.f17249h.getValue();
    }

    /* renamed from: c */
    public final TextView m33957c() {
        return (TextView) this.f17250i.getValue();
    }

    /* renamed from: d */
    public final View m33956d() {
        return (View) this.f17246e.getValue();
    }

    /* renamed from: e */
    public final View m33955e() {
        return (View) this.f17248g.getValue();
    }

    /* renamed from: f */
    public final View m33954f() {
        return (View) this.f17252k.getValue();
    }

    /* renamed from: g */
    public final View m33953g() {
        return (View) this.f17253l.getValue();
    }

    /* renamed from: h */
    public final void m33952h(String str) {
        Chip m33959a = m33959a();
        l.d(m33959a, "actionBtn");
        m33959a.setVisibility(0);
        Chip m33959a2 = m33959a();
        l.d(m33959a2, "actionBtn");
        m33959a2.setText(str);
    }

    /* renamed from: i */
    public final void m33951i(boolean z) {
        View view = (View) this.f17255n.getValue();
        l.d(view, "semicardArrow");
        C19286f.m13683U(view, z);
    }
}
