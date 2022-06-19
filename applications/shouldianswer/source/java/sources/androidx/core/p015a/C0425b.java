package androidx.core.p015a;

import android.content.Context;
import android.os.Binder;
import android.os.Process;
import androidx.core.app.C0437c;
/* renamed from: androidx.core.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/a/b.class */
public final class C0425b {
    /* renamed from: a */
    public static int m6684a(Context context, String str) {
        return m6683a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    /* renamed from: a */
    public static int m6683a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String m6660a = C0437c.m6660a(str);
        if (m6660a == null) {
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
        return C0437c.m6661a(context, m6660a, str3) != 0 ? -2 : 0;
    }

    /* renamed from: b */
    public static int m6682b(Context context, String str) {
        return m6683a(context, str, Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null);
    }
}
