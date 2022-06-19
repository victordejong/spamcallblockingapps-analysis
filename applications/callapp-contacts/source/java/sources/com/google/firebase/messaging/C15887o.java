package com.google.firebase.messaging;

import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.google.firebase.messaging.o */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/o.class */
final class C15887o {
    /* renamed from: a */
    public static ExecutorService m8118a() {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC12095a("Firebase-Messaging-Network-Io"));
    }
}
