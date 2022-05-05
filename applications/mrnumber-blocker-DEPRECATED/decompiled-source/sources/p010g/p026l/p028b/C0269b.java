package p010g.p026l.p028b;

import java.util.ArrayList;
import java.util.List;
import p010g.p026l.p030d.C0286f;
/* renamed from: g.l.b.b */
/* loaded from: classes2-dex2jar.jar:g/l/b/b.class */
class C0269b {
    /* renamed from: a */
    static String m506a(String str) {
        if (C0286f.m477d(str)) {
            return "Zendesk";
        }
        String str2 = str;
        if (str.length() > 23) {
            str2 = str.substring(0, 23);
        }
        return str2;
    }

    /* renamed from: b */
    static char m505b(int i) {
        if (i == 2) {
            return 'V';
        }
        if (i == 3) {
            return 'D';
        }
        if (i == 5) {
            return 'W';
        }
        if (i != 6) {
            return i != 7 ? 'I' : 'A';
        }
        return 'E';
    }

    /* renamed from: c */
    static List<String> m504c(String str, int i) {
        int min;
        ArrayList arrayList = new ArrayList();
        if (i < 1) {
            if (!C0286f.m479b(str)) {
                arrayList.add("");
                return arrayList;
            }
            arrayList.add(str);
            return arrayList;
        } else if (!C0286f.m479b(str)) {
            arrayList.add("");
            return arrayList;
        } else if (str.length() < i) {
            arrayList.add(str);
            return arrayList;
        } else {
            int i2 = 0;
            int length = str.length();
            while (i2 < length) {
                int indexOf = str.indexOf(C0286f.f843b, i2);
                if (indexOf == -1) {
                    indexOf = length;
                }
                while (true) {
                    min = Math.min(indexOf, i2 + i);
                    arrayList.add(str.substring(i2, min));
                    if (min >= indexOf) {
                        break;
                    }
                    i2 = min;
                }
                i2 = min + 1;
            }
            return arrayList;
        }
    }
}
