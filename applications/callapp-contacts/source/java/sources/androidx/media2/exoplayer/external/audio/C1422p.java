package androidx.media2.exoplayer.external.audio;
/* renamed from: androidx.media2.exoplayer.external.audio.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/p.class */
public final class C1422p {

    /* renamed from: a */
    public final int f5374a;

    /* renamed from: b */
    public final float f5375b;

    public C1422p(int i, float f) {
        this.f5374a = i;
        this.f5375b = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1422p c1422p = (C1422p) obj;
        return this.f5374a == c1422p.f5374a && Float.compare(c1422p.f5375b, this.f5375b) == 0;
    }

    public final int hashCode() {
        return ((this.f5374a + 527) * 31) + Float.floatToIntBits(this.f5375b);
    }
}
