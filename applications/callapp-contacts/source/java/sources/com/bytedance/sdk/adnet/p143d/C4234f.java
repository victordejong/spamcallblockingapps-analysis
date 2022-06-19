package com.bytedance.sdk.adnet.p143d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
/* renamed from: com.bytedance.sdk.adnet.d.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/f.class */
public class C4234f {
    /* renamed from: a */
    public static boolean m36080a(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (allNetworkInfo = connectivityManager.getAllNetworkInfo()) == null) {
                return false;
            }
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            Log.e("ignored", th.toString());
            return false;
        }
    }
}
