package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.ah;
import com.mopub.common.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/CallAppFirebaseInstanceIdReceiver.class */
public class CallAppFirebaseInstanceIdReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Prefs.cJ.get().booleanValue()) {
            String action = intent.getAction();
            if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
                String stringExtra = intent.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
                if (stringExtra == null || StringUtils.b(stringExtra, "gcm")) {
                    Bundle extras = intent.getExtras();
                    Bundle bundle = extras;
                    if (extras == null) {
                        bundle = new Bundle();
                    }
                    if (ah.a(bundle)) {
                        abortBroadcast();
                    }
                }
            }
        }
    }
}
