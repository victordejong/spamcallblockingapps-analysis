package androidx.work;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.d */
/* loaded from: classes-dex2jar.jar:androidx/work/d.class */
public final class C0552d {

    /* renamed from: b */
    private static final String f2982b = AbstractC0555f.m11738f("Data");

    /* renamed from: c */
    public static final C0552d f2983c = new C0553a().m11750a();

    /* renamed from: a */
    Map<String, Object> f2984a;

    /* renamed from: androidx.work.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/d$a.class */
    public static final class C0553a {

        /* renamed from: a */
        private Map<String, Object> f2985a = new HashMap();

        /* renamed from: a */
        public C0552d m11750a() {
            C0552d c0552d = new C0552d(this.f2985a);
            C0552d.m11751k(c0552d);
            return c0552d;
        }

        /* renamed from: b */
        public C0553a m11749b(String str, Object obj) {
            if (obj == null) {
                this.f2985a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f2985a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f2985a.put(str, C0552d.m11761a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f2985a.put(str, C0552d.m11760b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f2985a.put(str, C0552d.m11757e((int[]) obj));
                } else if (cls == long[].class) {
                    this.f2985a.put(str, C0552d.m11756f((long[]) obj));
                } else if (cls == float[].class) {
                    this.f2985a.put(str, C0552d.m11758d((float[]) obj));
                } else if (cls != double[].class) {
                    throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                } else {
                    this.f2985a.put(str, C0552d.m11759c((double[]) obj));
                }
            }
            return this;
        }

        /* renamed from: c */
        public C0553a m11748c(C0552d c0552d) {
            m11747d(c0552d.f2984a);
            return this;
        }

        /* renamed from: d */
        public C0553a m11747d(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m11749b(entry.getKey(), entry.getValue());
            }
            return this;
        }

        /* renamed from: e */
        public C0553a m11746e(String str, String str2) {
            this.f2985a.put(str, str2);
            return this;
        }
    }

    C0552d() {
    }

    public C0552d(C0552d c0552d) {
        this.f2984a = new HashMap(c0552d.f2984a);
    }

    C0552d(Map<String, ?> map) {
        this.f2984a = new HashMap(map);
    }

    /* renamed from: a */
    static Boolean[] m11761a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: b */
    static Byte[] m11760b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: c */
    static Double[] m11759c(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: d */
    static Float[] m11758d(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: e */
    static Integer[] m11757e(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: f */
    static Long[] m11756f(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00ae). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C0552d m11755g(byte[] r4) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C0552d.m11755g(byte[]):androidx.work.d");
    }

    /* renamed from: k */
    public static byte[] m11751k(C0552d c0552d) {
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
            objectOutputStream2.writeInt(c0552d.m11752j());
            for (Map.Entry<String, Object> entry : c0552d.f2984a.entrySet()) {
                objectOutputStream2.writeUTF(entry.getKey());
                objectOutputStream2.writeObject(entry.getValue());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e3) {
                Log.e(f2982b, "Error in Data#toByteArray: ", e3);
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
                Log.e(f2982b, "Error in Data#toByteArray: ", e4);
            }
            if (byteArrayOutputStream.size() > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            objectOutputStream = objectOutputStream2;
            e = e5;
            Log.e(f2982b, "Error in Data#toByteArray: ", e);
            ObjectOutputStream objectOutputStream4 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e6) {
                    Log.e(f2982b, "Error in Data#toByteArray: ", e6);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e7) {
                Log.e(f2982b, "Error in Data#toByteArray: ", e7);
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e8) {
                    Log.e(f2982b, "Error in Data#toByteArray: ", e8);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e9) {
                Log.e(f2982b, "Error in Data#toByteArray: ", e9);
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0552d.class == obj.getClass()) {
            return this.f2984a.equals(((C0552d) obj).f2984a);
        }
        return false;
    }

    /* renamed from: h */
    public Map<String, Object> m11754h() {
        return Collections.unmodifiableMap(this.f2984a);
    }

    public int hashCode() {
        return this.f2984a.hashCode() * 31;
    }

    /* renamed from: i */
    public String m11753i(String str) {
        Object obj = this.f2984a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    /* renamed from: j */
    public int m11752j() {
        return this.f2984a.size();
    }
}
