package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingService.class */
public class FirebaseMessagingService extends EnhancedIntentService {

    /* renamed from: i */
    private static final Queue<String> f39722i = new ArrayDeque(10);

    /* renamed from: j */
    private boolean m1358j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue<String> queue = f39722i;
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
            Log.d("FirebaseMessaging", valueOf.length() != 0 ? "Received duplicate message: ".concat(valueOf) : new String("Received duplicate message: "));
            return true;
        }
    }

    /* renamed from: k */
    private void m1357k(Intent intent) {
        Bundle extras = intent.getExtras();
        Bundle bundle = extras;
        if (extras == null) {
            bundle = new Bundle();
        }
        bundle.remove("androidx.content.wakelockid");
        if (C9283g0.m1237t(bundle)) {
            C9283g0 c9283g0 = new C9283g0(bundle);
            ExecutorService m1189d = C9300o.m1189d();
            try {
                if (new C9274c(this, c9283g0, m1189d).m1302a()) {
                    return;
                }
                m1189d.shutdown();
                if (C9279e0.m1291B(intent)) {
                    C9279e0.m1270u(intent);
                }
            } finally {
                m1189d.shutdown();
            }
        }
        mo1353o(new RemoteMessage(bundle));
    }

    /* renamed from: l */
    private String m1356l(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    /* renamed from: m */
    private void m1355m(Intent intent) {
        if (!m1358j(intent.getStringExtra("google.message_id"))) {
            m1349s(intent);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: s */
    private void m1349s(Intent intent) {
        boolean z;
        String stringExtra = intent.getStringExtra("message_type");
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
            C9279e0.m1268w(intent);
            m1357k(intent);
        } else if (z) {
            m1354n();
        } else if (z) {
            m1352p(intent.getStringExtra("google.message_id"));
        } else if (!z) {
            Log.w("FirebaseMessaging", str.length() != 0 ? "Received message with unknown type: ".concat(str) : new String("Received message with unknown type: "));
        } else {
            m1350r(m1356l(intent), new SendException(intent.getStringExtra("error")));
        }
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    /* renamed from: c */
    protected Intent mo1360c(Intent intent) {
        return C9292k0.m1224b().m1223c();
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    /* renamed from: d */
    public void mo1359d(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            m1355m(intent);
        } else if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
            mo1351q(intent.getStringExtra("token"));
        } else {
            String valueOf = String.valueOf(intent.getAction());
            Log.d("FirebaseMessaging", valueOf.length() != 0 ? "Unknown intent action: ".concat(valueOf) : new String("Unknown intent action: "));
        }
    }

    /* renamed from: n */
    public void m1354n() {
    }

    /* renamed from: o */
    public void mo1353o(RemoteMessage remoteMessage) {
    }

    /* renamed from: p */
    public void m1352p(String str) {
    }

    /* renamed from: q */
    public void mo1351q(String str) {
    }

    /* renamed from: r */
    public void m1350r(String str, Exception exc) {
    }
}
