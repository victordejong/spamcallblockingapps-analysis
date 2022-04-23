package androidx.core.content;

import android.content.Context;
import android.os.Process;
import androidx.core.app.C0246d;
/* renamed from: androidx.core.content.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/b.class */
public final class C0266b {
    /* renamed from: a */
    public static int m13544a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String b = C0246d.m13654b(str);
        if (b == null) {
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
        return C0246d.m13655a(context, b, str3) != 0 ? -2 : 0;
    }

    /* renamed from: b */
    public static int m13543b(Context context, String str) {
        return m13544a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
