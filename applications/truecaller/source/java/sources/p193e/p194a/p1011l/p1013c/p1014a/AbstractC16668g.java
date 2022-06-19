package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.p173ui.subscription.cardlabel.CardNewFeatureLabelView;
import com.truecaller.premium.premiumusertab.list.LabelView;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.c.a.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/g.class */
public abstract class AbstractC16668g extends RecyclerView.AbstractC0313c0 implements AbstractC16782z1 {

    /* renamed from: a */
    public final g f46800a;

    /* renamed from: b */
    public final CardNewFeatureLabelView f46801b;

    /* renamed from: c */
    public final AbstractC18905m f46802c;

    /* renamed from: e.a.l.c.a.g$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/g$a.class */
    public static final class C16669a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16669a() {
            super(0);
            AbstractC16668g.this = r4;
        }

        public Object invoke() {
            C19286f.m13689O(AbstractC16668g.this.f46801b);
            AbstractC16668g abstractC16668g = AbstractC16668g.this;
            AbstractC18905m abstractC18905m = abstractC16668g.f46802c;
            if (abstractC18905m != null) {
                abstractC18905m.mo14327t(new C18900h("ItemEvent.NEW_FEATURE_LABEL_DISMISSED", abstractC16668g, abstractC16668g.f46801b, (Object) null, 8));
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC16668g(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f46802c = abstractC18905m;
        this.f46800a = C19286f.m13660s(view, 2131364536);
        CardNewFeatureLabelView cardNewFeatureLabelView = (CardNewFeatureLabelView) view.findViewById(C2752R.C2754id.newFeatureLabelView);
        this.f46801b = cardNewFeatureLabelView;
        if (cardNewFeatureLabelView != null) {
            cardNewFeatureLabelView.setOnDismissClick(new C16669a());
        }
    }

    /* renamed from: N4 */
    public final LabelView m17139N4() {
        return (LabelView) this.f46800a.getValue();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16782z1
    /* renamed from: a0 */
    public void mo17053a0(C16723q c16723q, float f) {
        LabelView m17139N4;
        LabelView m17139N42 = m17139N4();
        if (m17139N42 != null) {
            C19286f.m13683U(m17139N42, c16723q != null);
        }
        if (c16723q != null && (m17139N4 = m17139N4()) != null) {
            m17139N4.setLabel(c16723q);
        }
        View view = this.itemView;
        l.d(view, "itemView");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        if (marginLayoutParams != null) {
            View view2 = this.itemView;
            l.d(view2, "itemView");
            marginLayoutParams.topMargin = C8605o.m28238b(view2.getContext(), f);
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16782z1
    /* renamed from: l3 */
    public void mo17052l3(C17288a c17288a) {
        CardNewFeatureLabelView cardNewFeatureLabelView;
        boolean z = c17288a != null ? c17288a.f48505b : false;
        CardNewFeatureLabelView cardNewFeatureLabelView2 = this.f46801b;
        if (cardNewFeatureLabelView2 != null) {
            C19286f.m13683U(cardNewFeatureLabelView2, z);
        }
        if (c17288a == null || (cardNewFeatureLabelView = this.f46801b) == null) {
            return;
        }
        cardNewFeatureLabelView.setTitle(c17288a.f48506c);
        cardNewFeatureLabelView.setDescription(c17288a.f48507d);
    }

    /* renamed from: t2 */
    public void mo17051t2() {
    }
}
