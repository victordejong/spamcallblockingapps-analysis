package p193e.p194a.p1011l.p1025p2;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.z.c.l;
/* renamed from: e.a.l.p2.i */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/i.class */
public final class C17099i {

    /* renamed from: a */
    public final Context f47999a;

    /* renamed from: b */
    public final AbstractC15275e f48000b;

    /* renamed from: c */
    public final C17095h f48001c;

    /* renamed from: d */
    public final AbstractC16613a2 f48002d;

    @Inject
    public C17099i(Context context, AbstractC15275e abstractC15275e, C17095h c17095h, AbstractC16613a2 abstractC16613a2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15275e, "notificationManager");
        l.e(c17095h, "manager");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        this.f47999a = context;
        this.f48000b = abstractC15275e;
        this.f48001c = c17095h;
        this.f48002d = abstractC16613a2;
    }

    /* renamed from: a */
    public final Bitmap m16536a(Bitmap bitmap) {
        C21852d<Bitmap> mo8415f = C17891a1.C17902k.m15664K1(this.f47999a).mo8415f();
        mo8415f.f61767J = bitmap;
        mo8415f.f61771N = true;
        Object obj = ((C21852d) mo8415f.mo8432J(C22591h.m8073J(AbstractC22364k.f62125b))).mo8102f().m8418X().get();
        l.d(obj, "GlideApp.with(context)\n … .submit()\n        .get()");
        return (Bitmap) obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x01c8, code lost:
        if (r16 != null) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x025f A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16535b(boolean r12) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17099i.m16535b(boolean):boolean");
    }

    /* renamed from: c */
    public final void m16534c(PremiumLaunchContext premiumLaunchContext, String str, String str2, Bitmap bitmap) {
        PendingIntent activity = PendingIntent.getActivity(this.f47999a, 0, C10480a.m26059J(this.f48002d, this.f47999a, premiumLaunchContext, premiumLaunchContext == PremiumLaunchContext.FRIEND_UPGRADED_TO_GOLD_NOTIFICATION ? "gold" : null, null, 8, null), 201326592);
        C26450q c26450q = new C26450q(this.f47999a, this.f48000b.mo18970d());
        c26450q.m1855n(str);
        c26450q.m1856m(str2);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(str2);
        c26450q.m1845x(c26447o);
        c26450q.m1852q(bitmap);
        Context context = this.f47999a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1854o(-1);
        c26450q.f74137R.icon = 2131236603;
        c26450q.f74147g = activity;
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC15275e abstractC15275e = this.f48000b;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.build()");
        abstractC15275e.mo18964j(C2752R.C2754id.premium_friend_upgraded_notification, m1865d, "notificationPremiumFriendUpgraded");
    }
}
