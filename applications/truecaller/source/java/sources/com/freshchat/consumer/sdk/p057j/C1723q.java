package com.freshchat.consumer.sdk.p057j;

import android.os.Build;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.q */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/q.class */
public class C1723q {
    public static final String TAG = "com.freshchat.consumer.sdk.j.q";

    /* renamed from: a */
    public static void m39823a(Throwable th) {
        String message = th != null ? th.getMessage() : "";
        StringBuilder m8728C = C22128a.m8728C("Exception on ");
        m8728C.append(Build.MANUFACTURER);
        m8728C.append(StringConstant.SPACE);
        m8728C.append(Build.MODEL);
        m8728C.append(" Android API ");
        m8728C.append(Build.VERSION.RELEASE);
        m8728C.append(" (");
        m8728C.append(Build.VERSION.SDK_INT);
        m8728C.append(") >>>>> ");
        m8728C.append(message);
        C1613ai.m40282e("FRESHCHAT", m8728C.toString(), th);
    }
}
