package android.support.v4.b;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/h.class */
public class h<K, V> {

    /* renamed from: b  reason: collision with root package name */
    static Object[] f136b;
    static int c;
    static Object[] d;
    static int e;
    int[] f;
    Object[] g;
    int h;

    public h() {
        this.f = b.f120a;
        this.g = b.c;
        this.h = 0;
    }

    public h(int i) {
        if (i == 0) {
            this.f = b.f120a;
            this.g = b.c;
        } else {
            a(i);
        }
        this.h = 0;
    }

    private int a() {
        int i;
        int i2 = this.h;
        if (i2 == 0) {
            i = -1;
        } else {
            int a2 = b.a(this.f, i2, 0);
            i = a2;
            if (a2 >= 0) {
                i = a2;
                if (this.g[a2 << 1] != null) {
                    int i3 = a2 + 1;
                    while (i3 < i2 && this.f[i3] == 0) {
                        if (this.g[i3 << 1] == null) {
                            i = i3;
                            break;
                        }
                        i3++;
                    }
                    while (true) {
                        a2--;
                        if (a2 >= 0 && this.f[a2] == 0) {
                            i = a2;
                            if (this.g[a2 << 1] == null) {
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

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
        r9 = r11 ^ (-1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(java.lang.Object r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.h
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x000f
            r0 = -1
            r9 = r0
        L_0x000c:
            r0 = r9
            return r0
        L_0x000f:
            r0 = r5
            int[] r0 = r0.f
            r1 = r8
            r2 = r7
            int r0 = android.support.v4.b.b.a(r0, r1, r2)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            if (r0 < 0) goto L_0x000c
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r5
            java.lang.Object[] r1 = r1.g
            r2 = r10
            r3 = 1
            int r2 = r2 << r3
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x000c
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
        L_0x003d:
            r0 = r11
            r1 = r8
            if (r0 >= r1) goto L_0x006b
            r0 = r5
            int[] r0 = r0.f
            r1 = r11
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L_0x006b
            r0 = r6
            r1 = r5
            java.lang.Object[] r1 = r1.g
            r2 = r11
            r3 = 1
            int r2 = r2 << r3
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0065
            r0 = r11
            r9 = r0
            goto L_0x000c
        L_0x0065:
            int r11 = r11 + 1
            goto L_0x003d
        L_0x006b:
            int r10 = r10 + (-1)
        L_0x006e:
            r0 = r10
            if (r0 < 0) goto L_0x0098
            r0 = r5
            int[] r0 = r0.f
            r1 = r10
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L_0x0098
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r5
            java.lang.Object[] r1 = r1.g
            r2 = r10
            r3 = 1
            int r2 = r2 << r3
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x000c
            int r10 = r10 + (-1)
            goto L_0x006e
        L_0x0098:
            r0 = r11
            r1 = -1
            r0 = r0 ^ r1
            r9 = r0
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.h.a(java.lang.Object, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (a.class) {
                try {
                    if (e < 10) {
                        objArr[0] = d;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        d = objArr;
                        e++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (a.class) {
                try {
                    if (c < 10) {
                        objArr[0] = f136b;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f136b = objArr;
                        c++;
                    }
                } finally {
                }
            }
        }
    }

    public final int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public final V a(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = (V) this.g[i2];
        this.g[i2] = v;
        return v2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (i == 8) {
            synchronized (a.class) {
                try {
                    if (d != null) {
                        Object[] objArr = d;
                        this.g = objArr;
                        d = (Object[]) objArr[0];
                        this.f = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        e--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (a.class) {
                try {
                    if (f136b != null) {
                        Object[] objArr2 = f136b;
                        this.g = objArr2;
                        f136b = (Object[]) objArr2[0];
                        this.f = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        c--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[i << 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(Object obj) {
        int i;
        int i2 = this.h * 2;
        Object[] objArr = this.g;
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

    public final K b(int i) {
        return (K) this.g[i << 1];
    }

    public final V c(int i) {
        return (V) this.g[(i << 1) + 1];
    }

    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = b.f120a;
            this.g = b.c;
            this.h = 0;
        }
    }

    public boolean containsKey(Object obj) {
        return a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public final V d(int i) {
        int i2 = 8;
        V v = (V) this.g[(i << 1) + 1];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = b.f120a;
            this.g = b.c;
            this.h = 0;
        } else if (this.f.length <= 8 || this.h >= this.f.length / 3) {
            this.h--;
            if (i < this.h) {
                System.arraycopy(this.f, i + 1, this.f, i, this.h - i);
                System.arraycopy(this.g, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
            this.g[this.h << 1] = null;
            this.g[(this.h << 1) + 1] = null;
        } else {
            if (this.h > 8) {
                i2 = this.h + (this.h >> 1);
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            a(i2);
            this.h--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i);
                System.arraycopy(objArr, 0, this.g, 0, i << 1);
            }
            if (i < this.h) {
                System.arraycopy(iArr, i + 1, this.f, i, this.h - i);
                System.arraycopy(objArr, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
        }
        return v;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                z = false;
            } else {
                int i = 0;
                while (true) {
                    z = true;
                    try {
                        if (i >= this.h) {
                            break;
                        }
                        K b2 = b(i);
                        V c2 = c(i);
                        Object obj2 = map.get(b2);
                        if (c2 == null) {
                            if (obj2 != null || !map.containsKey(b2)) {
                                break;
                            }
                        } else if (!c2.equals(obj2)) {
                            z = false;
                            break;
                        }
                        i++;
                    } catch (ClassCastException e2) {
                        z = false;
                    } catch (NullPointerException e3) {
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
        int a2 = a(obj);
        return a2 >= 0 ? (V) this.g[(a2 << 1) + 1] : null;
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i = this.h;
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
        return this.h <= 0;
    }

    public V put(K k, V v) {
        int hashCode;
        int a2;
        V v2;
        int i = 8;
        if (k == null) {
            a2 = a();
            hashCode = 0;
        } else {
            hashCode = k.hashCode();
            a2 = a(k, hashCode);
        }
        if (a2 >= 0) {
            int i2 = (a2 << 1) + 1;
            v2 = (V) this.g[i2];
            this.g[i2] = v;
        } else {
            int i3 = a2 ^ (-1);
            if (this.h >= this.f.length) {
                if (this.h >= 8) {
                    i = this.h + (this.h >> 1);
                } else if (this.h < 4) {
                    i = 4;
                }
                int[] iArr = this.f;
                Object[] objArr = this.g;
                a(i);
                if (this.f.length > 0) {
                    System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                    System.arraycopy(objArr, 0, this.g, 0, objArr.length);
                }
                a(iArr, objArr, this.h);
            }
            if (i3 < this.h) {
                System.arraycopy(this.f, i3, this.f, i3 + 1, this.h - i3);
                System.arraycopy(this.g, i3 << 1, this.g, (i3 + 1) << 1, (this.h - i3) << 1);
            }
            this.f[i3] = hashCode;
            this.g[i3 << 1] = k;
            this.g[(i3 << 1) + 1] = v;
            this.h++;
            v2 = null;
        }
        return v2;
    }

    public V remove(Object obj) {
        int a2 = a(obj);
        return a2 >= 0 ? d(a2) : null;
    }

    public int size() {
        return this.h;
    }

    public String toString() {
        String sb;
        if (isEmpty()) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.h * 28);
            sb2.append('{');
            for (int i = 0; i < this.h; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                K b2 = b(i);
                if (b2 != this) {
                    sb2.append(b2);
                } else {
                    sb2.append("(this Map)");
                }
                sb2.append('=');
                V c2 = c(i);
                if (c2 != this) {
                    sb2.append(c2);
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
