package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.q0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/q0.class */
public class C2383q0 {
    /* renamed from: a */
    public static boolean m37545a(Context context) {
        return System.currentTimeMillis() - C2362g0.m37697a(context, "Privacy_MY", "flashKeyTime", -1L) > 43200000;
    }

    /* renamed from: a */
    public static boolean m37544a(Context context, String str) {
        if (context == null) {
            return true;
        }
        if (context.checkSelfPermission(str) == 0) {
            return false;
        }
        C2398y.m37469f("hmsSdk", "not have read phone permission!");
        return true;
    }

    /* renamed from: a */
    public static boolean m37543a(Context context, String str, int i) {
        long length = new File(context.getFilesDir(), C22128a.m8543z2("../shared_prefs/", C2362g0.m37691c(context, str) + ".xml")).length();
        if (length > i) {
            C2398y.m37473c("hmsSdk", String.format("reach local file limited size - file len: %d limitedSize: %d", Long.valueOf(length), Integer.valueOf(i)));
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m37542a(String str, long j, long j2) {
        boolean z = true;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            if (j - Long.parseLong(str) <= j2) {
                z = false;
            }
            return z;
        } catch (NumberFormatException e) {
            C2398y.m37469f("hmsSdk", "isTimeExpired(): Data type conversion error : number format !");
            return true;
        }
    }
}
