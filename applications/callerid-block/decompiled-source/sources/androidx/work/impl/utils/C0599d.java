package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.AbstractC0555f;
/* renamed from: androidx.work.impl.utils.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/d.class */
public class C0599d {

    /* renamed from: a */
    private static final String f3120a = AbstractC0555f.m11738f("PackageManagerHelper");

    /* renamed from: a */
    public static void m11609a(Context context, Class<?> cls, boolean z) {
        String str = "enabled";
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC0555f.m11741c().m11743a(f3120a, String.format("%s %s", cls.getName(), z ? "enabled" : "disabled"), new Throwable[0]);
        } catch (Exception e) {
            AbstractC0555f c = AbstractC0555f.m11741c();
            String str2 = f3120a;
            String name = cls.getName();
            if (!z) {
                str = "disabled";
            }
            c.m11743a(str2, String.format("%s could not be %s", name, str), e);
        }
    }
}
