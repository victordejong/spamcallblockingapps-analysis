package p193e.p194a.p1011l.p1020g;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.gift.GoldGiftDialogActivity;
import java.util.ArrayList;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p912i4.AbstractC15275e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.gift.GoldGiftNotificationHandler$handleNotification$1", f = "GoldGiftNotificationHandler.kt", l = {37}, m = "invokeSuspend")
/* renamed from: e.a.l.g.r */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/r.class */
public final class C16911r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f47489e;

    /* renamed from: f */
    public final /* synthetic */ C16912s f47490f;

    /* renamed from: g */
    public final /* synthetic */ InternalTruecallerNotification f47491g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16911r(C16912s c16912s, InternalTruecallerNotification internalTruecallerNotification, d dVar) {
        super(2, dVar);
        this.f47490f = c16912s;
        this.f47491g = internalTruecallerNotification;
    }

    /* renamed from: i */
    public final d<s> m16777i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16911r(this.f47490f, this.f47491g, dVar);
    }

    /* renamed from: k */
    public final Object m16776k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16911r(this.f47490f, this.f47491g, dVar).m16775s(s.a);
    }

    /* renamed from: s */
    public final Object m16775s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f47489e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC17168r0 abstractC17168r0 = this.f47490f.f47492a;
            this.f47489e = 1;
            if (abstractC17168r0.mo16453b(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        String m34847j = this.f47491g.m34847j("f");
        if (m34847j != null) {
            l.d(m34847j, "notification.getApplicat…LL_NAME) ?: return@launch");
            String m34847j2 = this.f47491g.m34847j("n");
            if (m34847j2 != null) {
                AbstractC8621z abstractC8621z = this.f47490f.f47496e;
                l.d(m34847j2, "this");
                String mo28181j = abstractC8621z.mo28181j(m34847j2);
                if (mo28181j != null) {
                    String string = this.f47490f.f47493b.getString(C2752R.string.GoldGiftReceivedNotificationMessage, m34847j);
                    l.d(string, "context.getString(R.stri…ationMessage, senderName)");
                    Context context = this.f47490f.f47493b;
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(TruecallerInit.m34553xa(this.f47490f.f47493b, "messages", "GoldGift"));
                    GoldGiftDialogActivity.C4350a c4350a = GoldGiftDialogActivity.f14248d;
                    Context context2 = this.f47490f.f47493b;
                    l.e(context2, AnalyticsConstants.CONTEXT);
                    l.e(m34847j, AnalyticsConstants.NAME);
                    l.e(mo28181j, "number");
                    Intent putExtra = new Intent(context2, GoldGiftDialogActivity.class).addFlags(268435456).putExtra("EXTRA_SENDER_NAME", m34847j).putExtra("EXTRA_SENDER_NUMBER", mo28181j);
                    l.d(putExtra, "Intent(context, GoldGift…RA_SENDER_NUMBER, number)");
                    arrayList.add(putExtra);
                    if (arrayList.isEmpty()) {
                        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
                    }
                    Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
                    intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
                    PendingIntent activities = PendingIntent.getActivities(context, 0, intentArr, 134217728, null);
                    Context context3 = this.f47490f.f47493b;
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(TruecallerInit.m34553xa(this.f47490f.f47493b, "messages", "GoldGift"));
                    C16912s c16912s = this.f47490f;
                    arrayList2.add(c16912s.f47495d.m16774a(c16912s.f47493b, mo28181j));
                    if (arrayList2.isEmpty()) {
                        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
                    }
                    Intent[] intentArr2 = (Intent[]) arrayList2.toArray(new Intent[arrayList2.size()]);
                    intentArr2[0] = new Intent(intentArr2[0]).addFlags(268484608);
                    PendingIntent activities2 = PendingIntent.getActivities(context3, 0, intentArr2, 134217728, null);
                    C16912s c16912s2 = this.f47490f;
                    C26450q c26450q = new C26450q(c16912s2.f47493b, c16912s2.f47494c.mo18970d());
                    c26450q.m1855n(this.f47490f.f47493b.getString(C2752R.string.GoldGiftReceivedNotificationTitle));
                    c26450q.m1856m(string);
                    C26447o c26447o = new C26447o();
                    c26447o.m1873k(string);
                    c26450q.m1845x(c26447o);
                    c26450q.m1852q(BitmapFactory.decodeResource(this.f47490f.f47493b.getResources(), C2752R.C2753drawable.ic_gold_gift_notification));
                    Context context4 = this.f47490f.f47493b;
                    Object obj2 = C26467a.f74235a;
                    c26450q.f74123D = C26467a.C26471d.m1787a(context4, 2131101323);
                    c26450q.m1854o(-1);
                    c26450q.f74137R.icon = 2131236603;
                    c26450q.f74147g = activities;
                    c26450q.m1853p(16, true);
                    c26450q.m1868a(0, this.f47490f.f47493b.getString(2131887896), activities);
                    c26450q.m1868a(0, this.f47490f.f47493b.getString(C2752R.string.GoldGiftReceivedSendThankYou), activities2);
                    l.d(c26450q, "NotificationCompat.Build…hankYou), thankYouIntent)");
                    AbstractC15275e abstractC15275e = this.f47490f.f47494c;
                    Notification m1865d = c26450q.m1865d();
                    l.d(m1865d, "builder.build()");
                    abstractC15275e.mo18964j(C2752R.C2754id.premium_gift, m1865d, "GoldGift");
                    return sVar;
                }
            }
        }
        return sVar;
    }
}
