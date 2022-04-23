package androidx.media2.exoplayer.external.extractor;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3391a = new p(0, 0);

    /* renamed from: b  reason: collision with root package name */
    public final long f3392b;

    /* renamed from: c  reason: collision with root package name */
    public final long f3393c;

    public p(long j, long j2) {
        this.f3392b = j;
        this.f3393c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.f3392b == pVar.f3392b && this.f3393c == pVar.f3393c;
    }

    public final int hashCode() {
        return (((int) this.f3392b) * 31) + ((int) this.f3393c);
    }

    public final String toString() {
        long j = this.f3392b;
        long j2 = this.f3393c;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }
}
