package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.y0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/y0.class */
public final class C16772y0 extends AbstractC16668g implements AbstractC16765w1 {

    /* renamed from: d */
    public final TextView f47007d = (TextView) this.itemView.findViewById(C2752R.C2754id.callsBlockedTitle);

    /* renamed from: e */
    public final TextView f47008e = (TextView) this.itemView.findViewById(C2752R.C2754id.timeSavedTitle);

    /* renamed from: f */
    public final TextView f47009f = (TextView) this.itemView.findViewById(C2752R.C2754id.telemarketerBlockedTitle);

    /* renamed from: g */
    public final TextView f47010g = (TextView) this.itemView.findViewById(C2752R.C2754id.neighbourSpoofingTitle);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16772y0(View view) {
        super(view, null);
        l.e(view, ViewAction.VIEW);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16765w1
    /* renamed from: p2 */
    public void mo17055p2(C16756u0 c16756u0) {
        l.e(c16756u0, "premiumSpamStats");
        TextView textView = this.f47007d;
        l.d(textView, "callsBlockedTitle");
        textView.setText(c16756u0.m17064b());
        TextView textView2 = this.f47008e;
        l.d(textView2, "timeSavedTitle");
        textView2.setText(c16756u0.m17062d());
        TextView textView3 = this.f47009f;
        l.d(textView3, "telemarketerBlockedTitle");
        textView3.setText(c16756u0.m17063c());
        TextView textView4 = this.f47010g;
        l.d(textView4, "neighbourSpoofingTitle");
        textView4.setText(c16756u0.m17065a());
    }
}
