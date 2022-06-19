package p193e.p194a.p1011l.p1025p2;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.BitmapFactory;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.p2.f */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/f.class */
public final class C17086f {

    /* renamed from: a */
    public final AbstractC21881d f47955a;

    /* renamed from: b */
    public final Context f47956b;

    /* renamed from: c */
    public final AbstractC8541a f47957c;

    /* renamed from: d */
    public final AbstractC15275e f47958d;

    /* renamed from: e */
    public final AbstractC16613a2 f47959e;

    /* renamed from: f */
    public final AbstractC19222c f47960f;

    /* renamed from: g */
    public final C16604y f47961g;

    /* renamed from: h */
    public final AbstractC17197v0 f47962h;

    @Inject
    public C17086f(AbstractC21881d abstractC21881d, Context context, AbstractC8541a abstractC8541a, AbstractC15275e abstractC15275e, AbstractC16613a2 abstractC16613a2, AbstractC19222c abstractC19222c, C16604y c16604y, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC21881d, "generalSettings");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC15275e, "notificationManager");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        l.e(abstractC19222c, "clock");
        l.e(c16604y, "premiumPurchaseSupportedCheck");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f47955a = abstractC21881d;
        this.f47956b = context;
        this.f47957c = abstractC8541a;
        this.f47958d = abstractC15275e;
        this.f47959e = abstractC16613a2;
        this.f47960f = abstractC19222c;
        this.f47961g = c16604y;
        this.f47962h = abstractC17197v0;
    }

    /* renamed from: a */
    public final void m16549a() {
        this.f47955a.remove("premiumFreePromoReceived");
        this.f47955a.remove("premiumFreePromoEnded");
        this.f47955a.remove("premiumFreePromoNotificationCount");
        this.f47955a.remove("premiumFreePromoNotificationTime");
    }

    /* renamed from: b */
    public final void m16548b() {
        if (!this.f47955a.getBoolean("premiumFreePromoEnded") || this.f47962h.mo16408H() || !this.f47961g.m17198b() || this.f47957c.getBoolean("premiumHadPremiumBlockingFeatures")) {
            return;
        }
        long j = this.f47955a.getLong("premiumFreePromoNotificationCount", 0L);
        long j2 = this.f47955a.getLong("premiumFreePromoNotificationTime", 0L);
        if (j >= 3) {
            m16549a();
            return;
        }
        if (j != 0) {
            b D = new b(j2).D(7);
            l.d(D, "DateTime(timestamp).plusDays(7)");
            if (!D.j()) {
                return;
            }
        }
        this.f47955a.putLong("premiumFreePromoNotificationCount", j + 1);
        this.f47955a.putLong("premiumFreePromoNotificationTime", this.f47960f.mo13819c());
        PendingIntent activity = PendingIntent.getActivity(this.f47956b, 0, C10480a.m26059J(this.f47959e, this.f47956b, PremiumLaunchContext.PREMIUM_FREE_PROMO, null, null, 12, null), 201326592);
        String string = this.f47956b.getString(C2752R.string.PremiumFreePromoNudgeTitle);
        l.d(string, "context.getString(R.stri…emiumFreePromoNudgeTitle)");
        String string2 = this.f47956b.getString(C2752R.string.PremiumFreePromoNudgeMessage);
        l.d(string2, "context.getString(R.stri…iumFreePromoNudgeMessage)");
        C26450q c26450q = new C26450q(this.f47956b, this.f47958d.mo18970d());
        c26450q.m1855n(string);
        c26450q.m1856m(string2);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(string2);
        c26450q.m1845x(c26447o);
        c26450q.m1852q(BitmapFactory.decodeResource(this.f47956b.getResources(), C2752R.C2753drawable.ic_get_premium));
        Context context = this.f47956b;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1854o(4);
        c26450q.f74137R.icon = 2131236603;
        c26450q.f74147g = activity;
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC15275e abstractC15275e = this.f47958d;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.build()");
        abstractC15275e.mo18964j(C2752R.C2754id.premium_free_promo, m1865d, "notificationPremiumFreePromo");
    }
}
