package com.huawei.hms.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/NetWorkUtil.class */
public abstract class NetWorkUtil {

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/NetWorkUtil$NetType.class */
    public static final class NetType {
        public static final int NET = -2;
        public static final int TYPE_2G = 2;
        public static final int TYPE_3G = 3;
        public static final int TYPE_4G = 4;
        public static final int TYPE_5G = 5;
        public static final int TYPE_ETHERNET = 9;
        public static final int TYPE_NEED_INIT = -1;
        public static final int TYPE_OTHER = 6;
        public static final int TYPE_UNKNOWN = 0;
        public static final int TYPE_WIFI = 1;
        public static final int WAP = -3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
        if (9 == r3.getType()) goto L23;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m37138a(android.net.NetworkInfo r3) {
        /*
            r0 = 9
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L9e
            r0 = r3
            boolean r0 = r0.isConnected()
            if (r0 == 0) goto L9e
            r0 = r3
            int r0 = r0.getType()
            r1 = 1
            if (r0 != r1) goto L1b
            r0 = 1
            r4 = r0
            goto La0
        L1b:
            r0 = r3
            int r0 = r0.getType()
            if (r0 != 0) goto L92
            r0 = r3
            int r0 = r0.getSubtype()
            r4 = r0
            r0 = r4
            r1 = 20
            if (r0 == r1) goto L8d
            r0 = r4
            switch(r0) {
                case 1: goto L88;
                case 2: goto L88;
                case 3: goto L83;
                case 4: goto L88;
                case 5: goto L83;
                case 6: goto L83;
                case 7: goto L83;
                case 8: goto L83;
                case 9: goto L83;
                case 10: goto L83;
                case 11: goto L83;
                case 12: goto L83;
                case 13: goto L7e;
                case 14: goto L7e;
                case 15: goto L83;
                default: goto L78;
            }
        L78:
            r0 = 6
            r4 = r0
            goto La0
        L7e:
            r0 = 4
            r4 = r0
            goto La0
        L83:
            r0 = 3
            r4 = r0
            goto La0
        L88:
            r0 = 2
            r4 = r0
            goto La0
        L8d:
            r0 = 5
            r4 = r0
            goto La0
        L92:
            r0 = 9
            r1 = r3
            int r1 = r1.getType()
            if (r0 != r1) goto L9e
            goto La0
        L9e:
            r0 = 0
            r4 = r0
        La0:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.utils.NetWorkUtil.m37138a(android.net.NetworkInfo):int");
    }

    /* renamed from: a */
    public static NetworkInfo m37139a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
    }

    public static int getNetworkType(Context context) {
        return m37138a(m37139a(context));
    }
}
