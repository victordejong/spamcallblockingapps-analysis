package com.privacystar.core.service.firebase;

import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
import com.google.firebase.messaging.FirebaseMessaging;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.FirebaseUtil;
import java.io.IOException;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/firebase/PSFirebaseInstanceIDService.class */
public class PSFirebaseInstanceIDService extends FirebaseInstanceIdService {
    public static String getFcmId() {
        return FirebaseInstanceId.getInstance().getToken();
    }

    public static String getFcmToken() {
        return getToken(PSApplication.context().getString(C1566R.string.fcm_android_sender_id));
    }

    private static String getToken(String str) {
        try {
            return FirebaseInstanceId.getInstance().getToken(str, FirebaseMessaging.INSTANCE_ID_SCOPE);
        } catch (IOException e) {
            Timber.m29i(e, "Error getting fcm token.", new Object[0]);
            return "";
        }
    }

    private void onCydTokenRefresh() {
        Timber.m37d("Triggering cyd token refresh.", new Object[0]);
        CallerYDHelper.INSTANCE.getCydApp().refreshFirstOrionFirebaseToken(PSApplication.context());
    }

    private void onDefaultTokenRefresh() {
        Timber.m37d("New FCM token received: %s", getFcmId());
        FirebaseMessageSender.registerUpstream();
        RegistrationHandler.getInstance().checkRegistrationWithPermissions(PSApplication.context(), false);
        FirebaseUtil.subscribeToOffenderDeltaTopic(PSApplication.context());
        AnalyticsManager.INSTANCE.fire(Event.FcmRegistrationEvent.INSTANCE);
    }

    public static void subscribeToTopic(String str) {
        FirebaseMessaging.getInstance().subscribeToTopic(str);
    }

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        Timber.m31i("Firebase called onTokenRefresh()", new Object[0]);
        onDefaultTokenRefresh();
        onCydTokenRefresh();
    }
}
