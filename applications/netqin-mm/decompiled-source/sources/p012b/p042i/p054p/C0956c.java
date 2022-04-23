package p012b.p042i.p054p;
/* renamed from: b.i.p.c */
/* loaded from: classes-dex2jar.jar:b/i/p/c.class */
public final class C0956c {

    /* renamed from: a */
    public final Object f4202a;

    public C0956c(Object obj) {
        this.f4202a = obj;
    }

    /* renamed from: a */
    public static C0956c m35419a(Object obj) {
        return obj == null ? null : new C0956c(obj);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0956c.class != obj.getClass()) {
            return false;
        }
        C0956c cVar = (C0956c) obj;
        Object obj2 = this.f4202a;
        if (obj2 != null) {
            z = obj2.equals(cVar.f4202a);
        } else if (cVar.f4202a != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Object obj = this.f4202a;
        return obj == null ? 0 : obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f4202a + "}";
    }
}
