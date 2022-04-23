package androidx.work;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public Map<String, Object> f5978b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f5977c = k.a("Data");

    /* renamed from: a  reason: collision with root package name */
    public static final d f5976a = new a().a();

    /* loaded from: classes-dex2jar.jar:androidx/work/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, Object> f5979a = new HashMap();

        private a a(String str, Object obj) {
            if (obj == null) {
                this.f5979a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f5979a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f5979a.put(str, d.a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f5979a.put(str, d.b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f5979a.put(str, d.a((int[]) obj));
                } else if (cls == long[].class) {
                    this.f5979a.put(str, d.a((long[]) obj));
                } else if (cls == float[].class) {
                    this.f5979a.put(str, d.a((float[]) obj));
                } else if (cls == double[].class) {
                    this.f5979a.put(str, d.a((double[]) obj));
                } else {
                    throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                }
            }
            return this;
        }

        public final a a(d dVar) {
            a(dVar.f5978b);
            return this;
        }

        public final a a(String str, int i) {
            this.f5979a.put(str, Integer.valueOf(i));
            return this;
        }

        public final a a(String str, long j) {
            this.f5979a.put(str, Long.valueOf(j));
            return this;
        }

        public final a a(String str, String str2) {
            this.f5979a.put(str, str2);
            return this;
        }

        public final a a(String str, boolean z) {
            this.f5979a.put(str, Boolean.valueOf(z));
            return this;
        }

        public final a a(String str, int[] iArr) {
            this.f5979a.put(str, d.a(iArr));
            return this;
        }

        public final a a(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                a(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public final d a() {
            d dVar = new d(this.f5979a);
            d.a(dVar);
            return dVar;
        }
    }

    d() {
    }

    public d(d dVar) {
        this.f5978b = new HashMap(dVar.f5978b);
    }

    d(Map<String, ?> map) {
        this.f5978b = new HashMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00ae). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.d a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.d.a(byte[]):androidx.work.d");
    }

    public static byte[] a(d dVar) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            objectOutputStream.writeInt(dVar.f5978b.size());
            for (Map.Entry<String, Object> entry : dVar.f5978b.entrySet()) {
                objectOutputStream.writeUTF(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            try {
                objectOutputStream.close();
            } catch (IOException e3) {
                Log.e(f5977c, "Error in Data#toByteArray: ", e3);
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
                Log.e(f5977c, "Error in Data#toByteArray: ", e4);
            }
            if (byteArrayOutputStream.size() <= 10240) {
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        } catch (IOException e5) {
            e = e5;
            objectOutputStream2 = objectOutputStream;
            Log.e(f5977c, "Error in Data#toByteArray: ", e);
            objectOutputStream3 = objectOutputStream2;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e6) {
                    Log.e(f5977c, "Error in Data#toByteArray: ", e6);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e7) {
                Log.e(f5977c, "Error in Data#toByteArray: ", e7);
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e8) {
                    Log.e(f5977c, "Error in Data#toByteArray: ", e8);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e9) {
                Log.e(f5977c, "Error in Data#toByteArray: ", e9);
            }
            throw th;
        }
    }

    static Boolean[] a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    static Double[] a(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    static Float[] a(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    static Integer[] a(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    static Long[] a(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    static Byte[] b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    public final int a(String str, int i) {
        Object obj = this.f5978b.get(str);
        return obj instanceof Integer ? ((Integer) obj).intValue() : i;
    }

    public final long a(String str, long j) {
        Object obj = this.f5978b.get(str);
        return obj instanceof Long ? ((Long) obj).longValue() : j;
    }

    public final String a(String str) {
        Object obj = this.f5978b.get(str);
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
        d dVar = (d) obj;
        Set<String> keySet = this.f5978b.keySet();
        if (!keySet.equals(dVar.f5978b.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f5978b.get(str);
            Object obj3 = dVar.f5978b.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f5978b.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f5978b.isEmpty()) {
            for (String str : this.f5978b.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f5978b.get(str);
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
