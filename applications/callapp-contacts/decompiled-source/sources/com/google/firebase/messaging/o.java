package com.google.firebase.messaging;

import com.google.android.gms.common.util.a.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/o.class */
final class o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService a() {
        return Executors.newSingleThreadExecutor(new a("Firebase-Messaging-Network-Io"));
    }
}
