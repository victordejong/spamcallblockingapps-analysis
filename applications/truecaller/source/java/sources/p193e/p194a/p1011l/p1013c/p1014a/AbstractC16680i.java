package p193e.p194a.p1011l.p1013c.p1014a;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import e.m.d.y.n;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.C8311g;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.c.a.i */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/i.class */
public abstract class AbstractC16680i extends AbstractC16668g {

    /* renamed from: d */
    public final C19235i0 f46823d;

    /* renamed from: e */
    public final g f46824e;

    /* renamed from: f */
    public final AbstractC18905m f46825f;

    /* renamed from: e.a.l.c.a.i$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/i$a.class */
    public static final class C16681a extends m implements a<C8311g> {

        /* renamed from: c */
        public final /* synthetic */ View f46827c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16681a(View view) {
            super(0);
            AbstractC16680i.this = r4;
            this.f46827c = view;
        }

        public Object invoke() {
            C8311g c8311g = new C8311g(AbstractC16680i.this.f46823d);
            Context context = this.f46827c.getContext();
            l.d(context, "view.context");
            c8311g.setCornerRadius(context.getResources().getDimensionPixelSize(C2752R.dimen.tcx_premium_user_tab_card_corner_radius));
            return c8311g;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC16680i(View view, AbstractC18905m abstractC18905m) {
        super(view, null);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "itemEventReceiver");
        this.f46825f = abstractC18905m;
        Context context = view.getContext();
        l.d(context, "view.context");
        this.f46823d = new C19235i0(context);
        this.f46824e = C25225a.m3978P1(new C16681a(view));
    }

    /* renamed from: O4 */
    public final void m17125O4(TextView textView, C16629a0 c16629a0) {
        l.e(textView, "$this$setCtaSpec");
        C19286f.m13683U(textView, c16629a0 != null);
        if (c16629a0 != null) {
            textView.setText(c16629a0.f46723a);
            n.d1(textView, this.f46825f, this, (String) null, c16629a0.f46726d, 4);
            textView.setTextColor(this.f46823d.mo13758l(c16629a0.f46724b));
            int i = c16629a0.f46725c;
            if (i != 0) {
                textView.setBackgroundResource(i);
            } else {
                textView.setBackground(C19291g.m13600P(textView.getContext(), 2130969811));
            }
        }
    }

    /* renamed from: P4 */
    public final void m17124P4(TextView textView, C16770x2 c16770x2) {
        l.e(textView, "$this$setTextSpec");
        C19286f.m13683U(textView, c16770x2 != null);
        if (c16770x2 != null) {
            textView.setText(c16770x2.f46999a);
            textView.setTextColor(c16770x2.f47000b);
            textView.setAllCaps(c16770x2.f47002d);
            textView.setAlpha(c16770x2.f47003e);
            textView.setTextSize(2, c16770x2.f47001c);
        }
    }
}
