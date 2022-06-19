package androidx.core.p017a;

import android.content.Context;
import android.os.Process;
import androidx.core.app.C0466c;
/* renamed from: androidx.core.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/a/b.class */
public final class C0454b {
    /* renamed from: a */
    public static int m20828a(Context context, String str) {
        return m20827a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    /* renamed from: a */
    public static int m20827a(Context context, String str, int i, int i2, String str2) {
        int i3;
        if (context.checkPermission(str, i, i2) == -1) {
            i3 = -1;
        } else {
            String m20806a = C0466c.m20806a(str);
            if (m20806a == null) {
                i3 = 0;
            } else {
                String str3 = str2;
                if (str2 == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
                    i3 = -1;
                    if (packagesForUid != null) {
                        i3 = -1;
                        if (packagesForUid.length > 0) {
                            str3 = packagesForUid[0];
                        }
                    }
                }
                i3 = C0466c.m20807a(context, m20806a, str3) != 0 ? -2 : 0;
            }
        }
        return i3;
    }
}
