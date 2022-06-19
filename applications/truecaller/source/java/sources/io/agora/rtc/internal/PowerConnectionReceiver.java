package io.agora.rtc.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/PowerConnectionReceiver.class */
public class PowerConnectionReceiver extends BroadcastReceiver {
    private WeakReference<CommonUtility> mCommonUtility;

    public PowerConnectionReceiver(CommonUtility commonUtility) {
        this.mCommonUtility = new WeakReference<>(commonUtility);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        CommonUtility commonUtility = this.mCommonUtility.get();
        if (commonUtility == null) {
            Logging.m3705w("rtc engine is not ready");
        } else if (intent == null) {
        } else {
            int intExtra = intent.getIntExtra("level", -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra2 == 0) {
                return;
            }
            commonUtility.onPowerChange((int) ((intExtra / intExtra2) * 100.0f));
        }
    }
}
