package com.tmobile.services.nameid.utility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SubscriptionUpgradeReceiver.class */
public class SubscriptionUpgradeReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static void m5301a(Context context) {
        LogUtil.m5632o("SubscriptionUpgradeReceiver#onReceive", "Got user status broadcast and app is backgrounded. Showing notification.");
        String string = context.getString(SubscriptionHelper.m5325c() == SubscriptionHelper.State.TRIAL ? C1517R.string.trial_success_notification_subtitle : C1517R.string.nameid_success_notification_subtitle);
        NotificationUtil.m5436u(context, context.getString(C1517R.string.subscribe_success_notification_title), string, string, "MAIN_KEY");
        PreferenceUtils.m5386k("PREF_SHOWN_SUBSCRIPTION_NOTIFICATION", true);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i;
        boolean z = !PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false);
        boolean b = PreferenceUtils.m5395b("PREF_NOTIFY_WHEN_SYNCED", true);
        LogUtil.m5632o("SubscriptionUpgradeReceiver#onReceive", "Got user status broadcast" + intent.getAction() + "; in background? " + z + " notify? " + b);
        PendingStateHelper.m5429a();
        if (!z || !b) {
            PreferenceUtils.m5386k("PREF_SHOWN_SUBSCRIPTION_NOTIFICATION", true);
            if (z) {
                PreferenceUtils.m5386k("PREF_NOTIFY_WHEN_SYNCED", true);
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("BROADCAST_USER_STATUS");
        if (stringExtra.equals("BROADCAST_GOT_USER_STATUS")) {
            PendingStateHelper.m5429a();
            ApiUtils.m6841p0();
            m5301a(context);
        } else if (stringExtra.equals("BROADCAST_GOT_USER_STATUS_ERROR")) {
            SubscriptionHelper.State c = SubscriptionHelper.m5325c();
            LogUtil.m5643d("SubscriptionUpgradeReceiver#onReceive", "state from SubscriptionHelper = " + c.name());
            if (c == SubscriptionHelper.State.ERROR_PREMIUM || c == SubscriptionHelper.State.ERROR_REDUCED || c == SubscriptionHelper.State.ERROR_REDUCED_METRO) {
                i = C1517R.string.subscribe_nameid_fail_title;
            } else if (c == SubscriptionHelper.State.ERROR_TRIAL) {
                i = C1517R.string.account_trial_check_fail_notification;
            } else {
                return;
            }
            String string = context.getString(C1517R.string.subscribe_nameid_fail_subtitle);
            NotificationUtil.m5436u(context, context.getString(i), string, string, "MY_ACCOUNT_KEY");
            PreferenceUtils.m5386k("PREF_SHOWN_SUBSCRIPTION_NOTIFICATION", true);
            LogUtil.m5632o("SubscriptionUpgradeReceiver#", "Got user status check failed.");
            LogUtil.m5632o("SubscriptionUpgradeReceiver#onReceive", "Got user status check failed.");
        }
    }
}
