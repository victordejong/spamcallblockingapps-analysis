package com.google.zxing;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f32919a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32920b;

    public b(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.f32919a = i;
        this.f32920b = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f32919a == bVar.f32919a && this.f32920b == bVar.f32920b;
    }

    public final int hashCode() {
        return (this.f32919a * 32713) + this.f32920b;
    }

    public final String toString() {
        return this.f32919a + "x" + this.f32920b;
    }
}
