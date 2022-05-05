package android.support.v4.content;

import android.content.Context;
import android.os.Process;
/* loaded from: classes-dex2jar.jar:android/support/v4/content/a.class */
public class a {
    public static int a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }
}
