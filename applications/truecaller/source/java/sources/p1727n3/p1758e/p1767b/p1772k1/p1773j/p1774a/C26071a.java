package p1727n3.p1758e.p1767b.p1772k1.p1773j.p1774a;

import android.os.Build;
import java.util.ArrayList;
import java.util.Locale;
import p1727n3.p1758e.p1767b.p1768j1.C25959g1;
/* renamed from: n3.e.b.k1.j.a.a */
/* loaded from: classes-dex2jar.jar:n3/e/b/k1/j/a/a.class */
public class C26071a {

    /* renamed from: a */
    public static final C25959g1 f72748a;

    static {
        ArrayList arrayList = new ArrayList();
        if (C26073c.f72749a.contains(Build.DEVICE.toLowerCase(Locale.getDefault()))) {
            arrayList.add(new C26073c());
        }
        String str = Build.BRAND;
        boolean z = true;
        if (!("HUAWEI".equalsIgnoreCase(str) && "SNE-LX1".equalsIgnoreCase(Build.MODEL))) {
            z = "HONOR".equalsIgnoreCase(str) && "STK-LX1".equalsIgnoreCase(Build.MODEL);
        }
        if (z) {
            arrayList.add(new C26072b());
        }
        f72748a = new C25959g1(arrayList);
    }
}
