package p459j.p460a.p564s;

import p626l.p631e0.C14949k;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.s.h0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/h0.class */
public final class C13449h0 {
    static {
        new C13449h0();
    }

    /* renamed from: a */
    public static final String m4036a(String str) {
        C15149k.m377b(str, "text");
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        String str2 = "";
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            char charAt2 = str.charAt(i);
            if (charAt2 != ',') {
                if (charAt2 != '[') {
                    if (charAt2 != ']') {
                        if (charAt2 != '{') {
                            if (charAt2 != '}') {
                                sb.append(charAt);
                            }
                        }
                    }
                    str2 = new C14949k("\t").m744b(str2, "");
                    sb.append("\n" + str2 + charAt);
                }
                sb.append("\n" + str2 + charAt + "\n");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append("\t");
                str2 = sb2.toString();
                sb.append(str2);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(String.valueOf(charAt) + "\n");
                sb3.append(str2);
                sb.append(sb3.toString());
            }
        }
        String sb4 = sb.toString();
        C15149k.m383a((Object) sb4, "json.toString()");
        return sb4;
    }
}
