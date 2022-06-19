package com.google.android.exoplayer2.p243c1;
/* renamed from: com.google.android.exoplayer2.c1.u */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/u.class */
public final class C4995u {

    /* renamed from: a */
    public static final C4995u f15522a = new C4995u(0, 0);

    /* renamed from: b */
    public final long f15523b;

    /* renamed from: c */
    public final long f15524c;

    public C4995u(long j, long j2) {
        this.f15523b = j;
        this.f15524c = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C4995u.class != obj.getClass()) {
            return false;
        }
        C4995u c4995u = (C4995u) obj;
        if (this.f15523b != c4995u.f15523b || this.f15524c != c4995u.f15524c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f15523b) * 31) + ((int) this.f15524c);
    }

    public String toString() {
        return "[timeUs=" + this.f15523b + ", position=" + this.f15524c + "]";
    }
}
