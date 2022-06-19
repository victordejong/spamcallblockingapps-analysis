package kotlin.p079d;

import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: kotlin.d.b */
/* loaded from: classes-dex2jar.jar:kotlin/d/b.class */
public final class C1658b {

    /* renamed from: a */
    public static final C1655a f4378a;

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(4:58|4|51|(3:6|47|48)(2:8|9))|23|24|53|(4:56|26|57|(3:28|47|48)(2:30|31))|45|46|47|48|(1:(0))) */
    static {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p079d.C1658b.m9261clinit():void");
    }

    /* renamed from: a */
    private static final int m3136a() {
        String property = System.getProperty("java.specification.version");
        int i = 65542;
        if (property != null) {
            String str = property;
            int a = C1747g.m3027a((CharSequence) str, '.', 0, false, 6, (Object) null);
            if (a < 0) {
                try {
                    i = Integer.parseInt(property) * 65536;
                } catch (NumberFormatException e) {
                }
                return i;
            }
            int i2 = a + 1;
            int a2 = C1747g.m3027a((CharSequence) str, '.', i2, false, 4, (Object) null);
            int i3 = a2;
            if (a2 < 0) {
                i3 = property.length();
            }
            if (property == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String substring = property.substring(0, a);
            C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (property == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String substring2 = property.substring(i2, i3);
            C1694h.m3122a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            try {
                i = (Integer.parseInt(substring) * 65536) + Integer.parseInt(substring2);
            } catch (NumberFormatException e2) {
            }
            return i;
        }
        return 65542;
    }
}
