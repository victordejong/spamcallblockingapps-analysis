package androidx.media2.exoplayer.external.extractor;
/* renamed from: androidx.media2.exoplayer.external.extractor.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/p.class */
public final class C1640p {

    /* renamed from: a */
    public static final C1640p f6505a = new C1640p(0, 0);

    /* renamed from: b */
    public final long f6506b;

    /* renamed from: c */
    public final long f6507c;

    public C1640p(long j, long j2) {
        this.f6506b = j;
        this.f6507c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1640p c1640p = (C1640p) obj;
        return this.f6506b == c1640p.f6506b && this.f6507c == c1640p.f6507c;
    }

    public final int hashCode() {
        return (((int) this.f6506b) * 31) + ((int) this.f6507c);
    }

    public final String toString() {
        long j = this.f6506b;
        long j2 = this.f6507c;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }
}
