package com.google.android.exoplayer2.audio;
/* renamed from: com.google.android.exoplayer2.audio.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/o.class */
public final class C4836o {

    /* renamed from: a */
    public final int f14668a;

    /* renamed from: b */
    public final float f14669b;

    public C4836o(int i, float f) {
        this.f14668a = i;
        this.f14669b = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C4836o.class != obj.getClass()) {
            return false;
        }
        C4836o c4836o = (C4836o) obj;
        if (this.f14668a != c4836o.f14668a || Float.compare(c4836o.f14669b, this.f14669b) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f14668a) * 31) + Float.floatToIntBits(this.f14669b);
    }
}
