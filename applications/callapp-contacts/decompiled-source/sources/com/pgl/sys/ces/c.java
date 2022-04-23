package com.pgl.sys.ces;

import android.content.Context;
import com.pgl.sys.ces.a.a;
import java.security.MessageDigest;
import java.util.Calendar;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/c.class */
public final class c {
    public static String a() {
        try {
            Context applicationContext = b.a().f34961b != null ? b.a().f34961b : a.a().getApplicationContext();
            return com.pgl.a.b.a.a(MessageDigest.getInstance("SHA1").digest(applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 64).signatures[0].toByteArray())).toUpperCase();
        } catch (Throwable th) {
            return "0000000000000000000000000000000000000000";
        }
    }

    public static String a(String str) {
        String str2;
        int timeInMillis = (int) (Calendar.getInstance().getTimeInMillis() / 1000);
        b.a();
        String b2 = b.b();
        String c2 = b.c();
        try {
            str2 = com.pgl.a.b.a.a((byte[]) a.meta(601, null, (str + "_" + b2 + "_" + c2 + "_" + timeInMillis).getBytes()));
        } catch (Throwable th) {
            str2 = "";
        }
        return str2;
    }
}
