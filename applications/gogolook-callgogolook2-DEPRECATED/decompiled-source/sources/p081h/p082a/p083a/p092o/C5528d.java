package p081h.p082a.p083a.p092o;
/* renamed from: h.a.a.o.d */
/* loaded from: classes-dex2jar.jar:h/a/a/o/d.class */
public class C5528d {

    /* renamed from: a */
    public float f13793a;

    /* renamed from: b */
    public int f13794b;

    /* renamed from: a */
    public void m25264a(float f) {
        this.f13793a += f;
        this.f13794b++;
        int i = this.f13794b;
        if (i == Integer.MAX_VALUE) {
            this.f13793a /= 2.0f;
            this.f13794b = i / 2;
        }
    }
}
