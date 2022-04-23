package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p206b.AbstractC6497f;
import p081h.p203i.p204a.p206b.AbstractC6498g;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p364t.C9897p0;
import p081h.p203i.p325c.p364t.C9916x;
import p081h.p203i.p325c.p372x.C10000s;
import p081h.p203i.p325c.p372x.C9981c;
import p081h.p203i.p325c.p372x.C9985g;
import p081h.p203i.p325c.p372x.C9990l;
import p081h.p203i.p325c.p372x.C9997p;
import p081h.p203i.p325c.p372x.C9998q;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingService.class */
public class FirebaseMessagingService extends EnhancedIntentService {
    public static final String ACTION_DIRECT_BOOT_REMOTE_INTENT = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT";
    public static final Queue<String> recentlyReceivedMessageIds = new ArrayDeque(10);

    private AbstractC9143h<Void> ackMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return C9148k.m15999a((Object) null);
        }
        Bundle bundle = new Bundle();
        bundle.putString("google.message_id", str);
        return C9916x.m13966a(this).m13967a(2, bundle);
    }

    private boolean alreadyReceivedMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!recentlyReceivedMessageIds.contains(str)) {
            if (recentlyReceivedMessageIds.size() >= 10) {
                recentlyReceivedMessageIds.remove();
            }
            recentlyReceivedMessageIds.add(str);
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
        if (C9998q.m13714a(bundle)) {
            C9998q qVar = new C9998q(bundle);
            ExecutorService b = C9985g.m13759b();
            try {
                if (!new C9981c(this, qVar, b).m13766a()) {
                    b.shutdown();
                    if (C9997p.m13717t(intent)) {
                        C9997p.m13721p(intent);
                    }
                } else {
                    return;
                }
            } finally {
                b.shutdown();
            }
        }
        onMessageReceived(new RemoteMessage(bundle));
    }

    private String getMessageId(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        String str = stringExtra;
        if (stringExtra == null) {
            str = intent.getStringExtra("message_id");
        }
        return str;
    }

    private void handleMessageIntent(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        AbstractC9143h<Void> ackMessage = ackMessage(stringExtra);
        if (!alreadyReceivedMessage(stringExtra)) {
            passMessageIntentToSdk(intent);
        }
        try {
            C9148k.m16002a(ackMessage, getAckTimeoutMillis(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            sb.toString();
        }
    }

    private void handleNotificationOpen(Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (C9997p.m13717t(intent)) {
            C9997p.m13720q(intent);
        }
    }

    private void passMessageIntentToSdk(Intent intent) {
        String stringExtra = intent.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
        String str = stringExtra;
        if (stringExtra == null) {
            str = "gcm";
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2062414158:
                if (str.equals("deleted_messages")) {
                    c = 1;
                    break;
                }
                break;
            case 102161:
                if (str.equals("gcm")) {
                    c = 0;
                    break;
                }
                break;
            case 814694033:
                if (str.equals("send_error")) {
                    c = 3;
                    break;
                }
                break;
            case 814800675:
                if (str.equals("send_event")) {
                    c = 2;
                    break;
                }
                break;
        }
        if (c == 0) {
            if (C9997p.m13717t(intent)) {
                C9997p.m13742a(intent, (AbstractC6497f<String>) null);
            }
            if (C9997p.m13718s(intent)) {
                AbstractC6498g c2 = FirebaseMessaging.m31061c();
                if (c2 != null) {
                    C9997p.m13742a(intent, c2.mo22287a("FCM_CLIENT_EVENT_LOGGING", String.class, C6493b.m22467a(AdType.STATIC_NATIVE), C9990l.f22593a));
                } else {
                    Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
                }
            }
            dispatchMessage(intent);
        } else if (c == 1) {
            onDeletedMessages();
        } else if (c == 2) {
            onMessageSent(intent.getStringExtra("google.message_id"));
        } else if (c != 3) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Received message with unknown type: ".concat(valueOf);
            } else {
                new String("Received message with unknown type: ");
            }
        } else {
            onSendError(getMessageId(intent), new C10000s(intent.getStringExtra("error")));
        }
    }

    @VisibleForTesting
    public long getAckTimeoutMillis() {
        return TimeUnit.SECONDS.toMillis(1L);
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public Intent getStartCommandIntent(Intent intent) {
        return C9897p0.m14022b().m14027a();
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
            handleMessageIntent(intent);
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(action)) {
            if (C9997p.m13717t(intent)) {
                C9997p.m13722o(intent);
            }
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

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public boolean handleIntentOnMainThread(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        handleNotificationOpen(intent);
        return true;
    }

    @WorkerThread
    public void onDeletedMessages() {
    }

    @WorkerThread
    public void onMessageReceived(@NonNull RemoteMessage remoteMessage) {
    }

    @WorkerThread
    public void onMessageSent(@NonNull String str) {
    }

    @WorkerThread
    public void onNewToken(@NonNull String str) {
    }

    @WorkerThread
    public void onSendError(@NonNull String str, @NonNull Exception exc) {
    }
}
