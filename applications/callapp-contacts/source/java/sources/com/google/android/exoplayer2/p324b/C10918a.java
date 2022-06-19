package com.google.android.exoplayer2.p324b;
/* renamed from: com.google.android.exoplayer2.b.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b/a.class */
public final class C10918a {

    /* renamed from: a */
    public static final C10918a f35300a = new C10918a(0, 0, 0);

    /* renamed from: b */
    public final int f35301b;

    /* renamed from: c */
    public final int f35302c;

    /* renamed from: d */
    public final int f35303d;

    public C10918a(int i, int i2, int i3) {
        this.f35301b = i;
        this.f35302c = i2;
        this.f35303d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10918a)) {
            return false;
        }
        C10918a c10918a = (C10918a) obj;
        return this.f35301b == c10918a.f35301b && this.f35302c == c10918a.f35302c && this.f35303d == c10918a.f35303d;
    }

    public final int hashCode() {
        return ((((this.f35301b + 527) * 31) + this.f35302c) * 31) + this.f35303d;
    }
}
