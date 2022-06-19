package com.google.android.exoplayer2.audio;
/* renamed from: com.google.android.exoplayer2.audio.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/i.class */
public final class C10899i {

    /* renamed from: a */
    public final int f35196a;

    /* renamed from: b */
    public final float f35197b;

    public C10899i(int i, float f) {
        this.f35196a = i;
        this.f35197b = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C10899i c10899i = (C10899i) obj;
        return this.f35196a == c10899i.f35196a && Float.compare(c10899i.f35197b, this.f35197b) == 0;
    }

    public final int hashCode() {
        return ((this.f35196a + 527) * 31) + Float.floatToIntBits(this.f35197b);
    }
}
