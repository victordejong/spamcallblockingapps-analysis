package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
/* renamed from: h.i.c.n.d.h.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/a0.class */
public class C9532a0 {

    /* renamed from: a */
    public String f21704a;

    /* renamed from: b */
    public static String m14969b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        String str = installerPackageName;
        if (installerPackageName == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public String m14970a(Context context) {
        String str;
        synchronized (this) {
            if (this.f21704a == null) {
                this.f21704a = m14969b(context);
            }
            str = "".equals(this.f21704a) ? null : this.f21704a;
        }
        return str;
    }
}
