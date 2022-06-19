package p193e.p194a.p1011l;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.GoldCallerIdPreviewView;
import e.m.d.y.n;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p194a.p1011l.p1025p2.C17090g0;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.l.z0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/z0.class */
public final class C17306z0 extends RecyclerView.AbstractC0313c0 implements AbstractC17303y0 {

    /* renamed from: a */
    public final TextView f48538a;

    /* renamed from: b */
    public final TextView f48539b;

    /* renamed from: c */
    public final ImageView f48540c;

    /* renamed from: d */
    public final GoldCallerIdPreviewView f48541d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17306z0(View view, AbstractC18905m abstractC18905m, AbstractC26992b0 abstractC26992b0) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        l.e(abstractC26992b0, "lifecycleOwner");
        View findViewById = this.itemView.findViewById(2131366469);
        l.d(findViewById, "itemView.findViewById(R.id.title)");
        this.f48538a = (TextView) findViewById;
        View findViewById2 = this.itemView.findViewById(2131363279);
        l.d(findViewById2, "itemView.findViewById(R.id.description)");
        this.f48539b = (TextView) findViewById2;
        View findViewById3 = this.itemView.findViewById(2131364203);
        l.d(findViewById3, "itemView.findViewById(R.id.icon)");
        this.f48540c = (ImageView) findViewById3;
        View findViewById4 = this.itemView.findViewById(C2752R.C2754id.callerIdPreview);
        l.d(findViewById4, "itemView.findViewById(R.id.callerIdPreview)");
        GoldCallerIdPreviewView goldCallerIdPreviewView = (GoldCallerIdPreviewView) findViewById4;
        this.f48541d = goldCallerIdPreviewView;
        View view2 = this.itemView;
        l.d(view2, "itemView");
        n.d1(view2, abstractC18905m, this, (String) null, (Object) null, 12);
        goldCallerIdPreviewView.getShineView().setLifecycleOwner(abstractC26992b0);
    }

    @Override // p193e.p194a.p1011l.AbstractC17303y0
    /* renamed from: W2 */
    public void mo16264W2(C17090g0 c17090g0) {
        l.e(c17090g0, "premiumFeature");
        this.f48540c.setImageResource(c17090g0.f47967c);
        this.f48538a.setText(c17090g0.f47966b);
        this.f48539b.setText(c17090g0.f47968d);
        C19286f.m13683U(this.f48541d, c17090g0.f47971g != null);
        this.f48541d.m34826f1(c17090g0.f47971g);
    }
}
