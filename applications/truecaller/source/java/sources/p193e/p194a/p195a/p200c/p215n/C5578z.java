package p193e.p194a.p195a.p200c.p215n;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.z */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/z.class */
public final class C5578z extends RecyclerView.AbstractC0313c0 implements AbstractC5546c0 {

    /* renamed from: a */
    public final TextView f18822a;

    /* renamed from: b */
    public final TextView f18823b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5578z(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(2131366469);
        l.d(findViewById, "view.findViewById(R.id.title)");
        this.f18822a = (TextView) findViewById;
        View findViewById2 = view.findViewById(2131366110);
        l.d(findViewById2, "view.findViewById(R.id.subtitle)");
        this.f18823b = (TextView) findViewById2;
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5546c0
    /* renamed from: K2 */
    public void mo32945K2(String str) {
        l.e(str, "info");
        this.f18823b.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5546c0
    /* renamed from: l1 */
    public void mo32944l1(String str) {
        l.e(str, AnalyticsConstants.NAME);
        this.f18822a.setText(str);
    }
}
