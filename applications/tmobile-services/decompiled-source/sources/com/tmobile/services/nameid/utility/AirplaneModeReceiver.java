package com.tmobile.services.nameid.utility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AirplaneModeReceiver.class */
public class AirplaneModeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, @Nullable Intent intent) {
        if (intent != null) {
            if ("android.intent.action.AIRPLANE_MODE".equals(intent.getAction())) {
                LogUtil.m5643d("AirplaneModeReceiveronReceive", "Detected airplane mode toggle");
                PreferenceUtils.m5386k("PREF_AIRPLANE_MODE_TOGGLED", true);
                return;
            }
            LogUtil.m5643d("AirplaneModeReceiveronReceive", "Received unexpected action - " + intent.getAction());
        }
    }
}
