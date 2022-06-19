package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.q */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/q.class */
public final class C6937q extends RecyclerView.AbstractC0313c0 implements AbstractC6929o1 {

    /* renamed from: a */
    public final View f22546a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6937q(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22546a = view;
        C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_ALLOW_LOCATION_ACCESS", "ItemEvent.ACTION_DISMISS_LOCATION_ACCESS_PROMO");
    }
}
