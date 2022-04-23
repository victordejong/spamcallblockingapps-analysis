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
        if (ah.a(bundle)) {
            ah ahVar = new ah(bundle);
            ExecutorService a2 = o.a();
            try {
                if (!new c(this, ahVar, a2).a()) {
                    a2.shutdown();
                    if (ae.e(intent)) {
                        ae.d(intent);
                    }
                } else {
                    return;
                }
            } finally {
                a2.shutdown();
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
        char c2;
        String stringExtra = intent.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
        String str = stringExtra;
        if (stringExtra == null) {
            str = "gcm";
        }
        switch (str.hashCode()) {
            case -2062414158:
                if (str.equals("deleted_messages")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 102161:
                if (str.equals("gcm")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 814694033:
                if (str.equals("send_error")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 814800675:
                if (str.equals("send_event")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            ae.a(intent);
            dispatchMessage(intent);
        } else if (c2 == 1) {
            onDeletedMessages();
        } else if (c2 == 2) {
            onMessageSent(intent.getStringExtra("google.message_id"));
        } else if (c2 != 3) {
            Log.w("FirebaseMessaging", str.length() != 0 ? "Received message with unknown type: ".concat(str) : new String("Received message with unknown type: "));
        } else {
            onSendError(getMessageId(intent), new SendException(intent.getStringExtra("error")));
        }
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    protected Intent getStartCommandIntent(Intent intent) {
        return al.a().f32480c.poll();
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
