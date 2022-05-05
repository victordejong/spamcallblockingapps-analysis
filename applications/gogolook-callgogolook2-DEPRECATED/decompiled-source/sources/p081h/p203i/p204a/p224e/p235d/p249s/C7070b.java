package p081h.p203i.p204a.p224e.p235d.p249s;

import java.lang.reflect.Array;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
/* renamed from: h.i.a.e.d.s.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/b.class */
public final class C7070b {
    /* renamed from: a */
    public static void m21170a(StringBuilder sb, double[] dArr) {
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(dArr[i]));
        }
    }

    /* renamed from: a */
    public static void m21169a(StringBuilder sb, float[] fArr) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(fArr[i]));
        }
    }

    /* renamed from: a */
    public static void m21168a(StringBuilder sb, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(iArr[i]));
        }
    }

    /* renamed from: a */
    public static void m21167a(StringBuilder sb, long[] jArr) {
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(jArr[i]));
        }
    }

    /* renamed from: a */
    public static <T> void m21166a(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(tArr[i].toString());
        }
    }

    /* renamed from: a */
    public static void m21165a(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(strArr[i]);
            sb.append("\"");
        }
    }

    /* renamed from: a */
    public static void m21164a(StringBuilder sb, boolean[] zArr) {
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(zArr[i]));
        }
    }

    /* renamed from: a */
    public static <T> boolean m21163a(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (C7018s.m21297a(tArr[i], t)) {
                break;
            } else {
                i++;
            }
        }
        return i >= 0;
    }

    /* renamed from: a */
    public static <T> T[] m21162a(T[] tArr, T... tArr2) {
        int i;
        if (tArr == null) {
            return null;
        }
        if (tArr2 == null || tArr2.length == 0) {
            return (T[]) Arrays.copyOf(tArr, tArr.length);
        }
        Object[] objArr = (Object[]) Array.newInstance(tArr2.getClass().getComponentType(), tArr.length);
        int i2 = 0;
        if (tArr2.length != 1) {
            int length = tArr.length;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= length) {
                    break;
                }
                T t = tArr[i2];
                i3 = i3;
                if (!m21163a(tArr2, t)) {
                    objArr[i3] = t;
                    i3++;
                }
                i2++;
            }
        } else {
            int length2 = tArr.length;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i4 >= length2) {
                    break;
                }
                T t2 = tArr[i4];
                i5 = i5;
                if (!C7018s.m21297a(tArr2[0], t2)) {
                    objArr[i5] = t2;
                    i5++;
                }
                i4++;
            }
        }
        if (objArr == null) {
            return null;
        }
        T[] tArr3 = (T[]) objArr;
        if (i != objArr.length) {
            tArr3 = (T[]) Arrays.copyOf(objArr, i);
        }
        return tArr3;
    }

    /* renamed from: a */
    public static <T> T[] m21161a(T[]... tArr) {
        if (tArr.length == 0) {
            return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
        }
        int i = 0;
        for (T[] tArr2 : tArr) {
            i += tArr2.length;
        }
        T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i);
        int length = tArr[0].length;
        for (int i2 = 1; i2 < tArr.length; i2++) {
            T[] tArr4 = tArr[i2];
            System.arraycopy(tArr4, 0, tArr3, length, tArr4.length);
            length += tArr4.length;
        }
        return tArr3;
    }
}
