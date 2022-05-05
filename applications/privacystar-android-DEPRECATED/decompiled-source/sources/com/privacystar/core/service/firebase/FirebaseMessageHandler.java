package com.privacystar.core.service.firebase;

import android.content.Context;
import com.privacystar.core.service.network.handler.LicenseHandler;
import com.privacystar.core.service.network.handler.MessageReceivedHandler;
import java.util.Map;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/firebase/FirebaseMessageHandler.class */
public class FirebaseMessageHandler {
    private static final String BATCH_DATA = "b";
    private static final String C_TYPE = "t";
    private static final String DELTA_DATA = "d";
    private static final String FORM_ID_DATA = "f";
    private static final String NUMBER_DATA = "m";

    private static void handleCallLogRefresh(Map<String, String> map) {
        Timber.m37d("Handling push message as a Call Log Refresh.", new Object[0]);
        if (!map.containsKey(NUMBER_DATA) || !map.containsKey(FORM_ID_DATA)) {
            Timber.m25w("Body not found in FCM payload", new Object[0]);
            return;
        }
        map.get(NUMBER_DATA);
        map.get(FORM_ID_DATA);
    }

    private static void handleCampaignMessage(Map<String, String> map) {
        Timber.m37d("Handling push message as a CampaignContract Message.", new Object[0]);
        if (map.containsKey(BATCH_DATA)) {
            String str = map.get(BATCH_DATA);
            Timber.m37d("Batch Id received is: %s", str);
            MessageReceivedHandler.getInstance().generateAndEnqueueRequest(str);
            return;
        }
        Timber.m25w("No body found in FCM payload", new Object[0]);
    }

    private static void handleLicensePush(Context context) {
        Timber.m37d("Handling push message as a License check request.", new Object[0]);
        LicenseHandler.getInstance().generateAndSendRequest(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void handleMessage(com.google.firebase.messaging.RemoteMessage r6, android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.firebase.FirebaseMessageHandler.handleMessage(com.google.firebase.messaging.RemoteMessage, android.content.Context):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[Catch: Exception -> 0x00e7, TRY_ENTER, TryCatch #0 {Exception -> 0x00e7, blocks: (B:9:0x0030, B:15:0x005d, B:20:0x0076, B:26:0x0097, B:32:0x00b6), top: B:38:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8  */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void handleOffenderUpdatePush(java.util.Map<java.lang.String, java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.firebase.FirebaseMessageHandler.handleOffenderUpdatePush(java.util.Map):void");
    }

    private static void handlePing() {
        Timber.m37d("Handling push message as a Ping.", new Object[0]);
        FirebaseMessageSender.sendUpstreamPing();
    }
}
