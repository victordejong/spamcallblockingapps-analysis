package p193e.p194a.p1126p2;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.truecaller.C2752R;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p751f4.p764i.C14037a;
import p193e.p194a.p912i4.AbstractC15275e;
/* renamed from: e.a.p2.d */
/* loaded from: classes3-dex2jar.jar:e/a/p2/d.class */
public final /* synthetic */ class RunnableC19207d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53577a;

    /* renamed from: b */
    public final /* synthetic */ String f53578b;

    /* renamed from: c */
    public final /* synthetic */ String f53579c;

    /* renamed from: d */
    public final /* synthetic */ Intent f53580d;

    /* renamed from: e */
    public final /* synthetic */ String f53581e;

    /* renamed from: f */
    public final /* synthetic */ String f53582f;

    public /* synthetic */ RunnableC19207d(AfterCallPromotionActivity afterCallPromotionActivity, String str, String str2, Intent intent, String str3, String str4) {
        this.f53577a = afterCallPromotionActivity;
        this.f53578b = str;
        this.f53579c = str2;
        this.f53580d = intent;
        this.f53581e = str3;
        this.f53582f = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Contact contact;
        AfterCallPromotionActivity afterCallPromotionActivity = this.f53577a;
        String str = this.f53578b;
        String str2 = this.f53579c;
        Intent intent = this.f53580d;
        String str3 = this.f53581e;
        String str4 = this.f53582f;
        AbstractC15275e mo12617O1 = ((AbstractC21187w1) afterCallPromotionActivity.getApplicationContext()).mo10154s().mo12617O1();
        Resources resources = afterCallPromotionActivity.getResources();
        C26450q c26450q = new C26450q((Context) afterCallPromotionActivity, mo12617O1.mo18970d());
        c26450q.m1855n(str);
        c26450q.f74137R.deleteIntent = afterCallPromotionActivity.l;
        c26450q.m1856m(str2);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(str2);
        c26450q.m1845x(c26447o);
        c26450q.f74137R.icon = 2131236603;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(afterCallPromotionActivity, 2131101323);
        c26450q.m1852q(BitmapFactory.decodeResource(resources, C2752R.mipmap.ic_launcher));
        c26450q.m1853p(16, true);
        HistoryEvent historyEvent = afterCallPromotionActivity.k;
        if (historyEvent != null && (contact = historyEvent.f11539f) != null) {
            c26450q.m1852q(C17891a1.C17902k.m15656N0(C14037a.m20828a(contact.m35573B(), 0, 2), afterCallPromotionActivity.getApplicationContext()));
        }
        PendingIntent activity = PendingIntent.getActivity(afterCallPromotionActivity, C2752R.C2754id.req_code_aftercall_promo_open, intent, 335544320);
        c26450q.f74147g = activity;
        c26450q.m1868a(0, str3, activity);
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", str4);
        mo12617O1.mo18971c(null, C2752R.C2754id.dialer_reminder_notification_id, c26450q.m1865d(), "notificationAfterCallPromo", bundle);
    }
}
