package androidx.p013b;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: androidx.b.g */
/* loaded from: classes-dex2jar.jar:androidx/b/g.class */
public class C0386g<K, V> {

    /* renamed from: b */
    static Object[] f1588b;

    /* renamed from: c */
    static int f1589c;

    /* renamed from: d */
    static Object[] f1590d;

    /* renamed from: e */
    static int f1591e;

    /* renamed from: f */
    int[] f1592f;

    /* renamed from: g */
    Object[] f1593g;

    /* renamed from: h */
    int f1594h;

    public C0386g() {
        this.f1592f = C0377c.f1557a;
        this.f1593g = C0377c.f1559c;
        this.f1594h = 0;
    }

    public C0386g(int i) {
        if (i == 0) {
            this.f1592f = C0377c.f1557a;
            this.f1593g = C0377c.f1559c;
        } else {
            m21082e(i);
        }
        this.f1594h = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0386g(C0386g<K, V> c0386g) {
        this();
        if (c0386g != 0) {
            mo17010a((C0386g) c0386g);
        }
    }

    /* renamed from: a */
    private static int m21087a(int[] iArr, int i, int i2) {
        try {
            return C0377c.m21137a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    private static void m21086a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0386g.class) {
                try {
                    if (f1591e < 10) {
                        objArr[0] = f1590d;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f1590d = objArr;
                        f1591e++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0386g.class) {
                try {
                    if (f1589c < 10) {
                        objArr[0] = f1588b;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f1588b = objArr;
                        f1589c++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: e */
    private void m21082e(int i) {
        if (i == 8) {
            synchronized (C0386g.class) {
                try {
                    if (f1590d != null) {
                        Object[] objArr = f1590d;
                        this.f1593g = objArr;
                        f1590d = (Object[]) objArr[0];
                        this.f1592f = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1591e--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0386g.class) {
                try {
                    if (f1588b != null) {
                        Object[] objArr2 = f1588b;
                        this.f1593g = objArr2;
                        f1588b = (Object[]) objArr2[0];
                        this.f1592f = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1589c--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1592f = new int[i];
        this.f1593g = new Object[i << 1];
    }

    /* renamed from: a */
    int m21091a() {
        int i;
        int i2 = this.f1594h;
        if (i2 == 0) {
            i = -1;
        } else {
            int m21087a = m21087a(this.f1592f, i2, 0);
            i = m21087a;
            if (m21087a >= 0) {
                i = m21087a;
                if (this.f1593g[m21087a << 1] != null) {
                    int i3 = m21087a + 1;
                    while (i3 < i2 && this.f1592f[i3] == 0) {
                        if (this.f1593g[i3 << 1] == null) {
                            i = i3;
                            break;
                        }
                        i3++;
                    }
                    while (true) {
                        m21087a--;
                        if (m21087a >= 0 && this.f1592f[m21087a] == 0) {
                            i = m21087a;
                            if (this.f1593g[m21087a << 1] == null) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i = i3 ^ (-1);
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m21089a(Object obj) {
        return obj == null ? m21091a() : m21088a(obj, obj.hashCode());
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
        r9 = r11 ^ (-1);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int m21088a(java.lang.Object r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f1594h
            r8 = r0
            r0 = r8
            if (r0 != 0) goto Lf
            r0 = -1
            r9 = r0
        Lc:
            r0 = r9
            return r0
        Lf:
            r0 = r5
            int[] r0 = r0.f1592f
            r1 = r8
            r2 = r7
            int r0 = m21087a(r0, r1, r2)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            if (r0 < 0) goto Lc
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r5
            java.lang.Object[] r1 = r1.f1593g
            r2 = r10
            r3 = 1
            int r2 = r2 << r3
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lc
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
        L3d:
            r0 = r11
            r1 = r8
            if (r0 >= r1) goto L6b
            r0 = r5
            int[] r0 = r0.f1592f
            r1 = r11
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L6b
            r0 = r6
            r1 = r5
            java.lang.Object[] r1 = r1.f1593g
            r2 = r11
            r3 = 1
            int r2 = r2 << r3
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L65
            r0 = r11
            r9 = r0
            goto Lc
        L65:
            int r11 = r11 + 1
            goto L3d
        L6b:
            int r10 = r10 + (-1)
        L6e:
            r0 = r10
            if (r0 < 0) goto L98
            r0 = r5
            int[] r0 = r0.f1592f
            r1 = r10
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L98
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r5
            java.lang.Object[] r1 = r1.f1593g
            r2 = r10
            r3 = 1
            int r2 = r2 << r3
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lc
            int r10 = r10 + (-1)
            goto L6e
        L98:
            r0 = r11
            r1 = -1
            r0 = r0 ^ r1
            r9 = r0
            goto Lc
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p013b.C0386g.m21088a(java.lang.Object, int):int");
    }

    /* renamed from: a */
    public V mo17011a(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = (V) this.f1593g[i2];
        this.f1593g[i2] = v;
        return v2;
    }

    /* renamed from: a */
    public void m21090a(int i) {
        int i2 = this.f1594h;
        if (this.f1592f.length < i) {
            int[] iArr = this.f1592f;
            Object[] objArr = this.f1593g;
            m21082e(i);
            if (this.f1594h > 0) {
                System.arraycopy(iArr, 0, this.f1592f, 0, i2);
                System.arraycopy(objArr, 0, this.f1593g, 0, i2 << 1);
            }
            m21086a(iArr, objArr, i2);
        }
        if (this.f1594h != i2) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    public void mo17010a(C0386g<? extends K, ? extends V> c0386g) {
        int i = c0386g.f1594h;
        m21090a(this.f1594h + i);
        if (this.f1594h != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c0386g.m21085b(i2), c0386g.m21083c(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c0386g.f1592f, 0, this.f1592f, 0, i);
            System.arraycopy(c0386g.f1593g, 0, this.f1593g, 0, i << 1);
            this.f1594h = i;
        }
    }

    /* renamed from: b */
    public int m21084b(Object obj) {
        int i;
        int i2 = this.f1594h * 2;
        Object[] objArr = this.f1593g;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    i = i3 >> 1;
                    break;
                }
            }
            i = -1;
        } else {
            for (int i4 = 1; i4 < i2; i4 += 2) {
                if (obj.equals(objArr[i4])) {
                    i = i4 >> 1;
                    break;
                }
            }
            i = -1;
        }
        return i;
    }

    /* renamed from: b */
    public K m21085b(int i) {
        return (K) this.f1593g[i << 1];
    }

    /* renamed from: c */
    public V m21083c(int i) {
        return (V) this.f1593g[(i << 1) + 1];
    }

    public void clear() {
        if (this.f1594h > 0) {
            int[] iArr = this.f1592f;
            Object[] objArr = this.f1593g;
            int i = this.f1594h;
            this.f1592f = C0377c.f1557a;
            this.f1593g = C0377c.f1559c;
            this.f1594h = 0;
            m21086a(iArr, objArr, i);
        }
        if (this.f1594h > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return m21089a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m21084b(obj) >= 0;
    }

    /* renamed from: d */
    public V mo17009d(int i) {
        int i2;
        int i3 = 8;
        V v = (V) this.f1593g[(i << 1) + 1];
        int i4 = this.f1594h;
        if (i4 <= 1) {
            m21086a(this.f1592f, this.f1593g, i4);
            this.f1592f = C0377c.f1557a;
            this.f1593g = C0377c.f1559c;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            if (this.f1592f.length <= 8 || this.f1594h >= this.f1592f.length / 3) {
                if (i < i5) {
                    System.arraycopy(this.f1592f, i + 1, this.f1592f, i, i5 - i);
                    System.arraycopy(this.f1593g, (i + 1) << 1, this.f1593g, i << 1, (i5 - i) << 1);
                }
                this.f1593g[i5 << 1] = null;
                this.f1593g[(i5 << 1) + 1] = null;
                i2 = i5;
            } else {
                if (i4 > 8) {
                    i3 = (i4 >> 1) + i4;
                }
                int[] iArr = this.f1592f;
                Object[] objArr = this.f1593g;
                m21082e(i3);
                if (i4 != this.f1594h) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f1592f, 0, i);
                    System.arraycopy(objArr, 0, this.f1593g, 0, i << 1);
                }
                if (i < i5) {
                    System.arraycopy(iArr, i + 1, this.f1592f, i, i5 - i);
                    System.arraycopy(objArr, (i + 1) << 1, this.f1593g, i << 1, (i5 - i) << 1);
                }
                i2 = i5;
            }
        }
        if (i4 != this.f1594h) {
            throw new ConcurrentModificationException();
        }
        this.f1594h = i2;
        return v;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (obj instanceof C0386g) {
            C0386g c0386g = (C0386g) obj;
            if (size() != c0386g.size()) {
                z = false;
            } else {
                int i = 0;
                while (true) {
                    z = true;
                    try {
                        if (i >= this.f1594h) {
                            break;
                        }
                        K m21085b = m21085b(i);
                        V m21083c = m21083c(i);
                        Object obj2 = c0386g.get(m21085b);
                        if (m21083c == null) {
                            if (obj2 != null || !c0386g.containsKey(m21085b)) {
                                break;
                            }
                        } else if (!m21083c.equals(obj2)) {
                            z = false;
                            break;
                        }
                        i++;
                    } catch (ClassCastException e) {
                        z = false;
                    } catch (NullPointerException e2) {
                        z = false;
                    }
                }
                z = false;
            }
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                z = false;
            } else {
                int i2 = 0;
                while (true) {
                    z = true;
                    try {
                        if (i2 >= this.f1594h) {
                            break;
                        }
                        K m21085b2 = m21085b(i2);
                        V m21083c2 = m21083c(i2);
                        Object obj3 = map.get(m21085b2);
                        if (m21083c2 == null) {
                            if (obj3 != null || !map.containsKey(m21085b2)) {
                                break;
                            }
                        } else if (!m21083c2.equals(obj3)) {
                            z = false;
                            break;
                        }
                        i2++;
                    } catch (ClassCastException e3) {
                        z = false;
                    } catch (NullPointerException e4) {
                        z = false;
                    }
                }
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public V getOrDefault(Object obj, V v) {
        int m21089a = m21089a(obj);
        if (m21089a >= 0) {
            v = this.f1593g[(m21089a << 1) + 1];
        }
        return v;
    }

    public int hashCode() {
        int[] iArr = this.f1592f;
        Object[] objArr = this.f1593g;
        int i = this.f1594h;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.f1594h <= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v53, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v54 */
    public V put(K k, V v) {
        int hashCode;
        int m21088a;
        V v2;
        int i;
        int i2 = this.f1594h;
        if (k == null) {
            m21088a = m21091a();
            hashCode = 0;
        } else {
            hashCode = k.hashCode();
            m21088a = m21088a(k, hashCode);
        }
        if (m21088a >= 0) {
            int i3 = (m21088a << 1) + 1;
            v2 = this.f1593g[i3];
            this.f1593g[i3] = v;
        } else {
            int i4 = m21088a ^ (-1);
            if (i2 >= this.f1592f.length) {
                if (i2 >= 8) {
                    i = (i2 >> 1) + i2;
                } else {
                    i = 8;
                    if (i2 < 4) {
                        i = 4;
                    }
                }
                int[] iArr = this.f1592f;
                Object[] objArr = this.f1593g;
                m21082e(i);
                if (i2 != this.f1594h) {
                    throw new ConcurrentModificationException();
                }
                if (this.f1592f.length > 0) {
                    System.arraycopy(iArr, 0, this.f1592f, 0, iArr.length);
                    System.arraycopy(objArr, 0, this.f1593g, 0, objArr.length);
                }
                m21086a(iArr, objArr, i2);
            }
            if (i4 < i2) {
                System.arraycopy(this.f1592f, i4, this.f1592f, i4 + 1, i2 - i4);
                System.arraycopy(this.f1593g, i4 << 1, this.f1593g, (i4 + 1) << 1, (this.f1594h - i4) << 1);
            }
            if (i2 != this.f1594h || i4 >= this.f1592f.length) {
                throw new ConcurrentModificationException();
            }
            this.f1592f[i4] = hashCode;
            this.f1593g[i4 << 1] = k;
            this.f1593g[(i4 << 1) + 1] = v;
            this.f1594h++;
            v2 = null;
        }
        return v2;
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        V v3 = v2;
        if (v2 == null) {
            v3 = put(k, v);
        }
        return v3;
    }

    public V remove(Object obj) {
        int m21089a = m21089a(obj);
        return m21089a >= 0 ? mo17009d(m21089a) : null;
    }

    public boolean remove(Object obj, Object obj2) {
        boolean z;
        V m21083c;
        int m21089a = m21089a(obj);
        if (m21089a < 0 || (obj2 != (m21083c = m21083c(m21089a)) && (obj2 == null || !obj2.equals(m21083c)))) {
            z = false;
        } else {
            mo17009d(m21089a);
            z = true;
        }
        return z;
    }

    public V replace(K k, V v) {
        int m21089a = m21089a(k);
        return m21089a >= 0 ? mo17011a(m21089a, (int) v) : null;
    }

    public boolean replace(K k, V v, V v2) {
        boolean z;
        V m21083c;
        int m21089a = m21089a(k);
        if (m21089a < 0 || ((m21083c = m21083c(m21089a)) != v && (v == null || !v.equals(m21083c)))) {
            z = false;
        } else {
            mo17011a(m21089a, (int) v2);
            z = true;
        }
        return z;
    }

    public int size() {
        return this.f1594h;
    }

    public String toString() {
        String sb;
        if (isEmpty()) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.f1594h * 28);
            sb2.append('{');
            for (int i = 0; i < this.f1594h; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                K m21085b = m21085b(i);
                if (m21085b != this) {
                    sb2.append(m21085b);
                } else {
                    sb2.append("(this Map)");
                }
                sb2.append('=');
                V m21083c = m21083c(i);
                if (m21083c != this) {
                    sb2.append(m21083c);
                } else {
                    sb2.append("(this Map)");
                }
            }
            sb2.append('}');
            sb = sb2.toString();
        }
        return sb;
    }
}
