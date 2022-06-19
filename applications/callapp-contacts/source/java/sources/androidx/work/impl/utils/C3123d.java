package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.AbstractC3145k;
/* renamed from: androidx.work.impl.utils.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/d.class */
public final class C3123d {

    /* renamed from: a */
    private static final String f11451a = AbstractC3145k.m39275a("PackageManagerHelper");

    private C3123d() {
    }

    /* renamed from: a */
    public static void m39295a(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC3145k.m39277a();
            String.format("%s %s", cls.getName(), z ? "enabled" : "disabled");
        } catch (Exception e) {
            AbstractC3145k.m39277a();
            String.format("%s could not be %s", cls.getName(), z ? "enabled" : "disabled");
        }
    }
}
