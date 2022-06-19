package p193e.p194a.p1070n2.p1073c.p1074b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.suspension.AccountSuspendedNotificationConfigurations;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p786g0.AbstractC14366h;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.z.c.l;
/* renamed from: e.a.n2.c.b.b */
/* loaded from: classes4-dex2jar.jar:e/a/n2/c/b/b.class */
public final class C18477b {

    /* renamed from: a */
    public final Context f52162a;

    /* renamed from: b */
    public final a<AbstractC14366h> f52163b;

    /* renamed from: c */
    public final AbstractC15275e f52164c;

    @Inject
    public C18477b(Context context, a<AbstractC14366h> aVar, AbstractC15275e abstractC15275e) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "suspensionNotificationManager");
        l.e(abstractC15275e, "notificationManager");
        this.f52162a = context;
        this.f52163b = aVar;
        this.f52164c = abstractC15275e;
    }

    /* renamed from: a */
    public void m14880a() {
        AccountSuspendedNotificationConfigurations mo20165b = ((AbstractC14366h) this.f52163b.get()).mo20165b();
        m14879b(mo20165b.getTitle(), mo20165b.getContent(), "notificationAccountSuspended");
        ((AbstractC14366h) this.f52163b.get()).mo20166a(mo20165b);
    }

    /* renamed from: b */
    public final void m14879b(int i, int i2, String str) {
        String mo18970d = this.f52164c.mo18970d();
        Intent intent = new Intent(this.f52162a, TruecallerInit.class);
        intent.addFlags(268468224);
        C26450q c26450q = new C26450q(this.f52162a, mo18970d);
        c26450q.m1855n(this.f52162a.getString(i));
        c26450q.m1856m(this.f52162a.getString(i2));
        C26447o c26447o = new C26447o();
        c26447o.m1873k(this.f52162a.getString(i2));
        c26450q.m1845x(c26447o);
        Context context = this.f52162a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1854o(-1);
        c26450q.f74137R.icon = 2131236603;
        c26450q.f74147g = PendingIntent.getActivity(this.f52162a, 0, intent, 67108864);
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC15275e abstractC15275e = this.f52164c;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "builder.build()");
        abstractC15275e.mo18964j(C2752R.C2754id.account_suspension_notification_id, m1865d, str);
    }
}
