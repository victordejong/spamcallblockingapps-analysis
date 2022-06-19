package org.apache.commons.lang3.builder;

import java.util.Set;
import org.apache.commons.lang3.C20766h;
/* renamed from: org.apache.commons.lang3.builder.d */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/d.class */
public final class C20735d {

    /* renamed from: b */
    private static final ThreadLocal<Set<C20736e>> f67210b = new ThreadLocal<>();

    /* renamed from: a */
    public int f67211a;

    /* renamed from: c */
    private final int f67212c;

    public C20735d() {
        this.f67211a = 0;
        this.f67212c = 37;
        this.f67211a = 17;
    }

    public C20735d(int i, int i2) {
        this.f67211a = 0;
        C20766h.m512a(i % 2 != 0, "HashCodeBuilder requires an odd initial value", new Object[0]);
        C20766h.m512a(i2 % 2 != 0, "HashCodeBuilder requires an odd multiplier", new Object[0]);
        this.f67212c = i2;
        this.f67211a = i;
    }

    /* renamed from: a */
    private C20735d m567a(long j) {
        this.f67211a = (this.f67211a * this.f67212c) + ((int) (j ^ (j >> 32)));
        return this;
    }

    /* renamed from: a */
    private C20735d m565a(short s) {
        this.f67211a = (this.f67211a * this.f67212c) + s;
        return this;
    }

    /* renamed from: a */
    private C20735d m564a(byte[] bArr) {
        if (bArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (byte b : bArr) {
                this.f67211a = (this.f67211a * this.f67212c) + b;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m563a(char[] cArr) {
        if (cArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (char c : cArr) {
                this.f67211a = (this.f67211a * this.f67212c) + c;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m562a(double[] dArr) {
        if (dArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (double d : dArr) {
                m567a(Double.doubleToLongBits(d));
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m561a(float[] fArr) {
        if (fArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (float f : fArr) {
                this.f67211a = (this.f67211a * this.f67212c) + Float.floatToIntBits(f);
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m560a(int[] iArr) {
        if (iArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (int i : iArr) {
                this.f67211a = (this.f67211a * this.f67212c) + i;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m559a(long[] jArr) {
        if (jArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (long j : jArr) {
                m567a(j);
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m558a(Object[] objArr) {
        if (objArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (Object obj : objArr) {
                m566a(obj);
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m557a(short[] sArr) {
        if (sArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (short s : sArr) {
                m565a(s);
            }
        }
        return this;
    }

    /* renamed from: a */
    private C20735d m556a(boolean[] zArr) {
        if (zArr == null) {
            this.f67211a *= this.f67212c;
        } else {
            for (boolean z : zArr) {
                this.f67211a = (this.f67211a * this.f67212c) + (!z ? 1 : 0);
            }
        }
        return this;
    }

    /* renamed from: b */
    private void m555b(Object obj) {
        if (obj instanceof long[]) {
            m559a((long[]) obj);
        } else if (obj instanceof int[]) {
            m560a((int[]) obj);
        } else if (obj instanceof short[]) {
            m557a((short[]) obj);
        } else if (obj instanceof char[]) {
            m563a((char[]) obj);
        } else if (obj instanceof byte[]) {
            m564a((byte[]) obj);
        } else if (obj instanceof double[]) {
            m562a((double[]) obj);
        } else if (obj instanceof float[]) {
            m561a((float[]) obj);
        } else if (obj instanceof boolean[]) {
            m556a((boolean[]) obj);
        } else {
            m558a((Object[]) obj);
        }
    }

    /* renamed from: a */
    public final C20735d m566a(Object obj) {
        if (obj == null) {
            this.f67211a *= this.f67212c;
        } else if (obj.getClass().isArray()) {
            m555b(obj);
        } else {
            this.f67211a = (this.f67211a * this.f67212c) + obj.hashCode();
        }
        return this;
    }

    public final int hashCode() {
        return this.f67211a;
    }
}
