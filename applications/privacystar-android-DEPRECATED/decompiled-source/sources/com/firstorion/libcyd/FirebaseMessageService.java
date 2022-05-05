package com.firstorion.libcyd;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.privacystar.core.service.firebase.FirebaseConstants;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/FirebaseMessageService.class */
public final class FirebaseMessageService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        if (CYDApplicationParams.getInstance(this).useCallerYDFirebaseServer && FirebaseConstants.LIBCYD_SENDER_ID.equals(remoteMessage.getFrom())) {
            remoteMessage.getData();
            if (CYDApplication.isCYDMessage(remoteMessage)) {
                CYDApplication.getInstance().handlePushMessage(getApplicationContext(), remoteMessage.getData());
            }
        }
    }
}
