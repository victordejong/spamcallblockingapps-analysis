package p012b.p076s.p112c;
/* renamed from: b.s.c.b */
/* loaded from: classes-dex2jar.jar:b/s/c/b.class */
public final class C1710b {

    /* renamed from: a */
    public final long f6984a;

    /* renamed from: b */
    public final long f6985b;

    /* renamed from: c */
    public final float f6986c;

    static {
        new C1710b(-1L, -1L, 0.0f);
    }

    public C1710b() {
        this.f6984a = 0L;
        this.f6985b = 0L;
        this.f6986c = 1.0f;
    }

    public C1710b(long j, long j2, float f) {
        this.f6984a = j;
        this.f6985b = j2;
        this.f6986c = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1710b.class != obj.getClass()) {
            return false;
        }
        C1710b bVar = (C1710b) obj;
        if (!(this.f6984a == bVar.f6984a && this.f6985b == bVar.f6985b && this.f6986c == bVar.f6986c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (int) ((((int) ((Long.valueOf(this.f6984a).hashCode() * 31) + this.f6985b)) * 31) + this.f6986c);
    }

    public String toString() {
        return C1710b.class.getName() + "{AnchorMediaTimeUs=" + this.f6984a + " AnchorSystemNanoTime=" + this.f6985b + " ClockRate=" + this.f6986c + "}";
    }
}
