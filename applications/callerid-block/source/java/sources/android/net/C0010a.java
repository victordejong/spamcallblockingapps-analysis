package android.net;

import android.os.Build;
/* renamed from: android.net.a */
/* loaded from: classes-dex2jar.jar:android/net/a.class */
public class C0010a {
    /* renamed from: a */
    public static String m15199a(String str) {
        if ("eng".equals(Build.TYPE)) {
            return str;
        }
        if (str == null) {
            return "null";
        }
        return str.substring(0, Math.min(6, str.length())) + "...";
    }
}
