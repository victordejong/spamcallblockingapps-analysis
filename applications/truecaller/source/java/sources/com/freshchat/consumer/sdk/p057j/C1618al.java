package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: com.freshchat.consumer.sdk.j.al */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/al.class */
public class C1618al {
    /* renamed from: aS */
    public static boolean m40261aS(Context context) {
        if (context != null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        throw new IllegalArgumentException("isConnected() requires a valid context");
    }
}
