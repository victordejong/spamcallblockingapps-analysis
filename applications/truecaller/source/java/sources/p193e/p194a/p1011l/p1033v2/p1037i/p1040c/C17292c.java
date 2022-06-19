package p193e.p194a.p1011l.p1033v2.p1037i.p1040c;

import com.truecaller.premium.p173ui.subscription.offerpicker.SubscriptionOfferButton;
import com.truecaller.premium.p173ui.subscription.offerpicker.SubscriptionOfferGroup;
import java.util.List;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.l.v2.i.c.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/c/c.class */
public final class C17292c extends m implements a<List<? extends SubscriptionOfferButton>> {

    /* renamed from: b */
    public final /* synthetic */ SubscriptionOfferGroup f48523b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17292c(SubscriptionOfferGroup subscriptionOfferGroup) {
        super(0);
        this.f48523b = subscriptionOfferGroup;
    }

    public Object invoke() {
        SubscriptionOfferButton first;
        SubscriptionOfferButton second;
        SubscriptionOfferButton third;
        first = this.f48523b.getFirst();
        second = this.f48523b.getSecond();
        third = this.f48523b.getThird();
        return i.T(new SubscriptionOfferButton[]{first, second, third});
    }
}
