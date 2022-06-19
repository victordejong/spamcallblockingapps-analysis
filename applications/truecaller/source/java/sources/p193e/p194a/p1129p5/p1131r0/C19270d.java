package p193e.p194a.p1129p5.p1131r0;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.p5.r0.d */
/* loaded from: classes15-dex2jar.jar:e/a/p5/r0/d.class */
public final class C19270d {

    /* renamed from: a */
    public final C19263a f53664a;

    /* renamed from: b */
    public final List<C19263a> f53665b;

    public C19270d() {
        this(null, s.a);
    }

    public C19270d(C19263a c19263a, List<C19263a> list) {
        l.e(list, "connectedHeadsets");
        this.f53664a = c19263a;
        this.f53665b = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19270d)) {
                return false;
            }
            C19270d c19270d = (C19270d) obj;
            return l.a(this.f53664a, c19270d.f53664a) && l.a(this.f53665b, c19270d.f53665b);
        }
        return true;
    }

    public int hashCode() {
        C19263a c19263a = this.f53664a;
        int i = 0;
        int hashCode = c19263a != null ? c19263a.hashCode() : 0;
        List<C19263a> list = this.f53665b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BluetoothHeadsetStatus(activeHeadset=");
        m8728C.append(this.f53664a);
        m8728C.append(", connectedHeadsets=");
        return C22128a.m8602l(m8728C, this.f53665b, ")");
    }
}
