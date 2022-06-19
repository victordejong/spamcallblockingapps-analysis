package p193e.p194a.p1011l.p1025p2;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.z.c.l;
/* renamed from: e.a.l.p2.a0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/a0.class */
public final class C17029a0 {

    /* renamed from: a */
    public final Context f47770a;

    /* renamed from: b */
    public final AbstractC8541a f47771b;

    /* renamed from: c */
    public final AbstractC15275e f47772c;

    /* renamed from: d */
    public final AbstractC16613a2 f47773d;

    @Inject
    public C17029a0(Context context, AbstractC8541a abstractC8541a, AbstractC15275e abstractC15275e, AbstractC16613a2 abstractC16613a2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC15275e, "notificationManager");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        this.f47770a = context;
        this.f47771b = abstractC8541a;
        this.f47772c = abstractC15275e;
        this.f47773d = abstractC16613a2;
    }
}
