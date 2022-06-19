package p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a;

import android.os.Build;
import java.util.ArrayList;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25954f1;
import p1727n3.p1758e.p1767b.p1768j1.C25959g1;
/* renamed from: n3.e.d.b0.a.a.a */
/* loaded from: classes-dex2jar.jar:n3/e/d/b0/a/a/a.class */
public class C26113a {

    /* renamed from: a */
    public static final C25959g1 f72839a;

    static {
        ArrayList arrayList = new ArrayList();
        String str = Build.DEVICE;
        if (("ON5XELTE".equals(str.toUpperCase()) && Build.VERSION.SDK_INT >= 26) || "A3Y17LTE".equals(str.toUpperCase())) {
            arrayList.add(new C26114b());
        }
        boolean z = false;
        if ("SAMSUNG".equals(Build.MANUFACTURER.toUpperCase())) {
            z = false;
            if ("F2Q".equals(str.toUpperCase())) {
                z = true;
            }
        }
        if (z) {
            arrayList.add(new C26115c());
        }
        if (C26116d.m2704a()) {
            arrayList.add(new C26116d());
        }
        f72839a = new C25959g1(arrayList);
    }

    /* renamed from: a */
    public static <T extends AbstractC25954f1> T m2705a(Class<T> cls) {
        return (T) f72839a.m2863a(cls);
    }
}
