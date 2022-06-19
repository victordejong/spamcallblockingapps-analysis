package com.google.android.exoplayer2;
/* renamed from: com.google.android.exoplayer2.u0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/u0.class */
public final class C5416u0 {

    /* renamed from: a */
    public static final C5416u0 f17404a = new C5416u0(0);

    /* renamed from: b */
    public final int f17405b;

    public C5416u0(int i) {
        this.f17405b = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C5416u0.class != obj.getClass()) {
            return false;
        }
        if (this.f17405b != ((C5416u0) obj).f17405b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f17405b;
    }
}
