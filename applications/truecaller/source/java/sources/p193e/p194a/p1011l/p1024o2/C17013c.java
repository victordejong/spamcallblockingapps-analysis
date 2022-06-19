package p193e.p194a.p1011l.p1024o2;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.z.c.l;
/* renamed from: e.a.l.o2.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/o2/c.class */
public final class C17013c {

    /* renamed from: a */
    public final Context f47726a;

    /* renamed from: b */
    public final AbstractC21881d f47727b;

    /* renamed from: c */
    public final AbstractC19222c f47728c;

    /* renamed from: d */
    public final AbstractC17197v0 f47729d;

    /* renamed from: e */
    public final AbstractC16613a2 f47730e;

    /* renamed from: f */
    public final AbstractC15275e f47731f;

    @Inject
    public C17013c(Context context, AbstractC21881d abstractC21881d, AbstractC19222c abstractC19222c, AbstractC17197v0 abstractC17197v0, AbstractC16613a2 abstractC16613a2, AbstractC15275e abstractC15275e) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC19222c, "clock");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        l.e(abstractC15275e, "notificationManager");
        this.f47726a = context;
        this.f47727b = abstractC21881d;
        this.f47728c = abstractC19222c;
        this.f47729d = abstractC17197v0;
        this.f47730e = abstractC16613a2;
        this.f47731f = abstractC15275e;
    }

    /* renamed from: a */
    public final void m16641a() {
        this.f47727b.remove("premiumLostConsumableType");
        this.f47727b.remove("premiumLostConsumableNotificationCount");
        this.f47727b.remove("premiumLostConsumableNotificationTimestamp");
        this.f47727b.remove("showLostPremiumConsumableNotification");
    }

    /* renamed from: b */
    public final String m16640b() {
        Context context = this.f47726a;
        String string = this.f47727b.getString("premiumLostConsumableType", "");
        if (string.hashCode() == 3178592) {
            string.equals("gold");
        }
        String string2 = context.getString(C2752R.string.PremiumConsumableLostNotificationPremium);
        l.d(string2, "context.getString(\n     …onPremium\n        }\n    )");
        return string2;
    }

    /* renamed from: c */
    public final String m16639c() {
        Context context = this.f47726a;
        String string = this.f47727b.getString("premiumLostConsumableType", "");
        String string2 = context.getString((string.hashCode() == 3178592 && string.equals("gold")) ? 2131887212 : 2131887213);
        l.d(string2, "context.getString(\n     …lePremium\n        }\n    )");
        return string2;
    }

    /* renamed from: d */
    public final void m16638d(long j) {
        this.f47727b.putLong("premiumLostConsumableNotificationCount", j + 1);
    }

    /* renamed from: e */
    public final void m16637e() {
        this.f47727b.putLong("premiumLostConsumableNotificationTimestamp", this.f47728c.mo13819c());
        this.f47727b.putBoolean("showLostPremiumConsumableNotification", true);
        AbstractC16613a2 abstractC16613a2 = this.f47730e;
        Context context = this.f47726a;
        PremiumLaunchContext premiumLaunchContext = PremiumLaunchContext.CONSUMABLE_LOST;
        String string = this.f47727b.getString("premiumLostConsumableType");
        if (string == null) {
            string = "";
        }
        PendingIntent activity = PendingIntent.getActivity(this.f47726a, 0, C10480a.m26059J(abstractC16613a2, context, premiumLaunchContext, (string.hashCode() == 3178592 && string.equals("gold")) ? "gold" : "premium", null, 8, null), 201326592);
        C26450q c26450q = new C26450q(this.f47726a, this.f47731f.mo18970d());
        c26450q.m1855n(m16639c());
        c26450q.m1856m(m16640b());
        C26447o c26447o = new C26447o();
        c26447o.m1873k(m16640b());
        c26450q.m1845x(c26447o);
        Context context2 = this.f47726a;
        Object obj = C26467a.f74235a;
        c26450q.m1852q(C8605o.m28237c(C26467a.C26470c.m1789b(context2, C2752R.C2753drawable.ic_premium_consumable_lost_notification)));
        c26450q.f74123D = C26467a.C26471d.m1787a(this.f47726a, 2131101323);
        c26450q.m1854o(-1);
        c26450q.f74137R.icon = 2131236603;
        c26450q.f74147g = activity;
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC15275e abstractC15275e = this.f47731f;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.build()");
        abstractC15275e.mo18964j(C2752R.C2754id.premium_consumable_lost, m1865d, "notificationPremiumCOnsumableLost");
    }
}
