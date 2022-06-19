package org.jsoup.nodes;

import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.C20783a;
/* renamed from: org.jsoup.nodes.i */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i.class */
public final class C20914i {

    /* renamed from: a */
    private static final char[] f67487a = {',', ';'};

    /* renamed from: b */
    private static final HashMap<String, String> f67488b = new HashMap<>();

    /* renamed from: c */
    private static final C20906f.C20907a f67489c = new C20906f.C20907a();

    /* renamed from: org.jsoup.nodes.i$1 */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i$1.class */
    public static final /* synthetic */ class C209151 {

        /* renamed from: a */
        static final /* synthetic */ int[] f67490a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC20916a.m251a().length];
            f67490a = iArr;
            try {
                iArr[EnumC20916a.f67491a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f67490a[EnumC20916a.f67492b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: org.jsoup.nodes.i$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i$a.class */
    public static final class EnumC20916a extends Enum<EnumC20916a> {

        /* renamed from: a */
        public static final int f67491a = 1;

        /* renamed from: b */
        public static final int f67492b = 2;

        /* renamed from: c */
        public static final int f67493c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f67494d = {1, 2, 3};

        private EnumC20916a(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int m250a(String str) {
            return str.equals("US-ASCII") ? f67491a : str.startsWith("UTF-") ? f67492b : f67493c;
        }

        /* renamed from: a */
        public static int[] m251a() {
            return (int[]) f67494d.clone();
        }
    }

    /* renamed from: org.jsoup.nodes.i$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i$b.class */
    public enum EnumC20917b {
        xhtml(C20918j.f67495a, 4),
        base(C20918j.f67496b, 106),
        extended(C20918j.f67497c, 2125);
        
        private int[] codeKeys;
        private int[] codeVals;
        private String[] nameKeys;
        private String[] nameVals;

        EnumC20917b(String str, int i) {
            C20914i.m253a(this, str, i);
        }

        private int size() {
            return this.nameKeys.length;
        }

        final int codepointForName(String str) {
            int binarySearch = Arrays.binarySearch(this.nameKeys, str);
            if (binarySearch >= 0) {
                return this.codeVals[binarySearch];
            }
            return -1;
        }

        final String nameForCodepoint(int i) {
            int binarySearch = Arrays.binarySearch(this.codeKeys, i);
            if (binarySearch >= 0) {
                String[] strArr = this.nameVals;
                if (binarySearch < strArr.length - 1) {
                    int i2 = binarySearch + 1;
                    if (this.codeKeys[i2] == i) {
                        return strArr[i2];
                    }
                }
                return strArr[binarySearch];
            }
            return "";
        }
    }

    private C20914i() {
    }

    /* renamed from: a */
    public static int m254a(String str, int[] iArr) {
        String str2 = f67488b.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int codepointForName = EnumC20917b.extended.codepointForName(str);
        if (codepointForName == -1) {
            return 0;
        }
        iArr[0] = codepointForName;
        return 1;
    }

    /* renamed from: a */
    public static void m257a(Appendable appendable, String str, C20906f.C20907a c20907a, boolean z, boolean z2, boolean z3) throws IOException {
        EnumC20917b enumC20917b = c20907a.f67462a;
        CharsetEncoder charsetEncoder = c20907a.f67464c.get();
        if (charsetEncoder == null) {
            charsetEncoder = c20907a.m283a();
        }
        int i = c20907a.f67465d;
        int length = str.length();
        int i2 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            boolean z6 = z5;
            if (i2 < length) {
                int codePointAt = str.codePointAt(i2);
                boolean z7 = true;
                boolean z8 = z4;
                boolean z9 = z6;
                if (z2) {
                    if (C20782c.m488b(codePointAt)) {
                        if (z3) {
                            z8 = z4;
                            z9 = z6;
                            if (!z4) {
                                i2 += Character.charCount(codePointAt);
                                z4 = z8;
                                z5 = z9;
                            }
                        }
                        z8 = z4;
                        z9 = z6;
                        if (!z6) {
                            appendable.append(' ');
                            z9 = true;
                            z8 = z4;
                        }
                        i2 += Character.charCount(codePointAt);
                        z4 = z8;
                        z5 = z9;
                    } else {
                        z8 = true;
                        z9 = false;
                    }
                }
                if (codePointAt < 65536) {
                    char c = (char) codePointAt;
                    if (c != '\"') {
                        if (c == '&') {
                            appendable.append("&amp;");
                        } else if (c != '<') {
                            if (c != '>') {
                                if (c != 160) {
                                    int i3 = C209151.f67490a[i - 1];
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            z7 = charsetEncoder.canEncode(c);
                                        }
                                    } else if (c >= 128) {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        appendable.append(c);
                                    } else {
                                        m256a(appendable, enumC20917b, codePointAt);
                                    }
                                } else if (enumC20917b != EnumC20917b.xhtml) {
                                    appendable.append("&nbsp;");
                                } else {
                                    appendable.append("&#xa0;");
                                }
                            } else if (!z) {
                                appendable.append("&gt;");
                            } else {
                                appendable.append(c);
                            }
                        } else if (!z || enumC20917b == EnumC20917b.xhtml) {
                            appendable.append("&lt;");
                        } else {
                            appendable.append(c);
                        }
                    } else if (z) {
                        appendable.append("&quot;");
                    } else {
                        appendable.append(c);
                    }
                } else {
                    String str2 = new String(Character.toChars(codePointAt));
                    if (charsetEncoder.canEncode(str2)) {
                        appendable.append(str2);
                    } else {
                        m256a(appendable, enumC20917b, codePointAt);
                    }
                }
                i2 += Character.charCount(codePointAt);
                z4 = z8;
                z5 = z9;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private static void m256a(Appendable appendable, EnumC20917b enumC20917b, int i) throws IOException {
        String nameForCodepoint = enumC20917b.nameForCodepoint(i);
        if (!"".equals(nameForCodepoint)) {
            appendable.append('&').append(nameForCodepoint).append(';');
        } else {
            appendable.append("&#x").append(Integer.toHexString(i)).append(';');
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m253a(EnumC20917b enumC20917b, String str, int i) {
        int i2;
        enumC20917b.nameKeys = new String[i];
        enumC20917b.codeVals = new int[i];
        enumC20917b.codeKeys = new int[i];
        enumC20917b.nameVals = new String[i];
        C20783a c20783a = new C20783a(str);
        boolean z = false;
        int i3 = 0;
        while (!c20783a.m474c()) {
            String m484a = c20783a.m484a('=');
            c20783a.m465g();
            int parseInt = Integer.parseInt(c20783a.m481a(f67487a), 36);
            char m470d = c20783a.m470d();
            c20783a.m465g();
            if (m470d == ',') {
                i2 = Integer.parseInt(c20783a.m484a(';'), 36);
                c20783a.m465g();
            } else {
                i2 = -1;
            }
            int parseInt2 = Integer.parseInt(c20783a.m484a('&'), 36);
            c20783a.m465g();
            enumC20917b.nameKeys[i3] = m484a;
            enumC20917b.codeVals[i3] = parseInt;
            enumC20917b.codeKeys[parseInt2] = parseInt;
            enumC20917b.nameVals[parseInt2] = m484a;
            if (i2 != -1) {
                f67488b.put(m484a, new String(new int[]{parseInt, i2}, 0, 2));
            }
            i3++;
        }
        if (i3 == i) {
            z = true;
        }
        C20779c.m502a(z, "Unexpected count of entities loaded");
    }

    /* renamed from: a */
    public static boolean m255a(String str) {
        return EnumC20917b.extended.codepointForName(str) != -1;
    }

    /* renamed from: b */
    public static boolean m252b(String str) {
        return EnumC20917b.base.codepointForName(str) != -1;
    }
}
