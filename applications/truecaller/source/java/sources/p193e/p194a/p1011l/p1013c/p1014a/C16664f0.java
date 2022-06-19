package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.ShineView;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.C8311g;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.f0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/f0.class */
public final class C16664f0 extends AbstractC16680i implements AbstractC16655d1 {

    /* renamed from: g */
    public final ShineView f46789g;

    /* renamed from: h */
    public final ImageView f46790h;

    /* renamed from: i */
    public final ImageView f46791i;

    /* renamed from: j */
    public final TextView f46792j;

    /* renamed from: k */
    public final TextView f46793k;

    /* renamed from: l */
    public final TextView f46794l;

    /* renamed from: m */
    public final TextView f46795m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16664f0(View view, AbstractC18905m abstractC18905m, AbstractC26992b0 abstractC26992b0) {
        super(view, abstractC18905m);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "itemEventReceiver");
        l.e(abstractC26992b0, "lifecycleOwner");
        ShineView shineView = (ShineView) view.findViewById(C2752R.C2754id.goldShining);
        this.f46789g = shineView;
        this.f46790h = (ImageView) view.findViewById(2131362259);
        this.f46791i = (ImageView) view.findViewById(2131364203);
        this.f46792j = (TextView) view.findViewById(2131366469);
        this.f46793k = (TextView) view.findViewById(2131366099);
        this.f46794l = (TextView) view.findViewById(2131363003);
        this.f46795m = (TextView) view.findViewById(2131363004);
        shineView.setLifecycleOwner(abstractC26992b0);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: I */
    public void mo17147I(C16770x2 c16770x2) {
        TextView textView = this.f46793k;
        l.d(textView, "subtitleView");
        m17124P4(textView, c16770x2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: L */
    public void mo17146L() {
        ShineView shineView = this.f46789g;
        l.d(shineView, "shiningView");
        C19286f.m13684T(shineView);
        this.f46790h.setImageDrawable((C8311g) this.f46824e.getValue());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: Q3 */
    public void mo17145Q3(int i) {
        this.f46791i.setImageResource(i);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: S2 */
    public void mo17144S2(C16629a0 c16629a0) {
        TextView textView = this.f46795m;
        l.d(textView, "cta2View");
        m17125O4(textView, c16629a0);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: U */
    public void mo17143U(C16770x2 c16770x2) {
        l.e(c16770x2, "title");
        TextView textView = this.f46792j;
        l.d(textView, "titleView");
        m17124P4(textView, c16770x2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: l0 */
    public void mo17142l0(int i) {
        ShineView shineView = this.f46789g;
        l.d(shineView, "shiningView");
        C19286f.m13689O(shineView);
        this.f46790h.setImageResource(i);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16655d1
    /* renamed from: w2 */
    public void mo17141w2(C16629a0 c16629a0) {
        l.e(c16629a0, "cta");
        TextView textView = this.f46794l;
        l.d(textView, "cta1View");
        m17125O4(textView, c16629a0);
    }
}
