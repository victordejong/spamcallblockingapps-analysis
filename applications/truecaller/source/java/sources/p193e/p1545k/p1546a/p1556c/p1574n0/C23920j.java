package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
/* renamed from: e.k.a.c.n0.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/j.class */
public class C23920j implements Serializable {

    /* renamed from: a */
    public final Class<Enum<?>> f66170a;

    /* renamed from: b */
    public final Enum<?>[] f66171b;

    /* renamed from: c */
    public final HashMap<String, Enum<?>> f66172c;

    /* renamed from: d */
    public final Enum<?> f66173d;

    /* renamed from: e */
    public final boolean f66174e;

    public C23920j(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r7, boolean z) {
        this.f66170a = cls;
        this.f66171b = enumArr;
        this.f66172c = hashMap;
        this.f66173d = r7;
        this.f66174e = z;
    }

    /* renamed from: a */
    public static Enum<?>[] m5735a(Class<?> cls) {
        Enum<?>[] enumArr = (Enum[]) cls.getEnumConstants();
        if (enumArr != null) {
            return enumArr;
        }
        throw new IllegalArgumentException(C22128a.m8647Z1(cls, C22128a.m8728C("No enum constants for class ")));
    }

    /* renamed from: b */
    public static Enum<?> m5734b(AbstractC23426b abstractC23426b, Class<?> cls) {
        return abstractC23426b != null ? abstractC23426b.mo6285g(cls) : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.String[], java.lang.String[][]] */
    /* renamed from: d */
    public static C23920j m5732d(C23624f c23624f, Class<?> cls) {
        AbstractC23426b m6864e = c23624f.m6864e();
        boolean m6859o = c23624f.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_ENUMS);
        Enum<?>[] m5735a = m5735a(cls);
        HashMap hashMap = new HashMap();
        ?? r0 = new String[m5735a.length];
        m6864e.mo6277k(cls, m5735a, r0);
        int length = m5735a.length;
        while (true) {
            int i = length - 1;
            if (i >= 0) {
                Enum<?> r02 = m5735a[i];
                hashMap.put(r02.toString(), r02);
                Object[] objArr = r0[i];
                length = i;
                if (objArr != 0) {
                    int length2 = objArr.length;
                    int i2 = 0;
                    while (true) {
                        length = i;
                        if (i2 < length2) {
                            Object[] objArr2 = objArr[i2];
                            if (!hashMap.containsKey(objArr2)) {
                                hashMap.put(objArr2, r02);
                            }
                            i2++;
                        }
                    }
                }
            } else {
                return new C23920j(cls, m5735a, hashMap, m5734b(m6864e, cls), m6859o);
            }
        }
    }

    /* renamed from: c */
    public C23917h m5733c() {
        C23917h c23917h;
        int i;
        HashMap<String, Enum<?>> hashMap = this.f66172c;
        if (hashMap.isEmpty()) {
            c23917h = C23917h.f66166d;
        } else {
            int size = hashMap.size();
            if (size <= 5) {
                i = 8;
            } else if (size > 12) {
                int i2 = 32;
                while (true) {
                    i = i2;
                    if (i >= size + (size >> 2)) {
                        break;
                    }
                    i2 = i + i;
                }
            } else {
                i = 16;
            }
            int i3 = i - 1;
            int i4 = (i >> 1) + i;
            Object[] objArr = new Object[i4 * 2];
            int i5 = 0;
            for (Map.Entry<String, Enum<?>> entry : hashMap.entrySet()) {
                String key = entry.getKey();
                if (key != null) {
                    int hashCode = key.hashCode() & i3;
                    int i6 = hashCode + hashCode;
                    Object[] objArr2 = objArr;
                    int i7 = i5;
                    int i8 = i6;
                    if (objArr[i6] != null) {
                        int i9 = ((hashCode >> 1) + i) << 1;
                        objArr2 = objArr;
                        i7 = i5;
                        i8 = i9;
                        if (objArr[i9] != null) {
                            int i10 = (i4 << 1) + i5;
                            int i11 = i5 + 2;
                            objArr2 = objArr;
                            i7 = i11;
                            i8 = i10;
                            if (i10 >= objArr.length) {
                                objArr2 = Arrays.copyOf(objArr, objArr.length + 4);
                                i8 = i10;
                                i7 = i11;
                            }
                        }
                    }
                    objArr2[i8] = key;
                    objArr2[i8 + 1] = entry.getValue();
                    objArr = objArr2;
                    i5 = i7;
                }
            }
            c23917h = new C23917h(i3, i5, objArr);
        }
        return c23917h;
    }
}
