package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.service.jobs.ShowRegistrationReminderService;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/PhoneStateReceiver.class */
public class PhoneStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static String f27373a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        String str;
        if (PhoneManager.get().isDefaultPhoneApp()) {
            CLog.m27611a(PhoneStateReceiver.class, "PhoneStateReceiver onReceive return because we are default phone app");
        } else if (intent == null) {
            CLog.m27611a(PhoneStateReceiver.class, "PhoneStateReceiver.onReceive called!");
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                CLog.m27610a(PhoneStateReceiver.class, "PhoneStateReceiver.onReceive called with ACTION=[%s]", intent.getAction());
                return;
            }
            String action = intent.getAction();
            int i = -1;
            String str2 = "";
            if ("android.intent.action.PHONE_STATE".equals(action)) {
                str = intent.getStringExtra(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                str2 = extras.getString("incoming_number");
                if (str != null) {
                    if (str.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                        i = 0;
                    } else if (str.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                        i = 2;
                    } else if (str.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                        i = 1;
                    }
                }
                z = false;
            } else if ("android.intent.action.NEW_OUTGOING_CALL".equals(action)) {
                i = -2;
                str2 = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
                str = PhoneStateManager.CALL_STATE_OUTGOING_RINGING_STRING;
                z = true;
            } else {
                str = "";
                z = false;
            }
            CLog.m27610a(PhoneStateReceiver.class, "PhoneStateReceiver.onReceive called with ACTION = [%s], PHONE_NUMBER = [%s], EXTRA_STATE = [%d]", action, str2, Integer.valueOf(i));
            if (StringUtils.m26059a((CharSequence) str2)) {
                return;
            }
            if (!z && StringUtils.m26042b(f27373a, str)) {
                CLog.m27611a(PhoneStateReceiver.class, "Already handled state from Receiver: ".concat(String.valueOf(str)));
                return;
            }
            if (!z) {
                f27373a = str;
            }
            if (Prefs.f26245aV.isNotNull()) {
                PhoneStateManager.get().onCallStateChanged(PhoneStateManager.EVENT_SOURCE.RECEIVER, i, str2);
            } else if (i != 0 || Prefs.f26327by.get().intValue() < 3) {
            } else {
                Intent intent2 = new Intent("com.callapp.contacts.ACTION_SHOW_COMPLETE_REGISTRATION_POPUP");
                if (Prefs.f26592gy.get().booleanValue()) {
                    return;
                }
                Prefs.f26592gy.set(Boolean.TRUE);
                JobIntentService.m44627a(CallAppApplication.get(), ShowRegistrationReminderService.class, 4, intent2);
            }
        }
    }
}
