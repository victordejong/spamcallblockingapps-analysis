package p012b.p042i.p053o;
/* renamed from: b.i.o.d */
/* loaded from: classes-dex2jar.jar:b/i/o/d.class */
public class C0944d<F, S> {

    /* renamed from: a */
    public final F f4191a;

    /* renamed from: b */
    public final S f4192b;

    public C0944d(F f, S s) {
        this.f4191a = f;
        this.f4192b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0944d)) {
            return false;
        }
        C0944d dVar = (C0944d) obj;
        boolean z = false;
        if (C0943c.m35448a(dVar.f4191a, this.f4191a)) {
            z = false;
            if (C0943c.m35448a(dVar.f4192b, this.f4192b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        F f = this.f4191a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f4192b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f4191a) + " " + String.valueOf(this.f4192b) + "}";
    }
}
