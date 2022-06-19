package com.esotericsoftware.p273a;

import okhttp3.HttpUrl;
/* renamed from: com.esotericsoftware.a.t */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/t.class */
public final class C9364t {

    /* renamed from: a */
    public static final C9364t f32171a = new C9364t(0, null, 1443168256, 1);

    /* renamed from: b */
    public static final C9364t f32172b = new C9364t(1, null, 1509950721, 1);

    /* renamed from: c */
    public static final C9364t f32173c = new C9364t(2, null, 1124075009, 1);

    /* renamed from: d */
    public static final C9364t f32174d = new C9364t(3, null, 1107297537, 1);

    /* renamed from: e */
    public static final C9364t f32175e = new C9364t(4, null, 1392510721, 1);

    /* renamed from: f */
    public static final C9364t f32176f = new C9364t(5, null, 1224736769, 1);

    /* renamed from: g */
    public static final C9364t f32177g = new C9364t(6, null, 1174536705, 1);

    /* renamed from: h */
    public static final C9364t f32178h = new C9364t(7, null, 1241579778, 1);

    /* renamed from: i */
    public static final C9364t f32179i = new C9364t(8, null, 1141048066, 1);

    /* renamed from: j */
    public final int f32180j;

    /* renamed from: k */
    private final char[] f32181k;

    /* renamed from: l */
    private final int f32182l;

    /* renamed from: m */
    private final int f32183m;

    private C9364t(int i, char[] cArr, int i2, int i3) {
        this.f32180j = i;
        this.f32181k = cArr;
        this.f32182l = i2;
        this.f32183m = i3;
    }

    /* renamed from: a */
    public static C9364t m24511a(Class cls) {
        return cls.isPrimitive() ? cls == Integer.TYPE ? f32176f : cls == Void.TYPE ? f32171a : cls == Boolean.TYPE ? f32172b : cls == Byte.TYPE ? f32174d : cls == Character.TYPE ? f32173c : cls == Short.TYPE ? f32175e : cls == Double.TYPE ? f32179i : cls == Float.TYPE ? f32177g : f32178h : m24510a(m24505b(cls));
    }

    /* renamed from: a */
    public static C9364t m24510a(String str) {
        return m24507a(str.toCharArray(), 0);
    }

    /* renamed from: a */
    private static C9364t m24507a(char[] cArr, int i) {
        int i2;
        char c = cArr[i];
        if (c != 'F') {
            if (c == 'L') {
                int i3 = 1;
                while (cArr[i + i3] != ';') {
                    i3++;
                }
                return new C9364t(10, cArr, i + 1, i3 - 1);
            } else if (c == 'S') {
                return f32175e;
            } else {
                if (c == 'V') {
                    return f32171a;
                }
                if (c == 'I') {
                    return f32176f;
                }
                if (c == 'J') {
                    return f32178h;
                }
                if (c == 'Z') {
                    return f32172b;
                }
                if (c != '[') {
                    switch (c) {
                        case 'B':
                            return f32174d;
                        case 'C':
                            return f32173c;
                        case 'D':
                            return f32179i;
                        default:
                            return new C9364t(11, cArr, i, cArr.length - i);
                    }
                }
                int i4 = 1;
                while (true) {
                    i2 = i + i4;
                    if (cArr[i2] != '[') {
                        break;
                    }
                    i4++;
                }
                int i5 = i4;
                if (cArr[i2] != 'L') {
                    return new C9364t(9, cArr, i, i5 + 1);
                }
                do {
                    i4++;
                    i5 = i4;
                } while (cArr[i + i4] != ';');
                return new C9364t(9, cArr, i, i5 + 1);
            }
        }
        return f32177g;
    }

    /* renamed from: a */
    private void m24509a(StringBuffer stringBuffer) {
        char[] cArr = this.f32181k;
        if (cArr == null) {
            stringBuffer.append((char) ((this.f32182l & (-16777216)) >>> 24));
        } else if (this.f32180j != 10) {
            stringBuffer.append(cArr, this.f32182l, this.f32183m);
        } else {
            stringBuffer.append('L');
            stringBuffer.append(this.f32181k, this.f32182l, this.f32183m);
            stringBuffer.append(';');
        }
    }

    /* renamed from: a */
    private static void m24508a(StringBuffer stringBuffer, Class cls) {
        while (!cls.isPrimitive()) {
            if (!cls.isArray()) {
                stringBuffer.append('L');
                String name = cls.getName();
                int length = name.length();
                for (int i = 0; i < length; i++) {
                    char charAt = name.charAt(i);
                    char c = charAt;
                    if (charAt == '.') {
                        c = '/';
                    }
                    stringBuffer.append(c);
                }
                stringBuffer.append(';');
                return;
            }
            stringBuffer.append('[');
            cls = cls.getComponentType();
        }
        stringBuffer.append(cls == Integer.TYPE ? 'I' : cls == Void.TYPE ? 'V' : cls == Boolean.TYPE ? 'Z' : cls == Byte.TYPE ? 'B' : cls == Character.TYPE ? 'C' : cls == Short.TYPE ? 'S' : cls == Double.TYPE ? 'D' : cls == Float.TYPE ? 'F' : 'J');
    }

    /* renamed from: b */
    public static C9364t m24504b(String str) {
        char[] charArray = str.toCharArray();
        return new C9364t(charArray[0] == '[' ? 9 : 10, charArray, 0, charArray.length);
    }

    /* renamed from: b */
    public static String m24505b(Class cls) {
        StringBuffer stringBuffer = new StringBuffer();
        m24508a(stringBuffer, cls);
        return stringBuffer.toString();
    }

