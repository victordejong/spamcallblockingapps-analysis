package com.apptentive.android.sdk.module.engagement.notification;

import android.content.Context;
import android.content.Intent;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/InteractionNotificationBroadcastReceiverHandler.class */
public interface InteractionNotificationBroadcastReceiverHandler {
    void handleBroadcast(Context context, Intent intent) throws JSONException;
}
