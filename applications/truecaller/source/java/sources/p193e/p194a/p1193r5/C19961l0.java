package p193e.p194a.p1193r5;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.whoviewedme.WhoViewedMeActivity;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.c0.c;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.r5.l0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/l0.class */
public final class C19961l0 {

    /* renamed from: a */
    public final Context f56449a;

    /* renamed from: b */
    public final AbstractC21881d f56450b;

    /* renamed from: c */
    public final AbstractC15275e f56451c;

    /* renamed from: d */
    public final C19959k0 f56452d;

    @Inject
    public C19961l0(Context context, AbstractC21881d abstractC21881d, AbstractC15275e abstractC15275e, C19959k0 c19959k0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC15275e, "notificationManager");
        l.e(c19959k0, "iconProvider");
        this.f56449a = context;
        this.f56450b = abstractC21881d;
        this.f56451c = abstractC15275e;
        this.f56452d = c19959k0;
    }

    /* renamed from: a */
    public final void m11734a(String str, String str2, WhoViewedMeLaunchContext whoViewedMeLaunchContext) {
        l.e(str, "title");
        l.e(str2, "text");
        l.e(whoViewedMeLaunchContext, "launchContext");
        PendingIntent activity = PendingIntent.getActivity(this.f56449a, 0, WhoViewedMeActivity.C4859a.m34279a(this.f56449a, whoViewedMeLaunchContext), 201326592);
        C26450q c26450q = new C26450q(this.f56449a, this.f56451c.mo18973a("profile_views"));
        Resources resources = this.f56449a.getResources();
        C19959k0 c19959k0 = this.f56452d;
        int i = (c19959k0.f56446b.getInt("wvmNotificationIcon", c.b.d(-1, 9)) + 1) % 10;
        c19959k0.f56446b.putInt("wvmNotificationIcon", i);
        Bitmap decodeResource = BitmapFactory.decodeResource(resources, c19959k0.f56445a[i].intValue());
        c26450q.m1855n(str);
        c26450q.m1855n(str);
        c26450q.m1856m(str2);
        Context context = this.f56449a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1854o(-1);
        c26450q.m1852q(decodeResource);
        c26450q.f74137R.icon = 2131236603;
        C26447o c26447o = new C26447o();
        c26447o.m1873k(str2);
        c26450q.m1845x(c26447o);
        c26450q.f74147g = activity;
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.setContentTitle(…rue)\n            .build()");
        this.f56451c.mo18971c(null, C2752R.C2754id.who_viewed_me_notification_id, m1865d, "notificationWhoViewedMe", null);
        AbstractC21881d abstractC21881d = this.f56450b;
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        abstractC21881d.putLong("whoViewedMeNotificationTimestamp", ((e) bVar).a);
    }
}
