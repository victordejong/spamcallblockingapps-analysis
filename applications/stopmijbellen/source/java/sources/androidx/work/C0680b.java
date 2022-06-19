package androidx.work;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p186o1.AbstractC3824h;
/* renamed from: androidx.work.b */
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class C0680b {

    /* renamed from: b */
    public static final C0680b f2639b;

    /* renamed from: a */
    public Map<String, Object> f2640a;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class C0681a {

        /* renamed from: a */
        public Map<String, Object> f2641a = new HashMap();

        /* renamed from: a */
        public C0680b m7482a() {
            C0680b c0680b = new C0680b(this.f2641a);
            C0680b.m7483c(c0680b);
            return c0680b;
        }

        /* renamed from: b */
        public C0681a m7481b(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    this.f2641a.put(key, null);
                } else {
                    Class<?> cls = value.getClass();
                    if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                        this.f2641a.put(key, value);
                    } else {
                        if (cls == boolean[].class) {
                            Map<String, Object> map2 = this.f2641a;
                            boolean[] zArr = (boolean[]) value;
                            C0680b c0680b = C0680b.f2639b;
                            Boolean[] boolArr = new Boolean[zArr.length];
                            for (int i = 0; i < zArr.length; i++) {
                                boolArr[i] = Boolean.valueOf(zArr[i]);
                            }
                            map2.put(key, boolArr);
                        } else if (cls == byte[].class) {
                            Map<String, Object> map3 = this.f2641a;
                            byte[] bArr = (byte[]) value;
                            C0680b c0680b2 = C0680b.f2639b;
                            Byte[] bArr2 = new Byte[bArr.length];
                            for (int i2 = 0; i2 < bArr.length; i2++) {
                                bArr2[i2] = Byte.valueOf(bArr[i2]);
                            }
                            map3.put(key, bArr2);
                        } else if (cls == int[].class) {
                            Map<String, Object> map4 = this.f2641a;
                            int[] iArr = (int[]) value;
                            C0680b c0680b3 = C0680b.f2639b;
                            Integer[] numArr = new Integer[iArr.length];
                            for (int i3 = 0; i3 < iArr.length; i3++) {
                                numArr[i3] = Integer.valueOf(iArr[i3]);
                            }
                            map4.put(key, numArr);
                        } else if (cls == long[].class) {
                            Map<String, Object> map5 = this.f2641a;
                            long[] jArr = (long[]) value;
                            C0680b c0680b4 = C0680b.f2639b;
                            Long[] lArr = new Long[jArr.length];
                            for (int i4 = 0; i4 < jArr.length; i4++) {
                                lArr[i4] = Long.valueOf(jArr[i4]);
                            }
                            map5.put(key, lArr);
                        } else if (cls == float[].class) {
                            Map<String, Object> map6 = this.f2641a;
                            float[] fArr = (float[]) value;
                            C0680b c0680b5 = C0680b.f2639b;
                            Float[] fArr2 = new Float[fArr.length];
                            for (int i5 = 0; i5 < fArr.length; i5++) {
                                fArr2[i5] = Float.valueOf(fArr[i5]);
                            }
                            map6.put(key, fArr2);
                        } else if (cls != double[].class) {
                            throw new IllegalArgumentException(String.format("Key %s has invalid type %s", key, cls));
                        } else {
                            Map<String, Object> map7 = this.f2641a;
                            double[] dArr = (double[]) value;
                            C0680b c0680b6 = C0680b.f2639b;
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
        AbstractC3824h.m1773e("Data");
        C0680b c0680b = new C0680b(new HashMap());
        m7483c(c0680b);
        f2639b = c0680b;
    }

    public C0680b() {
    }

    public C0680b(C0680b c0680b) {
        this.f2640a = new HashMap(c0680b.f2640a);
    }

    public C0680b(Map<String, ?> map) {
        this.f2640a = new HashMap(map);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x009b -> B:30:0x007a). Please submit an issue!!! */
    /* renamed from: a */
    public static C0680b m7485a(byte[] bArr) {
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
                    return new C0680b(hashMap);
                } catch (Throwable th2) {
                    objectInputStream2 = objectInputStream;
                    th = th2;
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
            return new C0680b(hashMap);
        }
        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
    }

    /* renamed from: c */
    public static byte[] m7483c(C0680b c0680b) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        ObjectOutputStream objectOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e) {
            objectOutputStream = null;
        }
        try {
            objectOutputStream2.writeInt(c0680b.f2640a.size());
            for (Map.Entry<String, Object> entry : c0680b.f2640a.entrySet()) {
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
    public String m7484b(String str) {
        Object obj = this.f2640a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0680b.class != obj.getClass()) {
            return false;
        }
        C0680b c0680b = (C0680b) obj;
        Set<String> keySet = this.f2640a.keySet();
        if (!keySet.equals(c0680b.f2640a.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f2640a.get(str);
            Object obj3 = c0680b.f2640a.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.f2640a.hashCode() * 31;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f2640a.isEmpty()) {
            for (String str : this.f2640a.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f2640a.get(str);
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
