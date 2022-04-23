package androidx.media2.exoplayer.external.audio;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final int f2914a;

    /* renamed from: b  reason: collision with root package name */
    public final float f2915b;

    public p(int i, float f) {
        this.f2914a = i;
        this.f2915b = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.f2914a == pVar.f2914a && Float.compare(pVar.f2915b, this.f2915b) == 0;
    }

    public final int hashCode() {
        return ((this.f2914a + 527) * 31) + Float.floatToIntBits(this.f2915b);
    }
}
