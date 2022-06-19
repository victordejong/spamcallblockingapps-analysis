package p193e.p194a.p1011l.p1013c.p1014a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.ShineView;
import com.truecaller.premium.p173ui.subscription.buttons.CardPurchaseButtonView;
import com.truecaller.premium.premiumusertab.list.LabelView;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import e.m.d.y.n;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1033v2.p1034f.AbstractC17259b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17279a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p373a.C8311g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.l.c.a.l2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/l2.class */
public final class C16702l2 extends AbstractC16680i implements AbstractC16719p1 {

    /* renamed from: g */
    public final CardPurchaseButtonView f46843g;

    /* renamed from: h */
    public final ImageView f46844h;

    /* renamed from: i */
    public final TextView f46845i;

    /* renamed from: j */
    public final TextView f46846j;

    /* renamed from: k */
    public final TextView f46847k;

    /* renamed from: l */
    public final ShineView f46848l;

    /* renamed from: m */
    public final TextView f46849m;

    /* renamed from: e.a.l.c.a.l2$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/l2$a.class */
    public static final class C16703a extends m implements l<AbstractC17259b, s> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC18905m f46851c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16703a(AbstractC18905m abstractC18905m) {
            super(1);
            C16702l2.this = r4;
            this.f46851c = abstractC18905m;
        }

        /* renamed from: d */
        public Object m17090d(Object obj) {
            AbstractC17259b abstractC17259b = (AbstractC17259b) obj;
            s1.z.c.l.e(abstractC17259b, "state");
            AbstractC18905m abstractC18905m = this.f46851c;
            int adapterPosition = C16702l2.this.getAdapterPosition();
            long adapterPosition2 = C16702l2.this.getAdapterPosition();
            View view = C16702l2.this.itemView;
            s1.z.c.l.d(view, "this.itemView");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.COUNT_DOWN_TIMER_STATE_CHANGED", adapterPosition, adapterPosition2, view, abstractC17259b));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16702l2(View view, AbstractC18905m abstractC18905m, AbstractC26992b0 abstractC26992b0) {
        super(view, abstractC18905m);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "itemEventReceiver");
        s1.z.c.l.e(abstractC26992b0, "lifecycleOwner");
        this.f46843g = (CardPurchaseButtonView) view.findViewById(C2752R.C2754id.btnBuy);
        this.f46844h = (ImageView) view.findViewById(2131362259);
        this.f46845i = (TextView) view.findViewById(2131366469);
        this.f46846j = (TextView) view.findViewById(C2752R.C2754id.offer);
        this.f46847k = (TextView) view.findViewById(2131366099);
        ShineView shineView = (ShineView) view.findViewById(C2752R.C2754id.goldShining);
        this.f46848l = shineView;
        this.f46849m = (TextView) view.findViewById(2131363002);
        shineView.setLifecycleOwner(abstractC26992b0);
        LabelView m17139N4 = m17139N4();
        if (m17139N4 != null) {
            m17139N4.setOnCountDownTimerStateListener(new C16703a(abstractC18905m));
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: A4 */
    public void mo17084A4(C16770x2 c16770x2) {
        TextView textView = this.f46846j;
        s1.z.c.l.d(textView, "offerView");
        m17124P4(textView, c16770x2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: B2 */
    public void mo17083B2(C16629a0 c16629a0) {
        TextView textView = this.f46849m;
        s1.z.c.l.d(textView, "ctaView");
        m17125O4(textView, c16629a0);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: F2 */
    public void mo17082F2(C16770x2 c16770x2) {
        LabelView m17139N4 = m17139N4();
        if (m17139N4 != null) {
            m17139N4.setOfferEndLabelText(c16770x2);
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: I */
    public void mo17081I(C16770x2 c16770x2) {
        TextView textView = this.f46847k;
        s1.z.c.l.d(textView, "subtitleView");
        m17124P4(textView, c16770x2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: J4 */
    public void mo17080J4(C16993f c16993f, C17279a c17279a) {
        s1.z.c.l.e(c16993f, "purchaseItem");
        s1.z.c.l.e(c17279a, "purchaseButton");
        this.f46843g.setPremiumCardSubscriptionButton(c17279a);
        CardPurchaseButtonView cardPurchaseButtonView = this.f46843g;
        s1.z.c.l.d(cardPurchaseButtonView, "buyView");
        n.d1(cardPurchaseButtonView, this.f46825f, this, (String) null, c16993f, 4);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: L */
    public void mo17079L() {
        ShineView shineView = this.f46848l;
        s1.z.c.l.d(shineView, "shiningView");
        C19286f.m13684T(shineView);
        this.f46844h.setImageDrawable((C8311g) this.f46824e.getValue());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: U */
    public void mo17078U(C16770x2 c16770x2) {
        TextView textView = this.f46845i;
        s1.z.c.l.d(textView, "titleView");
        m17124P4(textView, c16770x2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: i0 */
    public void mo17077i0(C16767x c16767x, Long l) {
        LabelView m17139N4 = m17139N4();
        if (m17139N4 != null) {
            m17139N4.m34816g1(c16767x, l);
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: o3 */
    public void mo17076o3(String str) {
        s1.z.c.l.e(str, "url");
        ShineView shineView = this.f46848l;
        s1.z.c.l.d(shineView, "shiningView");
        C19286f.m13689O(shineView);
        C22234h mo8414k = C17891a1.C17902k.m15661L1(this.f46844h).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = str;
        c21852d.f61771N = true;
        C21852d c21852d2 = (C21852d) mo8414k;
        i iVar = new i();
        ImageView imageView = this.f46844h;
        s1.z.c.l.d(imageView, "backgroundView");
        Context context = imageView.getContext();
        s1.z.c.l.d(context, "backgroundView.context");
        C21852d m8966r0 = c21852d2.m8966r0(iVar, new y(context.getResources().getDimensionPixelSize(C2752R.dimen.tcx_premium_user_tab_card_corner_radius)));
        C21852d<Drawable> m8965A = C17891a1.C17902k.m15661L1(this.f46844h).m8965A(2131232907);
        i iVar2 = new i();
        ImageView imageView2 = this.f46844h;
        s1.z.c.l.d(imageView2, "backgroundView");
        Context context2 = imageView2.getContext();
        s1.z.c.l.d(context2, "backgroundView.context");
        m8966r0.f61769L = m8965A.m8966r0(iVar2, new y(context2.getResources().getDimensionPixelSize(C2752R.dimen.tcx_premium_user_tab_card_corner_radius)));
        m8966r0.m8427O(this.f46844h);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16719p1
    /* renamed from: r3 */
    public void mo17075r3(int i) {
        ShineView shineView = this.f46848l;
        s1.z.c.l.d(shineView, "shiningView");
        C19286f.m13689O(shineView);
        C21852d<Drawable> m8965A = C17891a1.C17902k.m15661L1(this.f46844h).m8965A(Integer.valueOf(i));
        i iVar = new i();
        ImageView imageView = this.f46844h;
        s1.z.c.l.d(imageView, "backgroundView");
        Context context = imageView.getContext();
        s1.z.c.l.d(context, "backgroundView.context");
        m8965A.m8966r0(iVar, new y(context.getResources().getDimensionPixelSize(C2752R.dimen.tcx_premium_user_tab_card_corner_radius))).m8427O(this.f46844h);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16668g, p193e.p194a.p1011l.p1013c.p1014a.AbstractC16782z1
    /* renamed from: t2 */
    public void mo17051t2() {
        LabelView m17139N4 = m17139N4();
        if (m17139N4 != null) {
            m17139N4.m34817f1();
        }
    }
}
