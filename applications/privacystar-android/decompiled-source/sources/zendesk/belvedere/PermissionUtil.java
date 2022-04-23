package zendesk.belvedere;

import android.content.Context;
import android.support.p001v4.content.ContextCompat;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/PermissionUtil.class */
class PermissionUtil {
    PermissionUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasPermissionInManifest(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null || strArr.length <= 0) {
                return false;
            }
            for (String str2 : strArr) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isPermissionGranted(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }
}
