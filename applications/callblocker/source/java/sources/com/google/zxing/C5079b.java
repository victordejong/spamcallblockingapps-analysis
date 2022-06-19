package com.google.zxing;
/* renamed from: com.google.zxing.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b.class */
public final class C5079b {

    /* renamed from: a */
    private final int f21525a;

    /* renamed from: b */
    private final int f21526b;

    /* renamed from: a */
    public int m1568a() {
        return this.f21525a;
    }

    /* renamed from: b */
    public int m1567b() {
        return this.f21526b;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C5079b) {
            C5079b c5079b = (C5079b) obj;
            z = false;
            if (this.f21525a == c5079b.f21525a) {
                z = false;
                if (this.f21526b == c5079b.f21526b) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (this.f21525a * 32713) + this.f21526b;
    }

    public String toString() {
        return this.f21525a + "x" + this.f21526b;
    }
}
