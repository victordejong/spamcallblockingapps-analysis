package p193e.p194a.p1273u4;

import s1.f0.r;
import s1.f0.v;
import s1.k;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.u4.n */
/* loaded from: classes12-dex2jar.jar:e/a/u4/n.class */
public final class C20630n implements AbstractC20629m {
    @Override // p193e.p194a.p1273u4.AbstractC20629m
    /* renamed from: a */
    public k<String, String> mo10905a(String str) {
        String str2;
        l.e(str, "barcodeValue");
        if (h.j(str)) {
            str2 = str;
        } else {
            int indexOf = str.indexOf("|appName:");
            str2 = indexOf == -1 ? "" : str.substring(9 + indexOf);
        }
        String str3 = str;
        if (!h.j(str)) {
            int indexOf2 = str.indexOf("|appName:");
            str3 = indexOf2 == -1 ? str : str.substring(0, indexOf2);
        }
        return new k<>(str3, str2);
    }

    @Override // p193e.p194a.p1273u4.AbstractC20629m
    /* renamed from: b */
    public boolean mo10904b(String str) {
        int i;
        l.e(str, "barcodeValue");
        boolean z = false;
        if (r.y(str, "si", false, 2)) {
            if (!h.j(str) && !h.j("|")) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int indexOf = str.toString().indexOf("|".toString(), i2);
                    i = i3;
                    if (indexOf == -1) {
                        break;
                    }
                    i3++;
                    i2 = indexOf + "|".length();
                }
            } else {
                i = 0;
            }
            z = false;
            if (i == 2) {
                z = false;
                if (v.B(str, "|appName:", false, 2)) {
                    z = true;
                }
            }
        }
        return z;
    }
}
