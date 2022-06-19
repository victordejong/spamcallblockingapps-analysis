package p1727n3.p1834m0.p1835c0.p1845t;

import android.content.ComponentName;
import android.content.Context;
import p1727n3.p1834m0.AbstractC26839p;
/* renamed from: n3.m0.c0.t.h */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/h.class */
public class C26787h {

    /* renamed from: a */
    public static final String f74964a = AbstractC26839p.m1295e("PackageManagerHelper");

    /* renamed from: a */
    public static void m1330a(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC26839p.m1296c().mo1294a(f74964a, String.format("%s %s", cls.getName(), z ? "enabled" : "disabled"), new Throwable[0]);
        } catch (Exception e) {
            AbstractC26839p.m1296c().mo1294a(f74964a, String.format("%s could not be %s", cls.getName(), z ? "enabled" : "disabled"), e);
        }
    }
}
