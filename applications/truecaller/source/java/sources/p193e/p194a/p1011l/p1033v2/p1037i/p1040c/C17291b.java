package p193e.p194a.p1011l.p1033v2.p1037i.p1040c;

import android.view.View;
import com.truecaller.premium.p173ui.subscription.offerpicker.SubscriptionOfferGroup;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.l.v2.i.c.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/c/b.class */
public final class C17291b extends m implements l<View, s> {

    /* renamed from: b */
    public final /* synthetic */ SubscriptionOfferGroup f48522b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17291b(SubscriptionOfferGroup subscriptionOfferGroup) {
        super(1);
        this.f48522b = subscriptionOfferGroup;
    }

    /* renamed from: d */
    public Object m16276d(Object obj) {
        SubscriptionOfferGroup subscriptionOfferGroup;
        l<? super C17290a, s> lVar;
        s1.z.c.l.e((View) obj, "it");
        if (this.f48522b.getCurrentSelected() != -1 && (lVar = (subscriptionOfferGroup = this.f48522b).f14343b) != null) {
            s sVar = (s) lVar.d(subscriptionOfferGroup.f14342a.get(subscriptionOfferGroup.getCurrentSelected()));
        }
        return s.a;
    }
}
