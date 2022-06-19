package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.z2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/z2.class */
public final class C6986z2 extends RecyclerView.AbstractC0313c0 implements AbstractC6851f2 {

    /* renamed from: a */
    public final View f22576a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6986z2(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22576a = view;
        C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_ENABLE_WHATSAPP_NOTIFICATION_ACCESS_CLICKED", "ItemEvent.ACTION_DISMISS_WHATSAPP_NOTIFICATION_ACCESS_PROMO_CLICKED");
    }
}
