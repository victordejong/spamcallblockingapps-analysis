package p626l.p631e0;

import p626l.p630d0.C14930l;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.e0.w */
/* loaded from: classes3-dex2jar.jar:l/e0/w.class */
public class C14966w extends C14965v {
    /* renamed from: a */
    public static final String m723a(CharSequence charSequence, int i) {
        C15149k.m377b(charSequence, "$this$repeat");
        int i2 = 1;
        if (i >= 0) {
            String str = "";
            if (i != 0) {
                if (i != 1) {
                    int length = charSequence.length();
                    str = "";
                    if (length != 0) {
                        if (length != 1) {
                            StringBuilder sb = new StringBuilder(charSequence.length() * i);
                            if (1 <= i) {
                                while (true) {
                                    sb.append(charSequence);
                                    if (i2 == i) {
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            str = sb.toString();
                            C15149k.m383a((Object) str, "sb.toString()");
                        } else {
                            char charAt = charSequence.charAt(0);
                            char[] cArr = new char[i];
                            for (int i3 = 0; i3 < i; i3++) {
                                cArr[i3] = charAt;
                            }
                            str = new String(cArr);
                        }
                    }
                } else {
                    str = charSequence.toString();
                }
            }
            return str;
        }
        throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + '.').toString());
    }

    /* renamed from: a */
    public static final String m722a(String str, char c, char c2, boolean z) {
        C15149k.m377b(str, "$this$replace");
        if (z) {
            return C14930l.m774a(C14967x.m695a(str, new char[]{c}, z, 0, 4, (Object) null), String.valueOf(c2), null, null, 0, null, null, 62, null);
        }
        String replace = str.replace(c, c2);
        C15149k.m383a((Object) replace, "(this as java.lang.Strin…replace(oldChar, newChar)");
        return replace;
    }

    /* renamed from: a */
    public static /* synthetic */ String m721a(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m722a(str, c, c2, z);
    }

    /* renamed from: a */
    public static final String m719a(String str, String str2, String str3, boolean z) {
        C15149k.m377b(str, "$this$replace");
        C15149k.m377b(str2, "oldValue");
        C15149k.m377b(str3, "newValue");
        return C14930l.m774a(C14967x.m678b(str, new String[]{str2}, z, 0, 4, (Object) null), str3, null, null, 0, null, null, 62, null);
    }

    /* renamed from: a */
    public static /* synthetic */ String m718a(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m719a(str, str2, str3, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        if (r4 != false) goto L_0x0059;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m724a(java.lang.CharSequence r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$isBlank"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            int r0 = r0.length()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0059
            r0 = r3
            l.b0.d r0 = p626l.p631e0.C14967x.m686b(r0)
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            if (r0 == 0) goto L_0x0030
            r0 = r6
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0030
        L_0x002b:
            r0 = 1
            r4 = r0
            goto L_0x0055
        L_0x0030:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0037:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x002b
            r0 = r3
            r1 = r6
            l.u.a0 r1 = (p626l.p632u.AbstractC14993a0) r1
            int r1 = r1.nextInt()
            char r0 = r0.charAt(r1)
            boolean r0 = p626l.p631e0.C14936a.m763a(r0)
            if (r0 != 0) goto L_0x0037
            r0 = 0
            r4 = r0
        L_0x0055:
            r0 = r4
            if (r0 == 0) goto L_0x005b
        L_0x0059:
            r0 = 1
            r5 = r0
        L_0x005b:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p631e0.C14966w.m724a(java.lang.CharSequence):boolean");
    }

    /* renamed from: a */
    public static final boolean m720a(String str, int i, String str2, int i2, int i3, boolean z) {
        C15149k.m377b(str, "$this$regionMatches");
        C15149k.m377b(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    /* renamed from: a */
    public static final boolean m717a(String str, String str2, boolean z) {
        C15149k.m377b(str, "$this$endsWith");
        C15149k.m377b(str2, "suffix");
        return !z ? str.endsWith(str2) : m720a(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m716a(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m717a(str, str2, z);
    }

    /* renamed from: b */
    public static final boolean m715b(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m714b(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m715b(str, str2, z);
    }

    /* renamed from: c */
    public static final boolean m713c(String str, String str2, boolean z) {
        C15149k.m377b(str, "$this$startsWith");
        C15149k.m377b(str2, "prefix");
        return !z ? str.startsWith(str2) : m720a(str, 0, str2, 0, str2.length(), z);
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m712c(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m713c(str, str2, z);
    }
}
