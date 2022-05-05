package p081h.p160h.p179e.p192b.p193c.p194c;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.regex.Pattern;
import p081h.p160h.p179e.p192b.C6442a;
import p626l.C14986p;
import p626l.p631e0.C14967x;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.c.c.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/c/c/a.class */
public final class C6457a {
    /* renamed from: a */
    public final String m22544a(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (m22541c(charAt)) {
                sb.append(" ");
            } else {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "outStrBuf.toString()");
        return sb2;
    }

    /* renamed from: a */
    public final boolean m22545a(char c) {
        return Pattern.compile("[一-龥]").matcher(String.valueOf(c)).matches();
    }

    /* renamed from: b */
    public final List<String> m22542b(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        boolean z = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (m22543b(charAt)) {
                List asList = Arrays.asList(Character.valueOf(charAt));
                C15149k.m383a((Object) asList, "list");
                arrayList.add(asList);
                z = true;
            } else {
                if (z) {
                    arrayList.add(new ArrayList());
                }
                ((List) arrayList.get(arrayList.size() - 1)).add(Character.valueOf(charAt));
                z = false;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            String str2 = "";
            for (int i3 = 0; i3 < ((Collection) arrayList.get(i2)).size(); i3++) {
                str2 = str2 + ((Character) ((List) arrayList.get(i2)).get(i3)).charValue();
            }
            arrayList2.add(str2);
        }
        return arrayList2;
    }

    /* renamed from: b */
    public final boolean m22543b(char c) {
        if ('!' <= c && '/' >= c) {
            return true;
        }
        if (':' <= c && '@' >= c) {
            return true;
        }
        if ('[' <= c && '`' >= c) {
            return true;
        }
        if ('{' <= c && '~' >= c) {
            return true;
        }
        boolean z = true;
        if (c != 8220) {
            z = true;
            if (c != 8221) {
                z = true;
                if (c != 12289) {
                    z = true;
                    if (c != 12298) {
                        z = true;
                        if (c != 12299) {
                            z = true;
                            if (c != 12290) {
                                z = true;
                                if (c != 65307) {
                                    z = true;
                                    if (c != 12304) {
                                        z = true;
                                        if (c != 12305) {
                                            z = c == 65292;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public final List<String> m22540c(String str) {
        List<String> b;
        C15149k.m377b(str, "text");
        C6442a.m22561a(this);
        String str2 = "raw text = " + str;
        String str3 = "";
        for (String str4 : m22538e(m22539d(m22544a(str)))) {
            int i = 0;
            String str5 = str3;
            while (true) {
                str3 = str5;
                if (i < m22542b(str4).size()) {
                    str5 = str5 + b.get(i) + " ";
                    i++;
                }
            }
        }
        C6442a.m22561a(this);
        String str6 = "token str = " + str3;
        return m22538e(str3);
    }

    /* renamed from: c */
    public final boolean m22541c(char c) {
        return c == ' ' || c == '\t' || c == '\n' || c == '\r';
    }

    /* renamed from: d */
    public final String m22539d(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (m22545a(charAt)) {
                sb.append(" ");
                sb.append(charAt);
                sb.append(" ");
            } else {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "outStrBuf.toString()");
        return sb2;
    }

    /* renamed from: e */
    public final List<String> m22538e(String str) {
        String str2;
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = str.charAt(!z ? i : length) <= ' ';
                if (!z) {
                    if (!z2) {
                        z = true;
                    } else {
                        i++;
                    }
                } else if (!z2) {
                    break;
                } else {
                    length--;
                }
            }
            str2 = str.subSequence(i, length + 1).toString();
        } else {
            str2 = null;
        }
        if (str2 == null) {
            return arrayList;
        }
        Object[] array = C14967x.m691a((CharSequence) str, new String[]{" "}, false, 0, 6, (Object) null).toArray(new String[0]);
        if (array != null) {
            String[] strArr = (String[]) array;
            return C15021m.m557c((String[]) Arrays.copyOf(strArr, strArr.length));
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
