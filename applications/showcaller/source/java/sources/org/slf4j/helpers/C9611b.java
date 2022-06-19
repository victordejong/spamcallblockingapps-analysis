package org.slf4j.helpers;

import java.util.HashMap;
import java.util.Map;
/* renamed from: org.slf4j.helpers.b */
/* loaded from: classes2-dex2jar.jar:org/slf4j/helpers/b.class */
public final class C9611b {
    /* renamed from: a */
    public static final C9610a m329a(String str, Object[] objArr) {
        Throwable m321i = m321i(objArr);
        Object[] objArr2 = objArr;
        if (m321i != null) {
            objArr2 = m313q(objArr);
        }
        return m328b(str, objArr2, m321i);
    }

    /* renamed from: b */
    public static final C9610a m328b(String str, Object[] objArr, Throwable th) {
        int i;
        int i2;
        if (str == null) {
            return new C9610a(null, objArr, th);
        }
        if (objArr == null) {
            return new C9610a(str);
        }
        StringBuilder sb = new StringBuilder(str.length() + 50);
        int i3 = 0;
        int i4 = 0;
        while (i3 < objArr.length) {
            int indexOf = str.indexOf("{}", i4);
            if (indexOf == -1) {
                if (i4 == 0) {
                    return new C9610a(str, objArr, th);
                }
                sb.append((CharSequence) str, i4, str.length());
                return new C9610a(sb.toString(), objArr, th);
            }
            if (!m318l(str, indexOf)) {
                sb.append((CharSequence) str, i4, indexOf);
                m324f(sb, objArr[i3], new HashMap());
            } else if (!m319k(str, indexOf)) {
                i3--;
                sb.append((CharSequence) str, i4, indexOf - 1);
                sb.append('{');
                i2 = indexOf;
                i = 1;
                i4 = i2 + i;
                i3++;
            } else {
                sb.append((CharSequence) str, i4, indexOf - 1);
                m324f(sb, objArr[i3], new HashMap());
            }
            i2 = indexOf;
            i = 2;
            i4 = i2 + i;
            i3++;
        }
        sb.append((CharSequence) str, i4, str.length());
        return new C9610a(sb.toString(), objArr, th);
    }

    /* renamed from: c */
    private static void m327c(StringBuilder sb, boolean[] zArr) {
        sb.append('[');
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(zArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: d */
    private static void m326d(StringBuilder sb, byte[] bArr) {
        sb.append('[');
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            sb.append((int) bArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: e */
    private static void m325e(StringBuilder sb, char[] cArr) {
        sb.append('[');
        int length = cArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(cArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: f */
    private static void m324f(StringBuilder sb, Object obj, Map<Object[], Object> map) {
        if (obj == null) {
            sb.append("null");
        } else if (!obj.getClass().isArray()) {
            m315o(sb, obj);
        } else if (obj instanceof boolean[]) {
            m327c(sb, (boolean[]) obj);
        } else if (obj instanceof byte[]) {
            m326d(sb, (byte[]) obj);
        } else if (obj instanceof char[]) {
            m325e(sb, (char[]) obj);
        } else if (obj instanceof short[]) {
            m314p(sb, (short[]) obj);
        } else if (obj instanceof int[]) {
            m320j(sb, (int[]) obj);
        } else if (obj instanceof long[]) {
            m317m(sb, (long[]) obj);
        } else if (obj instanceof float[]) {
            m322h(sb, (float[]) obj);
        } else if (obj instanceof double[]) {
            m323g(sb, (double[]) obj);
        } else {
            m316n(sb, (Object[]) obj, map);
        }
    }

    /* renamed from: g */
    private static void m323g(StringBuilder sb, double[] dArr) {
        sb.append('[');
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(dArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: h */
    private static void m322h(StringBuilder sb, float[] fArr) {
        sb.append('[');
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(fArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: i */
    static final Throwable m321i(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        Object obj = objArr[objArr.length - 1];
        if (!(obj instanceof Throwable)) {
            return null;
        }
        return (Throwable) obj;
    }

    /* renamed from: j */
    private static void m320j(StringBuilder sb, int[] iArr) {
        sb.append('[');
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(iArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: k */
    static final boolean m319k(String str, int i) {
        return i >= 2 && str.charAt(i - 2) == '\\';
    }

    /* renamed from: l */
    static final boolean m318l(String str, int i) {
        return i != 0 && str.charAt(i - 1) == '\\';
    }

    /* renamed from: m */
    private static void m317m(StringBuilder sb, long[] jArr) {
        sb.append('[');
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(jArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: n */
    private static void m316n(StringBuilder sb, Object[] objArr, Map<Object[], Object> map) {
        sb.append('[');
        if (!map.containsKey(objArr)) {
            map.put(objArr, null);
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                m324f(sb, objArr[i], map);
                if (i != length - 1) {
                    sb.append(", ");
                }
            }
            map.remove(objArr);
        } else {
            sb.append("...");
        }
        sb.append(']');
    }

    /* renamed from: o */
    private static void m315o(StringBuilder sb, Object obj) {
        try {
            sb.append(obj.toString());
        } catch (Throwable th) {
            C9615f.m299b("SLF4J: Failed toString() invocation on an object of type [" + obj.getClass().getName() + "]", th);
            sb.append("[FAILED toString()]");
        }
    }

    /* renamed from: p */
    private static void m314p(StringBuilder sb, short[] sArr) {
        sb.append('[');
        int length = sArr.length;
        for (int i = 0; i < length; i++) {
            sb.append((int) sArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: q */
    private static Object[] m313q(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            throw new IllegalStateException("non-sensical empty or null argument array");
        }
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        return objArr2;
    }
}
