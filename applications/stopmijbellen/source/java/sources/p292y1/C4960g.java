package p292y1;

import android.content.ComponentName;
import android.content.Context;
import p186o1.AbstractC3824h;
/* renamed from: y1.g */
/* loaded from: classes-dex2jar.jar:y1/g.class */
public class C4960g {

    /* renamed from: a */
    public static final String f15126a = AbstractC3824h.m1773e("PackageManagerHelper");

    /* renamed from: a */
    public static void m174a(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC3824h.m1774c().mo1772a(f15126a, String.format("%s %s", cls.getName(), z ? "enabled" : "disabled"), new Throwable[0]);
        } catch (Exception e) {
            AbstractC3824h.m1774c().mo1772a(f15126a, String.format("%s could not be %s", cls.getName(), z ? "enabled" : "disabled"), e);
        }
    }
}
