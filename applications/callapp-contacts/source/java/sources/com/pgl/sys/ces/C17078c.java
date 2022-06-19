package com.pgl.sys.ces;

import android.content.Context;
import com.pgl.p474a.p476b.C17052a;
import com.pgl.sys.ces.p480a.C17065a;
import java.security.MessageDigest;
import java.util.Calendar;
/* renamed from: com.pgl.sys.ces.c */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/c.class */
public final class C17078c {
    /* renamed from: a */
    public static String m5895a() {
        try {
            Context applicationContext = C17072b.m5917a().f60603b != null ? C17072b.m5917a().f60603b : C17065a.m5941a().getApplicationContext();
            return C17052a.m5954a(MessageDigest.getInstance("SHA1").digest(applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 64).signatures[0].toByteArray())).toUpperCase();
        } catch (Throwable th) {
            return "0000000000000000000000000000000000000000";
        }
    }

    /* renamed from: a */
    public static String m5894a(String str) {
        String str2;
        int timeInMillis = (int) (Calendar.getInstance().getTimeInMillis() / 1000);
        C17072b.m5917a();
        String m5910b = C17072b.m5910b();
        String m5909c = C17072b.m5909c();
        try {
            str2 = C17052a.m5954a((byte[]) C17064a.meta(601, null, (str + "_" + m5910b + "_" + m5909c + "_" + timeInMillis).getBytes()));
        } catch (Throwable th) {
            str2 = "";
        }
        return str2;
    }
}
