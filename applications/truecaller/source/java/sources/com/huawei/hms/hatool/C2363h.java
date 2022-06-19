package com.huawei.hms.hatool;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/h.class */
public class C2363h {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0066, code lost:
        if (r4.equalsIgnoreCase("CDMA2000") != false) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m37690a(int r3, java.lang.String r4) {
        /*
            r0 = r3
            switch(r0) {
                case 1: goto L72;
                case 2: goto L72;
                case 3: goto L78;
                case 4: goto L72;
                case 5: goto L78;
                case 6: goto L78;
                case 7: goto L72;
                case 8: goto L78;
                case 9: goto L78;
                case 10: goto L78;
                case 11: goto L72;
                case 12: goto L78;
                case 13: goto L6c;
                case 14: goto L78;
                case 15: goto L78;
                default: goto L4c;
            }
        L4c:
            r0 = r4
            java.lang.String r1 = "TD-SCDMA"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L78
            r0 = r4
            java.lang.String r1 = "WCDMA"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L78
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r1 = "CDMA2000"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L7b
            goto L78
        L6c:
            java.lang.String r0 = "4G"
            r5 = r0
            goto L7b
        L72:
            java.lang.String r0 = "2G"
            r5 = r0
            goto L7b
        L78:
            java.lang.String r0 = "3G"
            r5 = r0
        L7b:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hatool.C2363h.m37690a(int, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m37689a(Context context) {
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            C2398y.m37469f("hmsSdk", "not have network state phone permission!");
            return "";
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        String str = "";
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            str = "";
            if (activeNetworkInfo != null) {
                str = "";
                if (activeNetworkInfo.isConnected()) {
                    if (activeNetworkInfo.getType() == 1) {
                        str = "WIFI";
                    } else if (activeNetworkInfo.getType() == 0) {
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        C2398y.m37473c("hmsSdk", "Network getSubtypeName : " + subtypeName);
                        str = m37690a(activeNetworkInfo.getSubtype(), subtypeName);
                    } else if (activeNetworkInfo.getType() == 16) {
                        C2398y.m37469f("hmsSdk", "type name = COMPANION_PROXY");
                        str = "COMPANION_PROXY";
                    } else if (activeNetworkInfo.getType() == 9) {
                        C2398y.m37473c("hmsSdk", "type name = ETHERNET");
                        str = "ETHERNET";
                    } else {
                        StringBuilder m8728C = C22128a.m8728C("type name = ");
                        m8728C.append(activeNetworkInfo.getType());
                        C2398y.m37473c("hmsSdk", m8728C.toString());
                        str = "OTHER_NETWORK_TYPE";
                    }
                }
            }
        }
        return str;
    }
}
