package org.apache.commons.lang3.builder;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.d;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Set<org.apache.commons.lang3.d.b<e, e>>> f39139b = new ThreadLocal<>();
    private List<Class<?>> e;

    /* renamed from: a  reason: collision with root package name */
    public boolean f39140a = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f39141c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f39142d = false;
    private Class<?> f = null;
    private String[] g = null;

    public b() {
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        arrayList.add(String.class);
    }

    private static Set<org.apache.commons.lang3.d.b<e, e>> a() {
        return f39139b.get();
    }

    private b a(byte b2, byte b3) {
        if (!this.f39140a) {
            return this;
        }
        this.f39140a = b2 == b3;
        return this;
    }

    private b a(char c2, char c3) {
        if (!this.f39140a) {
            return this;
        }
        this.f39140a = c2 == c3;
        return this;
    }

    private b a(double d2, double d3) {
        return !this.f39140a ? this : a(Double.doubleToLongBits(d2), Double.doubleToLongBits(d3));
    }

    private b a(float f, float f2) {
        return !this.f39140a ? this : a(Float.floatToIntBits(f), Float.floatToIntBits(f2));
    }

    private b a(int i, int i2) {
        if (!this.f39140a) {
            return this;
        }
        this.f39140a = i == i2;
        return this;
    }

    private b a(long j, long j2) {
        if (!this.f39140a) {
            return this;
        }
        this.f39140a = j == j2;
        return this;
    }

    private b a(short s, short s2) {
        if (!this.f39140a) {
            return this;
        }
        this.f39140a = s == s2;
        return this;
    }

    private b a(boolean z, boolean z2) {
        if (!this.f39140a) {
            return this;
        }
        this.f39140a = z == z2;
        return this;
    }

    private b a(byte[] bArr, byte[] bArr2) {
        if (this.f39140a && bArr != bArr2) {
            if (bArr == null || bArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (bArr.length != bArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < bArr.length && this.f39140a; i++) {
                    a(bArr[i], bArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(char[] cArr, char[] cArr2) {
        if (this.f39140a && cArr != cArr2) {
            if (cArr == null || cArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (cArr.length != cArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < cArr.length && this.f39140a; i++) {
                    a(cArr[i], cArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(double[] dArr, double[] dArr2) {
        if (this.f39140a && dArr != dArr2) {
            if (dArr == null || dArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (dArr.length != dArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < dArr.length && this.f39140a; i++) {
                    a(dArr[i], dArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(float[] fArr, float[] fArr2) {
        if (this.f39140a && fArr != fArr2) {
            if (fArr == null || fArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (fArr.length != fArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < fArr.length && this.f39140a; i++) {
                    a(fArr[i], fArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(int[] iArr, int[] iArr2) {
        if (this.f39140a && iArr != iArr2) {
            if (iArr == null || iArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (iArr.length != iArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < iArr.length && this.f39140a; i++) {
                    a(iArr[i], iArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(long[] jArr, long[] jArr2) {
        if (this.f39140a && jArr != jArr2) {
            if (jArr == null || jArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (jArr.length != jArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < jArr.length && this.f39140a; i++) {
                    a(jArr[i], jArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(Object[] objArr, Object[] objArr2) {
        if (this.f39140a && objArr != objArr2) {
            if (objArr == null || objArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (objArr.length != objArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < objArr.length && this.f39140a; i++) {
                    a(objArr[i], objArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(short[] sArr, short[] sArr2) {
        if (this.f39140a && sArr != sArr2) {
            if (sArr == null || sArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (sArr.length != sArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < sArr.length && this.f39140a; i++) {
                    a(sArr[i], sArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private b a(boolean[] zArr, boolean[] zArr2) {
        if (this.f39140a && zArr != zArr2) {
            if (zArr == null || zArr2 == null) {
                this.f39140a = false;
                return this;
            } else if (zArr.length != zArr2.length) {
                this.f39140a = false;
                return this;
            } else {
                for (int i = 0; i < zArr.length && this.f39140a; i++) {
                    a(zArr[i], zArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    private static org.apache.commons.lang3.d.b<e, e> b(Object obj, Object obj2) {
        return org.apache.commons.lang3.d.b.b(new e(obj), new e(obj2));
    }

    private static void c(Object obj, Object obj2) {
        Set<org.apache.commons.lang3.d.b<e, e>> a2 = a();
        if (a2 != null) {
            a2.remove(b(obj, obj2));
            if (a2.isEmpty()) {
                f39139b.remove();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        if (r0.isInstance(r6) == false) goto L_0x0051;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r0.isInstance(r7) == false) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
        if (r5.e.contains(r0) != false) goto L_0x0093;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.commons.lang3.builder.b d(java.lang.Object r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.builder.b.d(java.lang.Object, java.lang.Object):org.apache.commons.lang3.builder.b");
    }

    private void e(Object obj, Object obj2) {
        if (obj.getClass() != obj2.getClass()) {
            this.f39140a = false;
        } else if (obj instanceof long[]) {
            a((long[]) obj, (long[]) obj2);
        } else if (obj instanceof int[]) {
            a((int[]) obj, (int[]) obj2);
        } else if (obj instanceof short[]) {
            a((short[]) obj, (short[]) obj2);
        } else if (obj instanceof char[]) {
            a((char[]) obj, (char[]) obj2);
        } else if (obj instanceof byte[]) {
            a((byte[]) obj, (byte[]) obj2);
        } else if (obj instanceof double[]) {
            a((double[]) obj, (double[]) obj2);
        } else if (obj instanceof float[]) {
            a((float[]) obj, (float[]) obj2);
        } else if (obj instanceof boolean[]) {
            a((boolean[]) obj, (boolean[]) obj2);
        } else {
            a((Object[]) obj, (Object[]) obj2);
        }
    }

    public final b a(Object obj, Object obj2) {
        if (this.f39140a && obj != obj2) {
            if (obj == null || obj2 == null) {
                this.f39140a = false;
                return this;
            }
            Class<?> cls = obj.getClass();
            if (cls.isArray()) {
                e(obj, obj2);
            } else if (!this.f39142d || d.b(cls)) {
                this.f39140a = obj.equals(obj2);
            } else {
                d(obj, obj2);
            }
            return this;
        }
        return this;
    }
}
