package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.r */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/r.class */
public final class C6942r extends RecyclerView.AbstractC0313c0 implements AbstractC6934p1 {

    /* renamed from: a */
    public final View f22548a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6942r(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22548a = view;
        C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_ENABLE_MISSED_CALL_NOTIFICATION", "ItemEvent.DISMISS_MISSED_CALL_NOTIFICATION_PROMO");
    }
}
