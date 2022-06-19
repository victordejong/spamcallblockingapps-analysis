package com.truecaller.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19502g;
/* loaded from: classes4-dex2jar.jar:com/truecaller/analytics/InstallReferrerReceiver.class */
public class InstallReferrerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        HashMap hashMap;
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        if (!TextUtils.isEmpty(stringExtra)) {
            hashMap = new HashMap();
            hashMap.put("Campaign_ID", stringExtra);
        } else {
            hashMap = null;
        }
        C22128a.m8596m1().mo13271e(new AbstractC19502g.C19504b.C19505a("ANDROID_MAIN_UserAquiredThroughCampaign", null, hashMap, null));
    }
}
