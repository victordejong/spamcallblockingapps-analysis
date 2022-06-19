package androidx.core.content;

import android.content.Context;
import android.os.Process;
import androidx.core.app.C0560d;
/* renamed from: androidx.core.content.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c.class */
public final class C0594c {
    /* renamed from: a */
    public static int m33325a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String m33462b = C0560d.m33462b(str);
        if (m33462b == null) {
            return 0;
        }
        String str3 = str2;
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str3 = packagesForUid[0];
        }
        return C0560d.m33463a(context, m33462b, str3) != 0 ? -2 : 0;
    }

    /* renamed from: b */
    public static int m33324b(Context context, String str) {
        return m33325a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
