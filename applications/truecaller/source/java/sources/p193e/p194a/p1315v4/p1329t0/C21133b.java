package p193e.p194a.p1315v4.p1329t0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.sdk.C4417R;
import com.truecaller.sdk.ConfirmProfileActivity;
import com.truecaller.sdk.push.PushAppData;
import com.truecaller.sdk.push.SdkActionReceiver;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.apache.avro.Schema;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17586i3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.z.c.l;
/* renamed from: e.a.v4.t0.b */
/* loaded from: classes12-dex2jar.jar:e/a/v4/t0/b.class */
public final class C21133b implements AbstractC21132a {
    @Override // p193e.p194a.p1315v4.p1329t0.AbstractC21132a
    /* renamed from: a */
    public void mo10253a(Context context, Map<String, String> map) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(map, RemoteMessageConst.DATA);
        if (AbstractApplicationC8442a.m28551L().mo28540W()) {
            PushAppData pushAppData = new PushAppData(map.containsKey("requestId") ? map.get("requestId") : null, map.containsKey(AnalyticsConstants.NAME) ? map.get(AnalyticsConstants.NAME) : null, map.containsKey(RemoteMessageConst.TTL) ? Integer.parseInt(map.get(RemoteMessageConst.TTL)) : 0);
            l.d(pushAppData, "pushAppData");
            Bundle bundle = new Bundle();
            bundle.putParcelable("a", pushAppData);
            Intent launchIntent = ConfirmProfileActivity.getLaunchIntent(context, bundle);
            String string = context.getString(C4417R.string.SdkNotificationWebSignInTitle, pushAppData.f14576b);
            l.d(string, "context.getString(R.stri…nTitle, pushAppData.name)");
            Uri defaultUri = RingtoneManager.getDefaultUri(2);
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext;
            if (!(applicationContext instanceof AbstractC14932g)) {
                context2 = null;
            }
            AbstractC14932g abstractC14932g = (AbstractC14932g) context2;
            if (abstractC14932g == null) {
                throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
            }
            AbstractC14920n mo19403n = abstractC14932g.mo19403n();
            String mo19425a = mo19403n.mo19425a("profile_share");
            PendingIntent activity = PendingIntent.getActivity(context, 0, launchIntent, 201326592);
            Intent intent = new Intent("com.truecaller.sdk.web_request_reject", null, context, SdkActionReceiver.class);
            intent.putExtras(bundle);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 16, intent, 201326592);
            C26450q c26450q = new C26450q(context, mo19425a);
            c26450q.f74137R.icon = C4417R.C4418drawable.notification_logo;
            c26450q.m1855n(string);
            c26450q.f74137R.vibrate = new long[]{500, 100, 500};
            c26450q.m1846w(defaultUri);
            c26450q.m1851r(-16776961, 1, 1);
            c26450q.f74152l = 1;
            c26450q.m1853p(2, true);
            c26450q.m1868a(C4417R.C4418drawable.ic_notification_done, context.getString(C4417R.string.SdkNotificationAccept), activity);
            c26450q.m1868a(C4417R.C4418drawable.ic_notification_reject, context.getString(C4417R.string.SdkNotificationReject), broadcast);
            c26450q.m1856m(context.getString(C4417R.string.SdkNotificationOneTapLogin));
            c26450q.f74147g = activity;
            c26450q.f74137R.deleteIntent = broadcast;
            l.d(c26450q, "NotificationCompat.Build…eteIntent(dismissPending)");
            Notification m1865d = c26450q.m1865d();
            l.d(m1865d, "mBuilder.build()");
            mo19403n.mo19419g(16, m1865d);
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(pushAppData, "pushAppData");
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            Objects.requireNonNull(m28551L, "null cannot be cast to non-null type com.truecaller.sdk.EventsTrackerHolder");
            AbstractC21040l abstractC21040l = (AbstractC21040l) m28551L;
            Schema schema = C17586i3.f49515d;
            C17586i3.C17588b c17588b = new C17586i3.C17588b(null);
            HashMap hashMap = new HashMap();
            HashMap m8667T = C22128a.m8667T("EventType", "NotificationShown");
            String str = pushAppData.f14575a;
            if (str != null) {
                m8667T.put("WebRequestId", str);
                hashMap.put("requestId", pushAppData.f14575a);
            }
            if (!TextUtils.isEmpty(pushAppData.f14576b)) {
                m8667T.put("PartnerName", pushAppData.f14576b);
                String str2 = pushAppData.f14576b;
                l.d(str2, "pushAppData.name");
                hashMap.put("partnerName", str2);
            }
            l.d(c17588b, "eventWeb");
            c17588b.validate(c17588b.fields()[2], hashMap);
            c17588b.f49522a = hashMap;
            c17588b.fieldSetFlags()[2] = true;
            AbstractC19462a mo10387a = abstractC21040l.mo10387a();
            C17586i3 build = c17588b.build();
            l.d(build, "eventWeb.build()");
            mo10387a.mo13275a(build);
            Context applicationContext2 = context.getApplicationContext();
            if (!(applicationContext2 instanceof AbstractC21040l)) {
                return;
            }
            C22128a.m8711G0("TrueSDK_Notification", null, m8667T, null, "event.build()", ((AbstractC21040l) applicationContext2).mo10387a());
        }
    }
}
