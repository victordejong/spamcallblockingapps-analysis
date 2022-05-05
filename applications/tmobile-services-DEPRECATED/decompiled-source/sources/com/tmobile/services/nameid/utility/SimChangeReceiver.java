package com.tmobile.services.nameid.utility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.utility.IamWrapper;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SimChangeReceiver.class */
public class SimChangeReceiver extends BroadcastReceiver {
    /* renamed from: a */
    private static void m5352a(Context context) {
        final String h = PreferenceUtils.m5389h("PREF_TMO_ACCOUNT_MSISDN", "");
        if (h.isEmpty()) {
            LogUtil.m5639h("SimChangeReceiver", "No cached MSISDN. Do nothing.");
        } else {
            IamWrapper.m5685c(context, null).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.utility.q1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    SimChangeReceiver.m5351b(h, (IamWrapper.IamResponse) obj);
                }
            }, C1974p1.f14583f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m5351b(String str, IamWrapper.IamResponse iamResponse) throws Exception {
        if (iamResponse != IamWrapper.IamResponse.SUCCESS) {
            LogUtil.m5639h("SimChangeReceiver", "Failed to fetched current MSISDN.");
            return;
        }
        String h = PreferenceUtils.m5389h("PREF_TMO_ACCOUNT_MSISDN", "");
        LogUtil.m5632o("SimChangeReceiver", "MSISDN is now: " + h);
        if (!h.equals(str)) {
            LogUtil.m5632o("SimChangeReceiver", "MSISDN changed. " + h + " != " + str);
            MainApplication.m7550F();
            return;
        }
        LogUtil.m5639h("SimChangeReceiver", "MSISDN did not change.");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LogUtil.m5643d("SimChangeReceiveronReceive", "sim change detected.");
        if (intent.hasExtra("ss")) {
            String string = intent.getExtras().getString("ss");
            LogUtil.m5643d("SimChangeReceiveronReceive", "Status: " + string);
            boolean b = PreferenceUtils.m5395b("PREF_MSISDN_CHANGE_CLEAR_DATA", false);
            if (string == null) {
                string = "";
            }
            if ("SIM_REMOVED".equals(string) || "ABSENT".equals(string)) {
                LogUtil.m5639h("SimChangeReceiver", "SIM was removed. Clear data.");
                MainApplication.m7550F();
            } else if ("LOADED".equals(string) && !b) {
                m5352a(context);
            }
        }
    }
}
