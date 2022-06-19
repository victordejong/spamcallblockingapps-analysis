package p193e.p194a.p1011l;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1012a.C16594o;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1011l.p1020g.C16913t;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.C17086f;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.v1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/v1.class */
public final class C17251v1 {

    /* renamed from: a */
    public final Context f48393a;

    /* renamed from: b */
    public final AbstractC17168r0 f48394b;

    /* renamed from: c */
    public final C16604y f48395c;

    /* renamed from: d */
    public final C17086f f48396d;

    /* renamed from: e */
    public final C16594o f48397e;

    /* renamed from: f */
    public final C16913t f48398f;

    /* renamed from: g */
    public final C17192t1 f48399g;

    /* renamed from: h */
    public final f f48400h;

    @Inject
    public C17251v1(Context context, AbstractC17168r0 abstractC17168r0, C16604y c16604y, C17086f c17086f, C16594o c16594o, C16913t c16913t, C17192t1 c17192t1, @Named("IO") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC17168r0, "premiumRepository");
        l.e(c16604y, "premiumPurchaseSupportedCheck");
        l.e(c17086f, "freePremiumPromo");
        l.e(c16594o, "paidPremiumCheck");
        l.e(c16913t, "goldGiftPromoUtils");
        l.e(c17192t1, "webBillingPurchaseStateManager");
        l.e(fVar, "ioContext");
        this.f48393a = context;
        this.f48394b = abstractC17168r0;
        this.f48395c = c16604y;
        this.f48396d = c17086f;
        this.f48397e = c16594o;
        this.f48398f = c16913t;
        this.f48399g = c17192t1;
        this.f48400h = fVar;
    }
}
