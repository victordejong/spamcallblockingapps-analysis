package com.google.android.exoplayer2.audio;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f20768a;

    /* renamed from: b  reason: collision with root package name */
    public final float f20769b;

    public i(int i, float f) {
        this.f20768a = i;
        this.f20769b = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f20768a == iVar.f20768a && Float.compare(iVar.f20769b, this.f20769b) == 0;
    }

    public final int hashCode() {
        return ((this.f20768a + 527) * 31) + Float.floatToIntBits(this.f20769b);
    }
}
