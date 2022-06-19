package p1727n3.p1834m0;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: n3.m0.f */
/* loaded from: classes-dex2jar.jar:n3/m0/f.class */
public final class C26829f {

    /* renamed from: b */
    public static final String f75076b = AbstractC26839p.m1295e("Data");

    /* renamed from: c */
    public static final C26829f f75077c;

    /* renamed from: a */
    public Map<String, Object> f75078a;

    /* renamed from: n3.m0.f$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/f$a.class */
    public static final class C26830a {

        /* renamed from: a */
        public Map<String, Object> f75079a = new HashMap();

        /* renamed from: a */
        public C26829f m1299a() {
            C26829f c26829f = new C26829f(this.f75079a);
            C26829f.m1300g(c26829f);
            return c26829f;
        }

        /* renamed from: b */
        public C26830a m1298b(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    this.f75079a.put(key, null);
                } else {
                    Class<?> cls = value.getClass();
                    if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                        this.f75079a.put(key, value);
                    } else {
                        if (cls == boolean[].class) {
                            Map<String, Object> map2 = this.f75079a;
                            boolean[] zArr = (boolean[]) value;
                            String str = C26829f.f75076b;
                            Boolean[] boolArr = new Boolean[zArr.length];
                            for (int i = 0; i < zArr.length; i++) {
                                boolArr[i] = Boolean.valueOf(zArr[i]);
                            }
                            map2.put(key, boolArr);
                        } else if (cls == byte[].class) {
                            Map<String, Object> map3 = this.f75079a;
                            byte[] bArr = (byte[]) value;
                            String str2 = C26829f.f75076b;
                            Byte[] bArr2 = new Byte[bArr.length];
                            for (int i2 = 0; i2 < bArr.length; i2++) {
                                bArr2[i2] = Byte.valueOf(bArr[i2]);
                            }
                            map3.put(key, bArr2);
                        } else if (cls == int[].class) {
                            Map<String, Object> map4 = this.f75079a;
                            int[] iArr = (int[]) value;
                            String str3 = C26829f.f75076b;
                            Integer[] numArr = new Integer[iArr.length];
                            for (int i3 = 0; i3 < iArr.length; i3++) {
                                numArr[i3] = Integer.valueOf(iArr[i3]);
                            }
                            map4.put(key, numArr);
                        } else if (cls == long[].class) {
                            Map<String, Object> map5 = this.f75079a;
                            long[] jArr = (long[]) value;
                            String str4 = C26829f.f75076b;
                            Long[] lArr = new Long[jArr.length];
                            for (int i4 = 0; i4 < jArr.length; i4++) {
                                lArr[i4] = Long.valueOf(jArr[i4]);
                            }
                            map5.put(key, lArr);
                        } else if (cls == float[].class) {
                            Map<String, Object> map6 = this.f75079a;
                            float[] fArr = (float[]) value;
                            String str5 = C26829f.f75076b;
                            Float[] fArr2 = new Float[fArr.length];
                            for (int i5 = 0; i5 < fArr.length; i5++) {
                                fArr2[i5] = Float.valueOf(fArr[i5]);
                            }
                            map6.put(key, fArr2);
                        } else if (cls != double[].class) {
                            throw new IllegalArgumentException(String.format("Key %s has invalid type %s", key, cls));
                        } else {
                            Map<String, Object> map7 = this.f75079a;
                            double[] dArr = (double[]) value;
                            String str6 = C26829f.f75076b;
                            Double[] dArr2 = new Double[dArr.length];
                            for (int i6 = 0; i6 < dArr.length; i6++) {
                                dArr2[i6] = Double.valueOf(dArr[i6]);
                            }
                            map7.put(key, dArr2);
                        }
                    }
                }
            }
            return this;
        }
    }

    static {
        C26829f c26829f = new C26829f(new HashMap());
        m1300g(c26829f);
        f75077c = c26829f;
    }

    public C26829f() {
    }

    public C26829f(Map<String, ?> map) {
        this.f75078a = new HashMap(map);
    }

    public C26829f(C26829f c26829f) {
        this.f75078a = new HashMap(c26829f.f75078a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00a2 -> B:28:0x007b). Please submit an issue!!! */
    /* renamed from: a */
    public static C26829f m1306a(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Throwable th;
        if (bArr.length <= 10240) {
            HashMap hashMap = new HashMap();
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ObjectInputStream objectInputStream2 = null;
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                } catch (IOException e) {
                }
                try {
                    for (int readInt = objectInputStream.readInt(); readInt > 0; readInt--) {
                        hashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                    }
                    objectInputStream.close();
                } catch (IOException | ClassNotFoundException e2) {
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    byteArrayInputStream.close();
                    return new C26829f(hashMap);
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream2 = objectInputStream;
                    if (objectInputStream2 != null) {
                        try {
                            objectInputStream2.close();
                        } catch (IOException e3) {
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e4) {
                    }
                    throw th;
                }
            } catch (IOException | ClassNotFoundException e5) {
                objectInputStream = null;
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                byteArrayInputStream.close();
            } catch (IOException e6) {
            }
            return new C26829f(hashMap);
        }
        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
    }

    /* renamed from: g */
    public static byte[] m1300g(C26829f c26829f) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        ObjectOutputStream objectOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            } catch (IOException e) {
                objectOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            objectOutputStream2.writeInt(c26829f.f75078a.size());
            for (Map.Entry<String, Object> entry : c26829f.f75078a.entrySet()) {
                objectOutputStream2.writeUTF(entry.getKey());
                objectOutputStream2.writeObject(entry.getValue());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e2) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e3) {
            }
            if (byteArrayOutputStream.size() > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            objectOutputStream = objectOutputStream2;
            objectOutputStream3 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e5) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e6) {
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e7) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e8) {
            }
            throw th;
        }
    }

    /* renamed from: b */
    public boolean m1305b(String str, boolean z) {
        Object obj = this.f75078a.get(str);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
    }

    /* renamed from: c */
    public int m1304c(String str, int i) {
        Object obj = this.f75078a.get(str);
        return obj instanceof Integer ? ((Integer) obj).intValue() : i;
    }

    /* renamed from: d */
    public Map<String, Object> m1303d() {
        return Collections.unmodifiableMap(this.f75078a);
    }

    /* renamed from: e */
    public long m1302e(String str, long j) {
        Object obj = this.f75078a.get(str);
        return obj instanceof Long ? ((Long) obj).longValue() : j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C26829f.class != obj.getClass()) {
            return false;
        }
        C26829f c26829f = (C26829f) obj;
        Set<String> keySet = this.f75078a.keySet();
        if (!keySet.equals(c26829f.f75078a.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f75078a.get(str);
            Object obj3 = c26829f.f75078a.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public String m1301f(String str) {
        Object obj = this.f75078a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public int hashCode() {
        return this.f75078a.hashCode() * 31;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f75078a.isEmpty()) {
            for (String str : this.f75078a.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f75078a.get(str);
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
