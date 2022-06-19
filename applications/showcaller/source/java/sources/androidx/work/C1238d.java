package androidx.work;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.work.d */
/* loaded from: classes-dex2jar.jar:androidx/work/d.class */
public final class C1238d {

    /* renamed from: a */
    private static final String f5296a = AbstractC1404j.m30159f("Data");

    /* renamed from: b */
    public static final C1238d f5297b = new C1239a().m30547a();

    /* renamed from: c */
    Map<String, Object> f5298c;

    /* renamed from: androidx.work.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/d$a.class */
    public static final class C1239a {

        /* renamed from: a */
        private Map<String, Object> f5299a = new HashMap();

        /* renamed from: a */
        public C1238d m30547a() {
            C1238d c1238d = new C1238d(this.f5299a);
            C1238d.m30548k(c1238d);
            return c1238d;
        }

        /* renamed from: b */
        public C1239a m30546b(String str, Object obj) {
            if (obj == null) {
                this.f5299a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f5299a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f5299a.put(str, C1238d.m30558a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f5299a.put(str, C1238d.m30557b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f5299a.put(str, C1238d.m30554e((int[]) obj));
                } else if (cls == long[].class) {
                    this.f5299a.put(str, C1238d.m30553f((long[]) obj));
                } else if (cls == float[].class) {
                    this.f5299a.put(str, C1238d.m30555d((float[]) obj));
                } else if (cls != double[].class) {
                    throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                } else {
                    this.f5299a.put(str, C1238d.m30556c((double[]) obj));
                }
            }
            return this;
        }

        /* renamed from: c */
        public C1239a m30545c(C1238d c1238d) {
            m30544d(c1238d.f5298c);
            return this;
        }

        /* renamed from: d */
        public C1239a m30544d(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m30546b(entry.getKey(), entry.getValue());
            }
            return this;
        }

        /* renamed from: e */
        public C1239a m30543e(String str, String str2) {
            this.f5299a.put(str, str2);
            return this;
        }
    }

    C1238d() {
    }

    public C1238d(C1238d c1238d) {
        this.f5298c = new HashMap(c1238d.f5298c);
    }

    public C1238d(Map<String, ?> map) {
        this.f5298c = new HashMap(map);
    }

    /* renamed from: a */
    public static Boolean[] m30558a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: b */
    public static Byte[] m30557b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: c */
    public static Double[] m30556c(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: d */
    public static Float[] m30555d(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: e */
    public static Integer[] m30554e(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: f */
    public static Long[] m30553f(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00ae). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C1238d m30552g(byte[] r4) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C1238d.m30552g(byte[]):androidx.work.d");
    }

    /* renamed from: k */
    public static byte[] m30548k(C1238d c1238d) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            objectOutputStream = null;
        }
        try {
            objectOutputStream2.writeInt(c1238d.m30549j());
            for (Map.Entry<String, Object> entry : c1238d.f5298c.entrySet()) {
                objectOutputStream2.writeUTF(entry.getKey());
                objectOutputStream2.writeObject(entry.getValue());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e3) {
                Log.e(f5296a, "Error in Data#toByteArray: ", e3);
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
                Log.e(f5296a, "Error in Data#toByteArray: ", e4);
            }
            if (byteArrayOutputStream.size() > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            objectOutputStream = objectOutputStream2;
            e = e5;
            Log.e(f5296a, "Error in Data#toByteArray: ", e);
            ObjectOutputStream objectOutputStream4 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e6) {
                    Log.e(f5296a, "Error in Data#toByteArray: ", e6);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e7) {
                Log.e(f5296a, "Error in Data#toByteArray: ", e7);
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e8) {
                    Log.e(f5296a, "Error in Data#toByteArray: ", e8);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e9) {
                Log.e(f5296a, "Error in Data#toByteArray: ", e9);
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1238d.class != obj.getClass()) {
            return false;
        }
        C1238d c1238d = (C1238d) obj;
        Set<String> keySet = this.f5298c.keySet();
        if (!keySet.equals(c1238d.f5298c.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f5298c.get(str);
            Object obj3 = c1238d.f5298c.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    public Map<String, Object> m30551h() {
        return Collections.unmodifiableMap(this.f5298c);
    }

    public int hashCode() {
        return this.f5298c.hashCode() * 31;
    }

    /* renamed from: i */
    public String m30550i(String str) {
        Object obj = this.f5298c.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    /* renamed from: j */
    public int m30549j() {
        return this.f5298c.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f5298c.isEmpty()) {
            for (String str : this.f5298c.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f5298c.get(str);
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
