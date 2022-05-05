package p626l.p631e0;

import p626l.p641z.p643d.C15149k;
/* renamed from: l.e0.v */
/* loaded from: classes3-dex2jar.jar:l/e0/v.class */
public class C14965v extends C14964u {
    /* renamed from: a */
    public static final Integer m728a(String str, int i) {
        boolean z;
        C15149k.m377b(str, "$this$toIntOrNull");
        C14936a.m761a(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        int i3 = -2147483647;
        int i4 = 1;
        if (charAt >= '0') {
            z = false;
            i4 = 0;
        } else if (length == 1) {
            return null;
        } else {
            if (charAt == '-') {
                i3 = Integer.MIN_VALUE;
                z = true;
            } else if (charAt != '+') {
                return null;
            } else {
                z = false;
            }
        }
        int i5 = -59652323;
        while (i4 < length) {
            int a = C14936a.m762a(str.charAt(i4), i);
            if (a < 0) {
                return null;
            }
            i5 = i5;
            if (i2 < i5) {
                if (i5 != -59652323) {
                    return null;
                }
                int i6 = i3 / i;
                i5 = i6;
                if (i2 < i6) {
                    return null;
                }
            }
            int i7 = i2 * i;
            if (i7 < i3 + a) {
                return null;
            }
            i2 = i7 - a;
            i4++;
        }
        return z ? Integer.valueOf(i2) : Integer.valueOf(-i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Long m727b(java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p631e0.C14965v.m727b(java.lang.String, int):java.lang.Long");
    }

    /* renamed from: e */
    public static final Integer m726e(String str) {
        C15149k.m377b(str, "$this$toIntOrNull");
        return m728a(str, 10);
    }

    /* renamed from: f */
    public static final Long m725f(String str) {
        C15149k.m377b(str, "$this$toLongOrNull");
        return m727b(str, 10);
    }
}
