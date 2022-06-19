package androidx.work;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.work.d */
/* loaded from: classes-dex2jar.jar:androidx/work/d.class */
public final class C2992d {

    /* renamed from: b */
    public Map<String, Object> f11151b;

    /* renamed from: c */
    private static final String f11150c = AbstractC3145k.m39275a("Data");

    /* renamed from: a */
    public static final C2992d f11149a = new C2993a().m39502a();

    /* renamed from: androidx.work.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/d$a.class */
    public static final class C2993a {

        /* renamed from: a */
        private Map<String, Object> f11152a = new HashMap();

        /* renamed from: a */
        private C2993a m39498a(String str, Object obj) {
            if (obj == null) {
                this.f11152a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f11152a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f11152a.put(str, C2992d.m39504a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f11152a.put(str, C2992d.m39503b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f11152a.put(str, C2992d.m39506a((int[]) obj));
                } else if (cls == long[].class) {
                    this.f11152a.put(str, C2992d.m39505a((long[]) obj));
                } else if (cls == float[].class) {
                    this.f11152a.put(str, C2992d.m39507a((float[]) obj));
                } else if (cls != double[].class) {
                    throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                } else {
                    this.f11152a.put(str, C2992d.m39508a((double[]) obj));
                }
            }
            return this;
        }

        /* renamed from: a */
        public final C2993a m39501a(C2992d c2992d) {
            m39494a(c2992d.f11151b);
            return this;
        }

        /* renamed from: a */
        public final C2993a m39500a(String str, int i) {
            this.f11152a.put(str, Integer.valueOf(i));
            return this;
        }

        /* renamed from: a */
        public final C2993a m39499a(String str, long j) {
            this.f11152a.put(str, Long.valueOf(j));
            return this;
        }

        /* renamed from: a */
        public final C2993a m39497a(String str, String str2) {
            this.f11152a.put(str, str2);
            return this;
        }

        /* renamed from: a */
        public final C2993a m39496a(String str, boolean z) {
            this.f11152a.put(str, Boolean.valueOf(z));
            return this;
        }

        /* renamed from: a */
        public final C2993a m39495a(String str, int[] iArr) {
            this.f11152a.put(str, C2992d.m39506a(iArr));
            return this;
        }

        /* renamed from: a */
        public final C2993a m39494a(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m39498a(entry.getKey(), entry.getValue());
            }
            return this;
        }

        /* renamed from: a */
        public final C2992d m39502a() {
            C2992d c2992d = new C2992d(this.f11152a);
            C2992d.m39513a(c2992d);
            return c2992d;
        }
    }

    C2992d() {
    }

    public C2992d(C2992d c2992d) {
        this.f11151b = new HashMap(c2992d.f11151b);
    }

    C2992d(Map<String, ?> map) {
        this.f11151b = new HashMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00ae). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C2992d m39509a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C2992d.m39509a(byte[]):androidx.work.d");
    }

    /* renamed from: a */
    public static byte[] m39513a(C2992d c2992d) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            } catch (IOException e2) {
                e = e2;
                objectOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            objectOutputStream2.writeInt(c2992d.f11151b.size());
            for (Map.Entry<String, Object> entry : c2992d.f11151b.entrySet()) {
                objectOutputStream2.writeUTF(entry.getKey());
                objectOutputStream2.writeObject(entry.getValue());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e3) {
                Log.e(f11150c, "Error in Data#toByteArray: ", e3);
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
                Log.e(f11150c, "Error in Data#toByteArray: ", e4);
            }
            if (byteArrayOutputStream.size() > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            objectOutputStream = objectOutputStream2;
            e = e5;
            Log.e(f11150c, "Error in Data#toByteArray: ", e);
            objectOutputStream3 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e6) {
                    Log.e(f11150c, "Error in Data#toByteArray: ", e6);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e7) {
                Log.e(f11150c, "Error in Data#toByteArray: ", e7);
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e8) {
                    Log.e(f11150c, "Error in Data#toByteArray: ", e8);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e9) {
                Log.e(f11150c, "Error in Data#toByteArray: ", e9);
            }
            throw th;
        }
    }

    /* renamed from: a */
    static Boolean[] m39504a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: a */
    static Double[] m39508a(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: a */
    static Float[] m39507a(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: a */
    static Integer[] m39506a(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: a */
    static Long[] m39505a(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* renamed from: b */
    static Byte[] m39503b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: a */
    public final int m39511a(String str, int i) {
        Object obj = this.f11151b.get(str);
        return obj instanceof Integer ? ((Integer) obj).intValue() : i;
    }

    /* renamed from: a */
    public final long m39510a(String str, long j) {
        Object obj = this.f11151b.get(str);
        return obj instanceof Long ? ((Long) obj).longValue() : j;
    }

    /* renamed from: a */
    public final String m39512a(String str) {
        Object obj = this.f11151b.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2992d c2992d = (C2992d) obj;
        Set<String> keySet = this.f11151b.keySet();
        if (!keySet.equals(c2992d.f11151b.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f11151b.get(str);
            Object obj3 = c2992d.f11151b.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f11151b.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f11151b.isEmpty()) {
            for (String str : this.f11151b.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f11151b.get(str);
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
