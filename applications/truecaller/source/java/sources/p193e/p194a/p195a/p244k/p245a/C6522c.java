package p193e.p194a.p195a.p244k.p245a;
/* renamed from: e.a.a.k.a.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/c.class */
public final class C6522c implements AbstractC6508b {

    /* renamed from: a */
    public long f21565a;

    /* renamed from: b */
    public long f21566b;

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6508b
    /* renamed from: a */
    public long mo30821a(long j, boolean z) {
        char c = z ? (char) 30000 : (char) 10000;
        if (j - this.f21566b > 2 * c) {
            this.f21565a = 0L;
        }
        long min = (long) Math.min(Math.pow(2.0d, this.f21565a) * (z ? (char) 5000 : (char) 1000), c);
        this.f21565a++;
        this.f21566b = j;
        return min;
    }
}
