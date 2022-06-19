package org.mistergroup.shouldianswer.model.communityDatabase;

import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/c.class */
public final class C2412c {

    /* renamed from: a */
    private C2412c[] f6993a;

    /* renamed from: a */
    public final int m1120a(int i, String str) {
        C1694h.m3117b(str, "number");
        String substring = str.substring(0, 1);
        C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        int parseInt = Integer.parseInt(substring);
        String substring2 = str.substring(1);
        C1694h.m3122a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
        int i2 = (i * 10) + parseInt;
        C2412c[] c2412cArr = this.f6993a;
        if (c2412cArr == null) {
            C1694h.m3124a();
        }
        if (c2412cArr[parseInt] != null) {
            if (substring2.length() <= 0) {
                C3104j.m157a(C3104j.f9124a, "CommunityDatabaseDataSliceNode.getSliceId Number is shorter than sliceTree", (String) null, 2, (Object) null);
                return 0;
            }
            C2412c[] c2412cArr2 = this.f6993a;
            if (c2412cArr2 == null) {
                C1694h.m3124a();
            }
            C2412c c2412c = c2412cArr2[parseInt];
            if (c2412c == null) {
                C1694h.m3124a();
            }
            return c2412c.m1120a(i2, substring2);
        }
        return i2;
    }

    /* renamed from: a */
    public final int m1119a(String str, int i) {
        C1694h.m3117b(str, "data");
        this.f6993a = new C2412c[10];
        for (int i2 = 0; i2 <= 9; i2++) {
            if (str.charAt(i) == '+') {
                i++;
            } else {
                C2412c[] c2412cArr = this.f6993a;
                if (c2412cArr == null) {
                    C1694h.m3124a();
                }
                c2412cArr[i2] = new C2412c();
                C2412c[] c2412cArr2 = this.f6993a;
                if (c2412cArr2 == null) {
                    C1694h.m3124a();
                }
                C2412c c2412c = c2412cArr2[i2];
                if (c2412c == null) {
                    C1694h.m3124a();
                }
                i = c2412c.m1119a(str, i + 1);
            }
        }
        return i;
    }
}
