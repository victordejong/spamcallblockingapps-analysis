package com.privacystar.core.service.firebase;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/firebase/PSMessagingService.class */
public class PSMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onDeletedMessages() {
        Timber.m31i("FCM server has deleted pending messages. Full app server sync recommended.", new Object[0]);
        super.onDeletedMessages();
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Timber.m37d("Message received! From: %s, To: %s, ID: %s, FCMType: %s ", remoteMessage.getFrom(), remoteMessage.getTo(), remoteMessage.getMessageId(), remoteMessage.getMessageType());
        FirebaseMessageHandler.handleMessage(remoteMessage, getApplicationContext());
        super.onMessageReceived(remoteMessage);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageSent(String str) {
        Timber.m37d("Upstream message sent successfully.", new Object[0]);
        super.onMessageSent(str);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onSendError(String str, Exception exc) {
        Timber.m29i(exc, "Upstream message encountered an error: [%s]", str);
        AnalyticsManager.INSTANCE.fire(new Event.FcmErrorEvent(str));
        super.onSendError(str, exc);
    }
}
