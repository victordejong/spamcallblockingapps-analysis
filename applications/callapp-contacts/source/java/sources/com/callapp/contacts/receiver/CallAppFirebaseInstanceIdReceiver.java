package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
import com.google.firebase.messaging.C15847ah;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.mopub.common.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/CallAppFirebaseInstanceIdReceiver.class */
public class CallAppFirebaseInstanceIdReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Prefs.f26339cJ.get().booleanValue()) {
            String action = intent.getAction();
            if (!"com.google.android.c2dm.intent.RECEIVE".equals(action) && !FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
                return;
            }
            String stringExtra = intent.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
            if (stringExtra != null && !StringUtils.m26042b(stringExtra, "gcm")) {
                return;
            }
            Bundle extras = intent.getExtras();
            Bundle bundle = extras;
            if (extras == null) {
                bundle = new Bundle();
            }
            if (!C15847ah.m8201a(bundle)) {
                return;
            }
            abortBroadcast();
        }
    }
}
