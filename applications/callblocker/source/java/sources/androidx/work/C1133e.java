package androidx.work;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.work.e */
/* loaded from: classes-dex2jar.jar:androidx/work/e.class */
public final class C1133e {

    /* renamed from: b */
    Map<String, Object> f3917b;

    /* renamed from: c */
    private static final String f3916c = AbstractC1293l.m17541a("Data");

    /* renamed from: a */
    public static final C1133e f3915a = new C1134a().m17912a();

    /* renamed from: androidx.work.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/e$a.class */
    public static final class C1134a {

        /* renamed from: a */
        private Map<String, Object> f3918a = new HashMap();

        /* renamed from: a */
        public C1134a m17911a(C1133e c1133e) {
            m17908a(c1133e.f3917b);
            return this;
        }

        /* renamed from: a */
        public C1134a m17910a(String str, Object obj) {
            if (obj == null) {
                this.f3918a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f3918a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f3918a.put(str, C1133e.m17915a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f3918a.put(str, C1133e.m17913b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f3918a.put(str, C1133e.m17917a((int[]) obj));
                } else if (cls == long[].class) {
                    this.f3918a.put(str, C1133e.m17916a((long[]) obj));
                } else if (cls == float[].class) {
                    this.f3918a.put(str, C1133e.m17918a((float[]) obj));
                } else if (cls != double[].class) {
                    throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                } else {
                    this.f3918a.put(str, C1133e.m17919a((double[]) obj));
                }
            }
            return this;
        }

        /* renamed from: a */
        public C1134a m17909a(String str, String str2) {
            this.f3918a.put(str, str2);
            return this;
        }

        /* renamed from: a */
        public C1134a m17908a(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m17910a(entry.getKey(), entry.getValue());
            }
            return this;
        }

        /* renamed from: a */
        public C1133e m17912a() {
            C1133e c1133e = new C1133e(this.f3918a);
            C1133e.m17922a(c1133e);
            return c1133e;
        }
    }

    C1133e() {
    }

    public C1133e(C1133e c1133e) {
        this.f3917b = new HashMap(c1133e.f3917b);
    }

    C1133e(Map<String, ?> map) {
        this.f3917b = new HashMap(map);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0076 -> B:19:0x005e). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C1133e m17920a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C1133e.m17920a(byte[]):androidx.work.e");
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m17922a(androidx.work.C1133e r4) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C1133e.m17922a(androidx.work.e):byte[]");
    }

    /* renamed from: a */
    static Boolean[] m17915a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: a */
    static Double[] m17919a(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: a */
    static Float[] m17918a(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: a */
    static Integer[] m17917a(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: a */
    static Long[] m17916a(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* renamed from: b */
    static Byte[] m17913b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: a */
    public String m17921a(String str) {
        Object obj = this.f3917b.get(str);
        return obj instanceof String ? (String) obj : null;
    }

    /* renamed from: a */
    public Map<String, Object> m17923a() {
        return Collections.unmodifiableMap(this.f3917b);
    }

    /* renamed from: b */
    public int m17914b() {
        return this.f3917b.size();
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    C1133e c1133e = (C1133e) obj;
                    Set<String> keySet = this.f3917b.keySet();
                    z = false;
                    if (keySet.equals(c1133e.f3917b.keySet())) {
                        Iterator<String> it = keySet.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = true;
                                break;
                            }
                            String next = it.next();
                            Object obj2 = this.f3917b.get(next);
                            Object obj3 = c1133e.f3917b.get(next);
                            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                                z = false;
                                break;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f3917b.hashCode() * 31;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f3917b.isEmpty()) {
            for (String str : this.f3917b.keySet()) {
                sb.append(str).append(" : ");
                Object obj = this.f3917b.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
