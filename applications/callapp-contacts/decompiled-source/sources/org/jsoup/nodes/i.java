package org.jsoup.nodes;

import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import org.jsoup.b.c;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f39287a = {',', ';'};

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, String> f39288b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final f.a f39289c = new f.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.jsoup.nodes.i$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39290a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.a().length];
            f39290a = iArr;
            try {
                iArr[a.f39291a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f39290a[a.f39292b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f39291a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f39292b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f39293c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f39294d = {1, 2, 3};

        private a(String str, int i) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int a(String str) {
            return str.equals("US-ASCII") ? f39291a : str.startsWith("UTF-") ? f39292b : f39293c;
        }

        public static int[] a() {
            return (int[]) f39294d.clone();
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/i$b.class */
    public enum b {
        xhtml(j.f39295a, 4),
        base(j.f39296b, 106),
        extended(j.f39297c, 2125);
        
        private int[] codeKeys;
        private int[] codeVals;
        private String[] nameKeys;
        private String[] nameVals;

        b(String str, int i) {
            i.a(this, str, i);
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
            if (binarySearch < 0) {
                return "";
            }
            String[] strArr = this.nameVals;
            if (binarySearch < strArr.length - 1) {
                int i2 = binarySearch + 1;
                if (this.codeKeys[i2] == i) {
                    return strArr[i2];
                }
            }
            return strArr[binarySearch];
        }
    }

    private i() {
    }

    public static int a(String str, int[] iArr) {
        String str2 = f39288b.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int codepointForName = b.extended.codepointForName(str);
        if (codepointForName == -1) {
            return 0;
        }
        iArr[0] = codepointForName;
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Appendable appendable, String str, f.a aVar, boolean z, boolean z2, boolean z3) throws IOException {
        b bVar = aVar.f39269a;
        CharsetEncoder charsetEncoder = aVar.f39271c.get();
        if (charsetEncoder == null) {
            charsetEncoder = aVar.a();
        }
        int i = aVar.f39272d;
        int length = str.length();
        int i2 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            boolean z6 = true;
            z4 = z4;
            z5 = z5;
            if (z2) {
                if (c.b(codePointAt)) {
                    if (z3) {
                        z4 = z4;
                        z5 = z5;
                        if (!z4) {
                            i2 += Character.charCount(codePointAt);
                        }
                    }
                    z4 = z4;
                    z5 = z5;
                    if (!z5) {
                        appendable.append(' ');
                        z5 = true;
                        z4 = z4;
                    }
                    i2 += Character.charCount(codePointAt);
                } else {
                    z4 = true;
                    z5 = false;
                }
            }
            if (codePointAt < 65536) {
                char c2 = (char) codePointAt;
                if (c2 != '\"') {
                    if (c2 == '&') {
                        appendable.append("&amp;");
                    } else if (c2 != '<') {
                        if (c2 != '>') {
                            if (c2 != 160) {
                                int i3 = AnonymousClass1.f39290a[i - 1];
                                if (i3 != 1) {
                                    if (i3 != 2) {
                                        z6 = charsetEncoder.canEncode(c2);
                                    }
                                } else if (c2 >= 128) {
                                    z6 = false;
                                }
                                if (z6) {
                                    appendable.append(c2);
                                } else {
                                    a(appendable, bVar, codePointAt);
                                }
                            } else if (bVar != b.xhtml) {
                                appendable.append("&nbsp;");
                            } else {
                                appendable.append("&#xa0;");
                            }
                        } else if (!z) {
                            appendable.append("&gt;");
                        } else {
                            appendable.append(c2);
                        }
                    } else if (!z || bVar == b.xhtml) {
                        appendable.append("&lt;");
                    } else {
                        appendable.append(c2);
                    }
                } else if (z) {
                    appendable.append("&quot;");
                } else {
                    appendable.append(c2);
                }
            } else {
                String str2 = new String(Character.toChars(codePointAt));
                if (charsetEncoder.canEncode(str2)) {
                    appendable.append(str2);
                } else {
                    a(appendable, bVar, codePointAt);
                }
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    private static void a(Appendable appendable, b bVar, int i) throws IOException {
        String nameForCodepoint = bVar.nameForCodepoint(i);
        if (!"".equals(nameForCodepoint)) {
            appendable.append('&').append(nameForCodepoint).append(';');
        } else {
            appendable.append("&#x").append(Integer.toHexString(i)).append(';');
        }
    }

    static /* synthetic */ void a(b bVar, String str, int i) {
        int i2;
        bVar.nameKeys = new String[i];
        bVar.codeVals = new int[i];
        bVar.codeKeys = new int[i];
        bVar.nameVals = new String[i];
        org.jsoup.c.a aVar = new org.jsoup.c.a(str);
        boolean z = false;
        int i3 = 0;
        while (!aVar.c()) {
            String a2 = aVar.a('=');
            aVar.g();
            int parseInt = Integer.parseInt(aVar.a(f39287a), 36);
            char d2 = aVar.d();
            aVar.g();
            if (d2 == ',') {
                i2 = Integer.parseInt(aVar.a(';'), 36);
                aVar.g();
            } else {
                i2 = -1;
            }
            int parseInt2 = Integer.parseInt(aVar.a('&'), 36);
            aVar.g();
            bVar.nameKeys[i3] = a2;
            bVar.codeVals[i3] = parseInt;
            bVar.codeKeys[parseInt2] = parseInt;
            bVar.nameVals[parseInt2] = a2;
            if (i2 != -1) {
                f39288b.put(a2, new String(new int[]{parseInt, i2}, 0, 2));
            }
            i3++;
        }
        if (i3 == i) {
            z = true;
        }
        org.jsoup.a.c.a(z, "Unexpected count of entities loaded");
    }

    public static boolean a(String str) {
        return b.extended.codepointForName(str) != -1;
    }

    public static boolean b(String str) {
        return b.base.codepointForName(str) != -1;
    }
}
