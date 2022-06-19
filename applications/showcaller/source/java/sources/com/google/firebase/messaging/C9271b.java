package com.google.firebase.messaging;

import android.os.Bundle;
import java.util.concurrent.TimeUnit;
import p020b.p036e.C1489a;
/* renamed from: com.google.firebase.messaging.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/b.class */
public final class C9271b {

    /* renamed from: a */
    public static final long f39770a = TimeUnit.MINUTES.toMillis(3);

    /* renamed from: com.google.firebase.messaging.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/b$a.class */
    public static final class C9272a {
        /* renamed from: a */
        public static C1489a<String, String> m1303a(Bundle bundle) {
            C1489a<String, String> c1489a = new C1489a<>();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        c1489a.put(str, str2);
                    }
                }
            }
            return c1489a;
        }
    }
}