    /* renamed from: c */
    public static C9364t m24502c(String str) {
        return m24507a(str.toCharArray(), 0);
    }

    /* renamed from: d */
    private int m24501d() {
        int i = 1;
        while (this.f32181k[this.f32182l + i] == '[') {
            i++;
        }
        return i;
    }

    /* renamed from: d */
    public static C9364t[] m24500d(String str) {
        char[] charArray = str.toCharArray();
        int i = 1;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            char c = charArray[i];
            if (c == ')') {
                break;
            } else if (c == 'L') {
                while (true) {
                    i = i3 + 1;
                    if (charArray[i3] == ';') {
                        break;
                    }
                    i3 = i;
                }
                i2++;
            } else {
                int i4 = i2;
                if (c != '[') {
                    i4 = i2 + 1;
                }
                i = i3;
                i2 = i4;
            }
        }
        C9364t[] c9364tArr = new C9364t[i2];
        int i5 = 0;
        int i6 = 1;
        while (charArray[i6] != ')') {
            c9364tArr[i5] = m24507a(charArray, i6);
            i6 += c9364tArr[i5].f32183m + (c9364tArr[i5].f32180j == 10 ? 2 : 0);
            i5++;
        }
        return c9364tArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (r0 == 'J') goto L12;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m24498e(java.lang.String r3) {
        /*
            r0 = 1
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 1
            r6 = r0
        L6:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
            r0 = r3
            r1 = r5
            char r0 = r0.charAt(r1)
            r5 = r0
            r0 = r5
            r1 = 41
            if (r0 != r1) goto L43
            r0 = r3
            r1 = r7
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = r7
            r1 = 86
            if (r0 != r1) goto L2b
            r0 = 0
            r5 = r0
            goto L3d
        L2b:
            r0 = r7
            r1 = 68
            if (r0 == r1) goto L3b
            r0 = r4
            r5 = r0
            r0 = r7
            r1 = 74
            if (r0 != r1) goto L3d
        L3b:
            r0 = 2
            r5 = r0
        L3d:
            r0 = r6
            r1 = 2
            int r0 = r0 << r1
            r1 = r5
            r0 = r0 | r1
            return r0
        L43:
            r0 = r5
            r1 = 76
            if (r0 != r1) goto L65
        L49:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r5 = r0
            r0 = r3
            r1 = r7
            char r0 = r0.charAt(r1)
            r1 = 59
            if (r0 != r1) goto L5f
            int r6 = r6 + 1
            goto L6
        L5f:
            r0 = r5
            r7 = r0
            goto L49
        L65:
            r0 = r5
            r1 = 91
            if (r0 != r1) goto L9a
        L6b:
            r0 = r3
            r1 = r7
            char r0 = r0.charAt(r1)
            r8 = r0
            r0 = r8
            r1 = 91
            if (r0 != r1) goto L80
            int r7 = r7 + 1
            goto L6b
        L80:
            r0 = r8
            r1 = 68
            if (r0 == r1) goto L91
            r0 = r7
            r5 = r0
            r0 = r8
            r1 = 74
            if (r0 != r1) goto L6
        L91:
            int r6 = r6 + (-1)
            r0 = r7
            r5 = r0
            goto L6
        L9a:
            r0 = r5
            r1 = 68
            if (r0 == r1) goto Laf
            r0 = r5
            r1 = 74
            if (r0 != r1) goto La9
            goto Laf
        La9:
            int r6 = r6 + 1
            goto Lb2
        Laf:
            int r6 = r6 + 2
        Lb2:
            r0 = r7
            r5 = r0
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9364t.m24498e(java.lang.String):int");
    }

    /* renamed from: e */
    private C9364t m24499e() {
        return m24507a(this.f32181k, this.f32182l + m24501d());
    }

    /* renamed from: a */
    public final String m24512a() {
        switch (this.f32180j) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                StringBuffer stringBuffer = new StringBuffer(m24499e().m24512a());
                for (int m24501d = m24501d(); m24501d > 0; m24501d--) {
                    stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                }
                return stringBuffer.toString();
            case 10:
                return new String(this.f32181k, this.f32182l, this.f32183m).replace('/', '.');
            default:
                return null;
        }
    }

    /* renamed from: b */
    public final String m24506b() {
        return new String(this.f32181k, this.f32182l, this.f32183m);
    }

    /* renamed from: c */
    public final String m24503c() {
        StringBuffer stringBuffer = new StringBuffer();
        m24509a(stringBuffer);
        return stringBuffer.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9364t)) {
            return false;
        }
        C9364t c9364t = (C9364t) obj;
        int i = this.f32180j;
        if (i != c9364t.f32180j) {
            return false;
        }
        if (i < 9) {
            return true;
        }
        int i2 = this.f32183m;
        if (i2 != c9364t.f32183m) {
            return false;
        }
        int i3 = this.f32182l;
        int i4 = c9364t.f32182l;
        int i5 = i3;
        while (i5 < i2 + i3) {
            if (this.f32181k[i5] != c9364t.f32181k[i4]) {
                return false;
            }
            i5++;
            i4++;
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f32180j;
        char c = i * 13;
        char c2 = c;
        if (i >= 9) {
            int i2 = this.f32182l;
            int i3 = this.f32183m;
            int i4 = i2;
            while (true) {
                int i5 = i4;
                c2 = c;
                if (i5 >= i3 + i2) {
                    break;
                }
                c = (c + this.f32181k[i5]) * 17;
                i4 = i5 + 1;
            }
        }
        return c2;
    }

    public final String toString() {
        return m24503c();
    }
}
