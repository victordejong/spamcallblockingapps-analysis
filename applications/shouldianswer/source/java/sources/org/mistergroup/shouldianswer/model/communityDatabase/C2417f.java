package org.mistergroup.shouldianswer.model.communityDatabase;

import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/f.class */
public final class C2417f {

    /* renamed from: a */
    private C2417f[] f7016a;

    /* renamed from: a */
    public final int m1094a(int i, String str) {
        C1694h.m3117b(str, "number");
        String substring = str.substring(0, 1);
        C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        int parseInt = Integer.parseInt(substring);
        String substring2 = str.substring(1);
        C1694h.m3122a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
        int i2 = (i * 10) + parseInt;
        C2417f[] c2417fArr = this.f7016a;
        if (c2417fArr == null) {
            C1694h.m3124a();
        }
        if (c2417fArr[parseInt] != null) {
            if (substring2.length() <= 0) {
                C3104j.m157a(C3104j.f9124a, "getSliceId Number is shorter than sliceTree", (String) null, 2, (Object) null);
                return 0;
            }
            C2417f[] c2417fArr2 = this.f7016a;
            if (c2417fArr2 == null) {
                C1694h.m3124a();
            }
            C2417f c2417f = c2417fArr2[parseInt];
            if (c2417f == null) {
                C1694h.m3124a();
            }
            return c2417f.m1094a(i2, substring2);
        }
        return i2;
    }

    /* renamed from: a */
    public final int m1093a(String str, int i) {
        C1694h.m3117b(str, "data");
        this.f7016a = new C2417f[10];
        for (int i2 = 0; i2 <= 9; i2++) {
            if (str.charAt(i) == '+') {
                i++;
            } else {
                C2417f[] c2417fArr = this.f7016a;
                if (c2417fArr == null) {
                    C1694h.m3124a();
                }
                c2417fArr[i2] = new C2417f();
                C2417f[] c2417fArr2 = this.f7016a;
                if (c2417fArr2 == null) {
                    C1694h.m3124a();
                }
                C2417f c2417f = c2417fArr2[i2];
                if (c2417f == null) {
                    C1694h.m3124a();
                }
                i = c2417f.m1093a(str, i + 1);
            }
        }
        return i;
    }
}
