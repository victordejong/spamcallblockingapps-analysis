package p081h.p203i.p204a.p224e.p259j.p266g;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: h.i.a.e.j.g.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/b.class */
public class C7550b {

    /* renamed from: a */
    public static volatile UserManager f17728a;

    /* renamed from: b */
    public static volatile boolean f17729b = !m20308a();

    /* renamed from: a */
    public static boolean m20308a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: a */
    public static boolean m20307a(Context context) {
        return m20308a() && !m20306b(context);
    }

    @TargetApi(24)
    /* renamed from: b */
    public static boolean m20306b(Context context) {
        boolean z = f17729b;
        boolean z2 = z;
        if (!z) {
            UserManager userManager = f17728a;
            UserManager userManager2 = userManager;
            if (userManager == null) {
                synchronized (C7550b.class) {
                    try {
                        UserManager userManager3 = f17728a;
                        userManager2 = userManager3;
                        if (userManager3 == null) {
                            userManager2 = (UserManager) context.getSystemService(UserManager.class);
                            f17728a = userManager2;
                            if (userManager2 == null) {
                                f17729b = true;
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            boolean isUserUnlocked = userManager2.isUserUnlocked();
            f17729b = isUserUnlocked;
            z2 = isUserUnlocked;
            if (isUserUnlocked) {
                f17728a = null;
                z2 = isUserUnlocked;
            }
        }
        return z2;
    }
}
