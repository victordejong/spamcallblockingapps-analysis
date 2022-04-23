package androidx.core.content;

import android.content.Context;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.AppOpsManagerCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/core/content/PermissionChecker.class */
public final class PermissionChecker {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/content/PermissionChecker$PermissionResult.class */
    public @interface PermissionResult {
    }

    private PermissionChecker() {
    }

    /* renamed from: a */
    public static int m19658a(@NonNull Context context, @NonNull String str, int i, int i2, @Nullable String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String b = AppOpsManagerCompat.m19835b(str);
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
        return AppOpsManagerCompat.m19836a(context, b, str3) != 0 ? -2 : 0;
    }

    /* renamed from: b */
    public static int m19657b(@NonNull Context context, @NonNull String str) {
        return m19658a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
