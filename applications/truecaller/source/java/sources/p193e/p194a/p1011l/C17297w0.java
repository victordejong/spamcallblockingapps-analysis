package p193e.p194a.p1011l;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1011l.p1025p2.C17097h0;
import s1.z.c.l;
/* renamed from: e.a.l.w0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/w0.class */
public final class C17297w0 extends RecyclerView.AbstractC0313c0 implements AbstractC17250v0 {

    /* renamed from: a */
    public final TextView f48530a;

    /* renamed from: b */
    public final TextView f48531b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17297w0(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = this.itemView.findViewById(2131366469);
        l.d(findViewById, "itemView.findViewById(R.id.title)");
        this.f48530a = (TextView) findViewById;
        View findViewById2 = this.itemView.findViewById(2131366099);
        l.d(findViewById2, "itemView.findViewById(R.id.subTitle)");
        this.f48531b = (TextView) findViewById2;
    }

    @Override // p193e.p194a.p1011l.AbstractC17250v0
    /* renamed from: f4 */
    public void mo16272f4(C17097h0 c17097h0) {
        l.e(c17097h0, "title");
        this.f48530a.setText(c17097h0.f47995a);
        this.f48531b.setText(c17097h0.f47996b);
    }
}
