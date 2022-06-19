package com.unknownphone.callblocker.receiver;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/receiver/PhoneStateReceiver.class */
public class PhoneStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f22341a = PhoneStateReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    @SuppressLint({"UnsafeProtectedBroadcastReceiver"})
    public void onReceive(Context context, Intent intent) {
        Log.d(f22341a, String.format(Locale.US, "Hash code: %d", Integer.valueOf(hashCode())));
        Log.d(f22341a, "onReceive() was called.");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (Build.VERSION.SDK_INT < 24) {
            if (telephonyManager == null) {
                return;
            }
            telephonyManager.listen(new C5362a(context), 32);
            return;
        }
        try {
            SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
            if (subscriptionManager == null) {
                if (telephonyManager == null) {
                    return;
                }
                telephonyManager.listen(new C5362a(context), 32);
                return;
            }
            List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager.getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList == null || activeSubscriptionInfoList.isEmpty()) {
                if (telephonyManager == null) {
                    return;
                }
                telephonyManager.listen(new C5362a(context), 32);
                return;
            }
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                telephonyManager.createForSubscriptionId(subscriptionInfo.getSubscriptionId()).listen(new C5362a(context), 32);
            }
        } catch (SecurityException e) {
        }
    }
}
