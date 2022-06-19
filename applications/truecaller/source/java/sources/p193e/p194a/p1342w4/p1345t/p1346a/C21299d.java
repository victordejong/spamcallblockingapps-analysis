package p193e.p194a.p1342w4.p1345t.p1346a;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p432b4.p433a.AbstractC8640d;
import p193e.p194a.p432b4.p433a.C8638c;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.w4.t.a.d */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/a/d.class */
public class C21299d {

    /* renamed from: a */
    public static final int[] f59663a;

    /* renamed from: b */
    public static C8638c f59664b;

    static {
        int[] iArr = new int[128];
        f59663a = iArr;
        iArr[63] = 10;
        iArr[33] = 11;
        iArr[45] = 12;
        iArr[95] = 13;
        iArr[64] = 14;
        iArr[39] = 15;
        iArr[59] = 16;
        iArr[46] = 17;
        iArr[58] = 18;
        iArr[44] = 19;
    }

    /* renamed from: a */
    public static C8638c m9931a() {
        if (f59664b == null) {
            String m18638m = C15571h.m18638m();
            String str = m18638m;
            if (TextUtils.equals(m18638m, "auto")) {
                str = C8502h.f26287b.getLanguage();
            }
            m9929c(str);
        }
        return f59664b;
    }

    /* renamed from: b */
    public static List<Integer> m9930b(String str) {
        int i;
        ArrayList arrayList = new ArrayList(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '*') {
                i = -2;
            } else if (charAt == '#') {
                i = -3;
            } else {
                char m28166d = m9931a().m28166d(charAt);
                if (m28166d != charAt) {
                    i = Character.getNumericValue(m28166d);
                    if (i < 0) {
                        i = Integer.MAX_VALUE;
                    }
                } else {
                    i = Integer.MAX_VALUE;
                    if (Character.isDigit(charAt)) {
                        i = Character.getNumericValue(charAt);
                    }
                }
            }
            if (i <= 9) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static void m9929c(String str) {
        AbstractC8640d mo28542U = AbstractApplicationC8442a.m28551L().mo28542U();
        if (str == null) {
            f59664b = mo28542U.mo28163b();
        } else {
            f59664b = mo28542U.mo28164a(str);
        }
    }
}
