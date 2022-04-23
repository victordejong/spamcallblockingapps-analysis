package p012b.p042i.p044i;

import android.content.Context;
import android.os.Binder;
import android.os.Process;
import p012b.p042i.p043h.C0848c;
/* renamed from: b.i.i.b */
/* loaded from: classes-dex2jar.jar:b/i/i/b.class */
public final class C0871b {
    /* renamed from: a */
    public static int m35683a(Context context, String str) {
        return m35682a(context, str, Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null);
    }

    /* renamed from: a */
    public static int m35682a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String a = C0848c.m35784a(str);
        if (a == null) {
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
        return C0848c.m35785a(context, a, str3) != 0 ? -2 : 0;
    }

    /* renamed from: b */
    public static int m35681b(Context context, String str) {
        return m35682a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
