package com.clevertap.android.pushtemplates;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.clevertap.android.sdk.pushnotification.CTPushNotificationReceiver;
import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1488b.C22681g;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/pushtemplates/PTPushNotificationReceiver.class */
public class PTPushNotificationReceiver extends CTPushNotificationReceiver {

    /* renamed from: com.clevertap.android.pushtemplates.PTPushNotificationReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/pushtemplates/PTPushNotificationReceiver$a.class */
    public class CallableC0859a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f2171a;

        /* renamed from: b */
        public final /* synthetic */ Intent f2172b;

        public CallableC0859a(PTPushNotificationReceiver pTPushNotificationReceiver, Context context, Intent intent) {
            this.f2171a = context;
            this.f2172b = intent;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                C22681g.m7978b(this.f2171a, this.f2172b);
                C22681g.m7977c(this.f2171a);
                return null;
            } catch (Throwable th) {
                th.getLocalizedMessage();
                return null;
            }
        }
    }

    @Override // com.clevertap.android.sdk.pushnotification.CTPushNotificationReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C22773p m7796e;
        super.onReceive(context, intent);
        Bundle extras = intent.getExtras();
        if (extras == null || (m7796e = C22773p.m7796e(context, extras.getString("wzrk_acct_id"))) == null) {
            return;
        }
        try {
            C22895k m7641c = C22882a.m7644a(m7796e.f63088b.f63515a).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "PTPushNotificationReceiver#cleanUpFiles", new CallableC0859a(this, context, intent)));
        } catch (Exception e) {
            e.getLocalizedMessage();
        }
    }
}
