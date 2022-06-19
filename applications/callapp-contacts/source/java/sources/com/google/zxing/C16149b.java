package com.google.zxing;
/* renamed from: com.google.zxing.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b.class */
public final class C16149b {

    /* renamed from: a */
    public final int f57073a;

    /* renamed from: b */
    public final int f57074b;

    public C16149b(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.f57073a = i;
        this.f57074b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C16149b) {
            C16149b c16149b = (C16149b) obj;
            return this.f57073a == c16149b.f57073a && this.f57074b == c16149b.f57074b;
        }
        return false;
    }

    public final int hashCode() {
        return (this.f57073a * 32713) + this.f57074b;
    }

    public final String toString() {
        return this.f57073a + "x" + this.f57074b;
    }
}
