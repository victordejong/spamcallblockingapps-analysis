package com.esotericsoftware.a;

import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public static final t f18936a = new t(0, null, 1443168256, 1);

    /* renamed from: b  reason: collision with root package name */
    public static final t f18937b = new t(1, null, 1509950721, 1);

    /* renamed from: c  reason: collision with root package name */
    public static final t f18938c = new t(2, null, 1124075009, 1);

    /* renamed from: d  reason: collision with root package name */
    public static final t f18939d = new t(3, null, 1107297537, 1);
    public static final t e = new t(4, null, 1392510721, 1);
    public static final t f = new t(5, null, 1224736769, 1);
    public static final t g = new t(6, null, 1174536705, 1);
    public static final t h = new t(7, null, 1241579778, 1);
    public static final t i = new t(8, null, 1141048066, 1);
    public final int j;
    private final char[] k;
    private final int l;
    private final int m;

    private t(int i2, char[] cArr, int i3, int i4) {
        this.j = i2;
        this.k = cArr;
        this.l = i3;
        this.m = i4;
    }

    public static t a(Class cls) {
        return cls.isPrimitive() ? cls == Integer.TYPE ? f : cls == Void.TYPE ? f18936a : cls == Boolean.TYPE ? f18937b : cls == Byte.TYPE ? f18939d : cls == Character.TYPE ? f18938c : cls == Short.TYPE ? e : cls == Double.TYPE ? i : cls == Float.TYPE ? g : h : a(b(cls));
    }

    public static t a(String str) {
        return a(str.toCharArray(), 0);
    }

    private static t a(char[] cArr, int i2) {
        int i3;
        char c2 = cArr[i2];
        if (c2 == 'F') {
            return g;
        }
        if (c2 == 'L') {
            int i4 = 1;
            while (cArr[i2 + i4] != ';') {
                i4++;
            }
            return new t(10, cArr, i2 + 1, i4 - 1);
        } else if (c2 == 'S') {
            return e;
        } else {
            if (c2 == 'V') {
                return f18936a;
            }
            if (c2 == 'I') {
                return f;
            }
            if (c2 == 'J') {
                return h;
            }
            if (c2 == 'Z') {
                return f18937b;
            }
            if (c2 != '[') {
                switch (c2) {
                    case 'B':
                        return f18939d;
                    case 'C':
                        return f18938c;
                    case 'D':
                        return i;
                    default:
                        return new t(11, cArr, i2, cArr.length - i2);
                }
            } else {
                int i5 = 1;
                while (true) {
                    i3 = i2 + i5;
                    if (cArr[i3] != '[') {
                        break;
                    }
                    i5++;
                }
                int i6 = i5;
                if (cArr[i3] != 'L') {
                    return new t(9, cArr, i2, i6 + 1);
                }
                do {
                    i5++;
                    i6 = i5;
                } while (cArr[i2 + i5] != ';');
                return new t(9, cArr, i2, i6 + 1);
            }
        }
    }

    private void a(StringBuffer stringBuffer) {
        char[] cArr = this.k;
        if (cArr == null) {
            stringBuffer.append((char) ((this.l & (-16777216)) >>> 24));
        } else if (this.j == 10) {
            stringBuffer.append('L');
            stringBuffer.append(this.k, this.l, this.m);
            stringBuffer.append(';');
        } else {
            stringBuffer.append(cArr, this.l, this.m);
        }
    }

    private static void a(StringBuffer stringBuffer, Class cls) {
        while (!cls.isPrimitive()) {
            if (cls.isArray()) {
                stringBuffer.append('[');
                cls = cls.getComponentType();
            } else {
                stringBuffer.append('L');
                String name = cls.getName();
                int length = name.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = name.charAt(i2);
                    char c2 = charAt;
                    if (charAt == '.') {
                        c2 = '/';
                    }
                    stringBuffer.append(c2);
                }
                stringBuffer.append(';');
                return;
            }
        }
        stringBuffer.append(cls == Integer.TYPE ? 'I' : cls == Void.TYPE ? 'V' : cls == Boolean.TYPE ? 'Z' : cls == Byte.TYPE ? 'B' : cls == Character.TYPE ? 'C' : cls == Short.TYPE ? 'S' : cls == Double.TYPE ? 'D' : cls == Float.TYPE ? 'F' : 'J');
    }

    public static t b(String str) {
        char[] charArray = str.toCharArray();
        return new t(charArray[0] == '[' ? 9 : 10, charArray, 0, charArray.length);
    }

    public static String b(Class cls) {
        StringBuffer stringBuffer = new StringBuffer();
        a(stringBuffer, cls);
        return stringBuffer.toString();
    }

    public static t c(String str) {
        return a(str.toCharArray(), 0);
    }

    private int d() {
        int i2 = 1;
        while (this.k[this.l + i2] == '[') {
            i2++;
        }
        return i2;
    }

    public static t[] d(String str) {
        char[] charArray = str.toCharArray();
        int i2 = 1;
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int i5 = i3 + 1;
            char c2 = charArray[i3];
            if (c2 == ')') {
                break;
            } else if (c2 == 'L') {
                while (true) {
                    i3 = i5 + 1;
                    if (charArray[i5] == ';') {
                        break;
                    }
                    i5 = i3;
                }
                i4++;
            } else {
                i4 = i4;
                if (c2 != '[') {
                    i4++;
                }
                i3 = i5;
            }
        }
        t[] tVarArr = new t[i4];
        int i6 = 0;
        while (charArray[i2] != ')') {
            tVarArr[i6] = a(charArray, i2);
            i2 += tVarArr[i6].m + (tVarArr[i6].j == 10 ? 2 : 0);
            i6++;
        }
        return tVarArr;
    }

    public static int e(String str) {
        int i2;
        char charAt;
        int i3 = 1;
        int i4 = 1;
        int i5 = 1;
        while (true) {
            i2 = i4 + 1;
            char charAt2 = str.charAt(i4);
            if (charAt2 == ')') {
                break;
            } else if (charAt2 == 'L') {
                while (true) {
                    i4 = i2 + 1;
                    if (str.charAt(i2) == ';') {
                        break;
                    }
                    i2 = i4;
                }
                i5++;
            } else if (charAt2 == '[') {
                while (true) {
                    charAt = str.charAt(i2);
                    if (charAt != '[') {
                        break;
                    }
                    i2++;
                }
                if (charAt != 'D') {
                    i4 = i2;
                    if (charAt == 'J') {
                    }
                }
                i5--;
                i4 = i2;
            } else {
                i5 = (charAt2 == 'D' || charAt2 == 'J') ? i5 + 2 : i5 + 1;
                i4 = i2;
            }
        }
        char charAt3 = str.charAt(i2);
        if (charAt3 == 'V') {
            i3 = 0;
        } else if (charAt3 == 'D' || charAt3 == 'J') {
            i3 = 2;
        }
        return (i5 << 2) | i3;
    }

    private t e() {
        return a(this.k, this.l + d());
    }

    public final String a() {
        switch (this.j) {
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
                StringBuffer stringBuffer = new StringBuffer(e().a());
                for (int d2 = d(); d2 > 0; d2--) {
                    stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                }
                return stringBuffer.toString();
            case 10:
                return new String(this.k, this.l, this.m).replace('/', '.');
            default:
                return null;
        }
    }

    public final String b() {
        return new String(this.k, this.l, this.m);
    }

    public final String c() {
        StringBuffer stringBuffer = new StringBuffer();
        a(stringBuffer);
        return stringBuffer.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        int i2 = this.j;
        if (i2 != tVar.j) {
            return false;
        }
        if (i2 < 9) {
            return true;
        }
        int i3 = this.m;
        if (i3 != tVar.m) {
            return false;
        }
        int i4 = this.l;
        int i5 = tVar.l;
        int i6 = i4;
        while (i6 < i3 + i4) {
            if (this.k[i6] != tVar.k[i5]) {
                return false;
            }
            i6++;
            i5++;
        }
        return true;
    }

    public final int hashCode() {
        int i2 = this.j;
        int i3 = i2 * 13;
        int i4 = i3;
        if (i2 >= 9) {
            int i5 = this.l;
            int i6 = this.m;
            int i7 = i5;
            while (true) {
                i4 = i3;
                if (i7 >= i6 + i5) {
                    break;
                }
                i3 = (i3 + this.k[i7]) * 17;
                i7++;
            }
        }
        return i4;
    }

    public final String toString() {
        return c();
    }
}
