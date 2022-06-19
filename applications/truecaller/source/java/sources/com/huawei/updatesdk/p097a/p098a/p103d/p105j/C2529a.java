package com.huawei.updatesdk.p097a.p098a.p103d.p105j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
/* renamed from: com.huawei.updatesdk.a.a.d.j.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/j/a.class */
public class C2529a {

    /* renamed from: a */
    private static ConnectivityManager f8211a;

    /* renamed from: a */
    public static int m36761a(NetworkInfo networkInfo) {
        int i;
        if (networkInfo != null && networkInfo.isConnected()) {
            int type = networkInfo.getType();
            i = 1;
            if (1 != type) {
                if (13 != type) {
                    if (type == 0) {
                        switch (networkInfo.getSubtype()) {
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                            case 11:
                                i = 2;
                                break;
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                                i = 3;
                                break;
                            case 13:
                                i = 4;
                                break;
                        }
                    }
                } else {
                    i = 1;
                }
            }
            return i;
        }
        i = 0;
        return i;
    }

    /* renamed from: a */
    private static NetworkInfo m36762a(Context context) {
        ConnectivityManager m36760b = m36760b(context);
        return m36760b != null ? m36760b.getActiveNetworkInfo() : null;
    }

    /* renamed from: b */
    private static ConnectivityManager m36760b(Context context) {
        if (f8211a == null) {
            f8211a = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        }
        return f8211a;
    }

    /* renamed from: c */
    public static int m36759c(Context context) {
        return m36761a(m36762a(context));
    }

    /* renamed from: d */
    public static boolean m36758d(Context context) {
        boolean z = false;
        if (context != null) {
            ConnectivityManager m36760b = m36760b(context);
            z = false;
            if (m36760b != null) {
                NetworkInfo activeNetworkInfo = m36760b.getActiveNetworkInfo();
                boolean z2 = false;
                if (activeNetworkInfo != null) {
                    z2 = false;
                    if (activeNetworkInfo.isConnected()) {
                        z2 = true;
                    }
                }
                z = z2;
                if (!z2) {
                    Network activeNetwork = m36760b.getActiveNetwork();
                    z = z2;
                    if (activeNetwork != null) {
                        NetworkCapabilities networkCapabilities = m36760b.getNetworkCapabilities(activeNetwork);
                        z = z2;
                        if (networkCapabilities != null) {
                            return networkCapabilities.hasCapability(16);
                        }
                    }
                }
            }
        }
        return z;
    }
}
