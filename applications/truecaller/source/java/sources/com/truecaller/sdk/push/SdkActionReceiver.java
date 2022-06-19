package com.truecaller.sdk.push;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21020b0;
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/push/SdkActionReceiver.class */
public class SdkActionReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.hasExtra("a")) {
            PushAppData pushAppData = (PushAppData) intent.getParcelableExtra("a");
            C19291g.m13515s(context);
            new C21020b0().m10411b(pushAppData);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager != null) {
                notificationManager.cancel(16);
                C19291g.m13515s(context);
            }
            HashMap m8667T = C22128a.m8667T("EventType", "NotificationRejected");
            String str = pushAppData.f14575a;
            if (str != null) {
                m8667T.put("WebRequestId", str);
            }
            if (!TextUtils.isEmpty(pushAppData.f14576b)) {
                m8667T.put("PartnerName", pushAppData.f14576b);
            }
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof AbstractC21040l)) {
                return;
            }
            ((AbstractC21040l) applicationContext).mo10387a().mo13271e(new AbstractC19502g.C19504b.C19505a("TrueSDK_Notification", null, m8667T, null));
        }
    }
}
