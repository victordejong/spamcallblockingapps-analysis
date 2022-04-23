package p012b.p076s.p078b.p079a.p084q0;
/* renamed from: b.s.b.a.q0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/q0/a.class */
public abstract class AbstractC1306a {

    /* renamed from: a */
    public int f5227a;

    /* renamed from: a */
    public void mo33734a() {
        this.f5227a = 0;
    }

    /* renamed from: a */
    public final void m33745a(int i) {
        this.f5227a = i | this.f5227a;
    }

    /* renamed from: b */
    public final boolean m33744b() {
        return m33743b(Integer.MIN_VALUE);
    }

    /* renamed from: b */
    public final boolean m33743b(int i) {
        return (this.f5227a & i) == i;
    }

    /* renamed from: c */
    public final void m33741c(int i) {
        this.f5227a = i;
    }

    /* renamed from: c */
    public final boolean m33742c() {
        return m33743b(4);
    }

    /* renamed from: d */
    public final boolean m33740d() {
        return m33743b(1);
    }
}
