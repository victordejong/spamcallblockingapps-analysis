package com.privacystar.core.service.firebase;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import java.util.UUID;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/firebase/FirebaseMessageSender.class */
public class FirebaseMessageSender {
    private static final int DEFAULT_TTL = 86400;

    private static String getUpstreamAddress() {
        Context context = PSApplication.context();
        return context.getString(C1566R.string.fcm_android_sender_id) + context.getString(C1566R.string.fcm_android_address);
    }

    public static void registerUpstream() {
        String upstreamAddress = getUpstreamAddress();
        Timber.m37d("Preparing to register upstream at address: %s", upstreamAddress);
        Timber.m28v("Firebase Options: %s", FirebaseApp.getInstance().getOptions().toString());
        FirebaseMessaging instance = FirebaseMessaging.getInstance();
        RemoteMessage.Builder builder = new RemoteMessage.Builder(upstreamAddress);
        instance.send(builder.setMessageId("reg-" + UUID.randomUUID().toString()).addData("registration", "true").addData("application_name", PSApplication.context().getPackageName()).setTtl(86400).build());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sendUpstreamPing() {
        FirebaseMessaging instance = FirebaseMessaging.getInstance();
        RemoteMessage.Builder builder = new RemoteMessage.Builder(getUpstreamAddress());
        instance.send(builder.setMessageId("ping-" + UUID.randomUUID().toString()).addData("ping", "true").setTtl(60).build());
    }
}
