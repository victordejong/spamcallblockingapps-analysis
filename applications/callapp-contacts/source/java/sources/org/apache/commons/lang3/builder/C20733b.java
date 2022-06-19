package org.apache.commons.lang3.builder;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.C20753d;
import org.apache.commons.lang3.p587d.AbstractC20755b;
/* renamed from: org.apache.commons.lang3.builder.b */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/b.class */
public final class C20733b {

    /* renamed from: b */
    private static final ThreadLocal<Set<AbstractC20755b<C20736e, C20736e>>> f67203b = new ThreadLocal<>();

    /* renamed from: e */
    private List<Class<?>> f67207e;

    /* renamed from: a */
    public boolean f67204a = true;

    /* renamed from: c */
    private boolean f67205c = false;

    /* renamed from: d */
    private boolean f67206d = false;

    /* renamed from: f */
    private Class<?> f67208f = null;

    /* renamed from: g */
    private String[] f67209g = null;

    public C20733b() {
        ArrayList arrayList = new ArrayList();
        this.f67207e = arrayList;
        arrayList.add(String.class);
    }

    /* renamed from: a */
    private static Set<AbstractC20755b<C20736e, C20736e>> m590a() {
        return f67203b.get();
    }

    /* renamed from: a */
    private C20733b m589a(byte b, byte b2) {
        if (!this.f67204a) {
            return this;
        }
        this.f67204a = b == b2;
        return this;
    }

    /* renamed from: a */
    private C20733b m588a(char c, char c2) {
        if (!this.f67204a) {
            return this;
        }
        this.f67204a = c == c2;
        return this;
    }

    /* renamed from: a */
    private C20733b m587a(double d, double d2) {
        return !this.f67204a ? this : m584a(Double.doubleToLongBits(d), Double.doubleToLongBits(d2));
    }

    /* renamed from: a */
    private C20733b m586a(float f, float f2) {
        return !this.f67204a ? this : m585a(Float.floatToIntBits(f), Float.floatToIntBits(f2));
    }

    /* renamed from: a */
    private C20733b m585a(int i, int i2) {
        if (!this.f67204a) {
            return this;
        }
        this.f67204a = i == i2;
        return this;
    }

    /* renamed from: a */
    private C20733b m584a(long j, long j2) {
        if (!this.f67204a) {
            return this;
        }
        this.f67204a = j == j2;
        return this;
    }

    /* renamed from: a */
    private C20733b m582a(short s, short s2) {
        if (!this.f67204a) {
            return this;
        }
        this.f67204a = s == s2;
        return this;
    }

    /* renamed from: a */
    private C20733b m581a(boolean z, boolean z2) {
        if (!this.f67204a) {
            return this;
        }
        this.f67204a = z == z2;
        return this;
    }

    /* renamed from: a */
    private C20733b m580a(byte[] bArr, byte[] bArr2) {
        if (this.f67204a && bArr != bArr2) {
            if (bArr == null || bArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (bArr.length != bArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < bArr.length && this.f67204a; i++) {
                    m589a(bArr[i], bArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m579a(char[] cArr, char[] cArr2) {
        if (this.f67204a && cArr != cArr2) {
            if (cArr == null || cArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (cArr.length != cArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < cArr.length && this.f67204a; i++) {
                    m588a(cArr[i], cArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m578a(double[] dArr, double[] dArr2) {
        if (this.f67204a && dArr != dArr2) {
            if (dArr == null || dArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (dArr.length != dArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < dArr.length && this.f67204a; i++) {
                    m587a(dArr[i], dArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m577a(float[] fArr, float[] fArr2) {
        if (this.f67204a && fArr != fArr2) {
            if (fArr == null || fArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (fArr.length != fArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < fArr.length && this.f67204a; i++) {
                    m586a(fArr[i], fArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m576a(int[] iArr, int[] iArr2) {
        if (this.f67204a && iArr != iArr2) {
            if (iArr == null || iArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (iArr.length != iArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < iArr.length && this.f67204a; i++) {
                    m585a(iArr[i], iArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m575a(long[] jArr, long[] jArr2) {
        if (this.f67204a && jArr != jArr2) {
            if (jArr == null || jArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (jArr.length != jArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < jArr.length && this.f67204a; i++) {
                    m584a(jArr[i], jArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m574a(Object[] objArr, Object[] objArr2) {
        if (this.f67204a && objArr != objArr2) {
            if (objArr == null || objArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (objArr.length != objArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < objArr.length && this.f67204a; i++) {
                    m583a(objArr[i], objArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m573a(short[] sArr, short[] sArr2) {
        if (this.f67204a && sArr != sArr2) {
            if (sArr == null || sArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (sArr.length != sArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < sArr.length && this.f67204a; i++) {
                    m582a(sArr[i], sArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20733b m572a(boolean[] zArr, boolean[] zArr2) {
        if (this.f67204a && zArr != zArr2) {
            if (zArr == null || zArr2 == null) {
                this.f67204a = false;
                return this;
            } else if (zArr.length != zArr2.length) {
                this.f67204a = false;
                return this;
            } else {
                for (int i = 0; i < zArr.length && this.f67204a; i++) {
                    m581a(zArr[i], zArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    /* renamed from: b */
    private static AbstractC20755b<C20736e, C20736e> m571b(Object obj, Object obj2) {
        return AbstractC20755b.m526b(new C20736e(obj), new C20736e(obj2));
    }

    /* renamed from: c */
    private static void m570c(Object obj, Object obj2) {
        Set<AbstractC20755b<C20736e, C20736e>> m590a = m590a();
        if (m590a != null) {
            m590a.remove(m571b(obj, obj2));
            if (!m590a.isEmpty()) {
                return;
            }
            f67203b.remove();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        if (r0.isInstance(r6) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r0.isInstance(r7) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
        if (r5.f67207e.contains(r0) != false) goto L36;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.commons.lang3.builder.C20733b m569d(java.lang.Object r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.builder.C20733b.m569d(java.lang.Object, java.lang.Object):org.apache.commons.lang3.builder.b");
    }

    /* renamed from: e */
    private void m568e(Object obj, Object obj2) {
        if (obj.getClass() != obj2.getClass()) {
            this.f67204a = false;
        } else if (obj instanceof long[]) {
            m575a((long[]) obj, (long[]) obj2);
        } else if (obj instanceof int[]) {
            m576a((int[]) obj, (int[]) obj2);
        } else if (obj instanceof short[]) {
            m573a((short[]) obj, (short[]) obj2);
        } else if (obj instanceof char[]) {
            m579a((char[]) obj, (char[]) obj2);
        } else if (obj instanceof byte[]) {
            m580a((byte[]) obj, (byte[]) obj2);
        } else if (obj instanceof double[]) {
            m578a((double[]) obj, (double[]) obj2);
        } else if (obj instanceof float[]) {
            m577a((float[]) obj, (float[]) obj2);
        } else if (obj instanceof boolean[]) {
            m572a((boolean[]) obj, (boolean[]) obj2);
        } else {
            m574a((Object[]) obj, (Object[]) obj2);
        }
    }

    /* renamed from: a */
    public final C20733b m583a(Object obj, Object obj2) {
        if (this.f67204a && obj != obj2) {
            if (obj == null || obj2 == null) {
                this.f67204a = false;
                return this;
            }
            Class<?> cls = obj.getClass();
            if (cls.isArray()) {
                m568e(obj, obj2);
            } else if (!this.f67206d || C20753d.m530b(cls)) {
                this.f67204a = obj.equals(obj2);
            } else {
                m569d(obj, obj2);
            }
            return this;
        }
        return this;
    }
}
