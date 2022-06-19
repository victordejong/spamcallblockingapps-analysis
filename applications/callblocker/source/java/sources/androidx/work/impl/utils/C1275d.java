package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.AbstractC1293l;
/* renamed from: androidx.work.impl.utils.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/d.class */
public class C1275d {

    /* renamed from: a */
    private static final String f4287a = AbstractC1293l.m17541a("PackageManagerHelper");

    /* renamed from: a */
    public static void m17569a(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC1293l.m17543a().mo17539b(f4287a, String.format("%s %s", cls.getName(), z ? "enabled" : "disabled"), new Throwable[0]);
        } catch (Exception e) {
            AbstractC1293l.m17543a().mo17539b(f4287a, String.format("%s could not be %s", cls.getName(), z ? "enabled" : "disabled"), e);
        }
    }
}
