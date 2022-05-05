package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.k0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/k0.class */
public class C12179k0 {

    /* renamed from: a */
    public static Boolean f27332a;

    /* renamed from: a */
    public static boolean m6911a() {
        if (f27332a == null) {
            Context a = AbstractC11516a.m9413n().mo9412a();
            boolean z = false;
            if (!"Nexus 10".equals(Build.MODEL)) {
                UserHandle myUserHandle = Process.myUserHandle();
                UserManager userManager = (UserManager) a.getSystemService("user");
                z = false;
                if (userManager != null) {
                    z = false;
                    if (0 != userManager.getSerialNumberForUser(myUserHandle)) {
                        z = true;
                    }
                }
            }
            f27332a = Boolean.valueOf(z);
        }
        return f27332a.booleanValue();
    }
}
