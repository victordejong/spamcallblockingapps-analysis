package p193e.p194a.p1011l.p1033v2.p1036h;

import android.view.View;
import com.truecaller.premium.p173ui.embedded.EmbeddedPurchaseView;
import com.truecaller.premium.p173ui.subscription.buttons.SubscriptionButtonView;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.l.v2.h.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/h/h.class */
public final class C17277h extends m implements l<View, s> {

    /* renamed from: b */
    public final /* synthetic */ SubscriptionButtonView f48471b;

    /* renamed from: c */
    public final /* synthetic */ EmbeddedPurchaseView f48472c;

    /* renamed from: d */
    public final /* synthetic */ List f48473d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17277h(SubscriptionButtonView subscriptionButtonView, int i, EmbeddedPurchaseView embeddedPurchaseView, List list) {
        super(1);
        this.f48471b = subscriptionButtonView;
        this.f48472c = embeddedPurchaseView;
        this.f48473d = list;
    }

    /* renamed from: d */
    public Object m16293d(Object obj) {
        s1.z.c.l.e((View) obj, "it");
        AbstractC17270c presenter = this.f48472c.getPresenter();
        Object tag = this.f48471b.getTag();
        Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.premium.ui.subscription.buttons.SubscriptionButton");
        presenter.mo16296k4((C17280b) tag);
        return s.a;
    }
}
