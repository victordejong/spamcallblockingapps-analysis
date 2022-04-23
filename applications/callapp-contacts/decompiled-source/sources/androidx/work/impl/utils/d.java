package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6178a = k.a("PackageManagerHelper");

    private d() {
    }

    public static void a(Context context, Class<?> cls, boolean z) {
        String str = "enabled";
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            k.a();
            String.format("%s %s", cls.getName(), z ? "enabled" : "disabled");
        } catch (Exception e) {
            k.a();
            String name = cls.getName();
            if (!z) {
                str = "disabled";
            }
            String.format("%s could not be %s", name, str);
        }
    }
}
