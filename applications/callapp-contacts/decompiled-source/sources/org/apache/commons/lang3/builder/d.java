package org.apache.commons.lang3.builder;

import java.util.Set;
import org.apache.commons.lang3.h;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Set<e>> f39143b = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    public int f39144a;

    /* renamed from: c  reason: collision with root package name */
    private final int f39145c;

    public d() {
        this.f39144a = 0;
        this.f39145c = 37;
        this.f39144a = 17;
    }

    public d(int i, int i2) {
        this.f39144a = 0;
        boolean z = true;
        h.a(i % 2 != 0, "HashCodeBuilder requires an odd initial value", new Object[0]);
        if (i2 % 2 == 0) {
            z = false;
        }
        h.a(z, "HashCodeBuilder requires an odd multiplier", new Object[0]);
        this.f39145c = i2;
        this.f39144a = i;
    }

    private d a(long j) {
        this.f39144a = (this.f39144a * this.f39145c) + ((int) (j ^ (j >> 32)));
        return this;
    }

    private d a(short s) {
        this.f39144a = (this.f39144a * this.f39145c) + s;
        return this;
    }

    private d a(byte[] bArr) {
        if (bArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (byte b2 : bArr) {
                this.f39144a = (this.f39144a * this.f39145c) + b2;
            }
        }
        return this;
    }

    private d a(char[] cArr) {
        if (cArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (char c2 : cArr) {
                this.f39144a = (this.f39144a * this.f39145c) + c2;
            }
        }
        return this;
    }

    private d a(double[] dArr) {
        if (dArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (double d2 : dArr) {
                a(Double.doubleToLongBits(d2));
            }
        }
        return this;
    }

    private d a(float[] fArr) {
        if (fArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (float f : fArr) {
                this.f39144a = (this.f39144a * this.f39145c) + Float.floatToIntBits(f);
            }
        }
        return this;
    }

    private d a(int[] iArr) {
        if (iArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (int i : iArr) {
                this.f39144a = (this.f39144a * this.f39145c) + i;
            }
        }
        return this;
    }

    private d a(long[] jArr) {
        if (jArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (long j : jArr) {
                a(j);
            }
        }
        return this;
    }

    private d a(Object[] objArr) {
        if (objArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (Object obj : objArr) {
                a(obj);
            }
        }
        return this;
    }

    private d a(short[] sArr) {
        if (sArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (short s : sArr) {
                a(s);
            }
        }
        return this;
    }

    private d a(boolean[] zArr) {
        if (zArr == null) {
            this.f39144a *= this.f39145c;
        } else {
            for (boolean z : zArr) {
                this.f39144a = (this.f39144a * this.f39145c) + (!z ? 1 : 0);
            }
        }
        return this;
    }

    private void b(Object obj) {
        if (obj instanceof long[]) {
            a((long[]) obj);
        } else if (obj instanceof int[]) {
            a((int[]) obj);
        } else if (obj instanceof short[]) {
            a((short[]) obj);
        } else if (obj instanceof char[]) {
            a((char[]) obj);
        } else if (obj instanceof byte[]) {
            a((byte[]) obj);
        } else if (obj instanceof double[]) {
            a((double[]) obj);
        } else if (obj instanceof float[]) {
            a((float[]) obj);
        } else if (obj instanceof boolean[]) {
            a((boolean[]) obj);
        } else {
            a((Object[]) obj);
        }
    }

    public final d a(Object obj) {
        if (obj == null) {
            this.f39144a *= this.f39145c;
        } else if (obj.getClass().isArray()) {
            b(obj);
        } else {
            this.f39144a = (this.f39144a * this.f39145c) + obj.hashCode();
        }
        return this;
    }

    public final int hashCode() {
        return this.f39144a;
    }
}
