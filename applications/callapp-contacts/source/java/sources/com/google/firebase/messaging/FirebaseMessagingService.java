package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.mopub.common.Constants;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingService.class */
public class FirebaseMessagingService extends EnhancedIntentService {
    public static final String ACTION_DIRECT_BOOT_REMOTE_INTENT = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT";
    private static final Queue<String> recentlyReceivedMessageIds = new ArrayDeque(10);

    private boolean alreadyReceivedMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue<String> queue = recentlyReceivedMessageIds;
        if (!queue.contains(str)) {
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(str);
            return false;
        } else if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        } else {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Received duplicate message: ".concat(valueOf);
                return true;
            }
            new String("Received duplicate message: ");
            return true;
        }
    }

    private void dispatchMessage(Intent intent) {
        Bundle extras = intent.getExtras();
        Bundle bundle = extras;
        if (extras == null) {
            bundle = new Bundle();
        }
        bundle.remove("androidx.content.wakelockid");
        if (C15847ah.m8201a(bundle)) {
            C15847ah c15847ah = new C15847ah(bundle);
            ExecutorService m8118a = C15887o.m8118a();
            try {
                if (new C15875c(this, c15847ah, m8118a).m8127a()) {
                    return;
                }
                m8118a.shutdown();
                if (C15844ae.m8225e(intent)) {
                    C15844ae.m8226d(intent);
                }
            } finally {
                m8118a.shutdown();
            }
        }
        onMessageReceived(new RemoteMessage(bundle));
    }

    private String getMessageId(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    private void handleMessageIntent(Intent intent) {
        if (!alreadyReceivedMessage(intent.getStringExtra("google.message_id"))) {
            passMessageIntentToSdk(intent);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void passMessageIntentToSdk(Intent intent) {
        boolean z;
        String stringExtra = intent.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
        String str = stringExtra;
        if (stringExtra == null) {
            str = "gcm";
        }
        switch (str.hashCode()) {
            case -2062414158:
                if (str.equals("deleted_messages")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 102161:
                if (str.equals("gcm")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 814694033:
                if (str.equals("send_error")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 814800675:
                if (str.equals("send_event")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            C15844ae.m8231a(intent);
            dispatchMessage(intent);
        } else if (z) {
            onDeletedMessages();
        } else if (z) {
            onMessageSent(intent.getStringExtra("google.message_id"));
        } else if (!z) {
            Log.w("FirebaseMessaging", str.length() != 0 ? "Received message with unknown type: ".concat(str) : new String("Received message with unknown type: "));
        } else {
            onSendError(getMessageId(intent), new SendException(intent.getStringExtra("error")));
        }
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    protected Intent getStartCommandIntent(Intent intent) {
        return C15852al.m8181a().f56340c.poll();
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
            handleMessageIntent(intent);
        } else if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
            onNewToken(intent.getStringExtra("token"));
        } else {
            String valueOf = String.valueOf(intent.getAction());
            if (valueOf.length() != 0) {
                "Unknown intent action: ".concat(valueOf);
            } else {
                new String("Unknown intent action: ");
            }
        }
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onNewToken(String str) {
    }

    public void onSendError(String str, Exception exc) {
    }
}
