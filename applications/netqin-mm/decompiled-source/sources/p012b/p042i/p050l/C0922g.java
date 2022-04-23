package p012b.p042i.p050l;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: b.i.l.g */
/* loaded from: classes-dex2jar.jar:b/i/l/g.class */
public class C0922g {
    /* renamed from: a */
    public static boolean m35494a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
