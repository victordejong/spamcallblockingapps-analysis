package p193e.p1451f.p1452a.p1480t;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.t.i */
/* loaded from: classes-dex2jar.jar:e/f/a/t/i.class */
public class C22622i {

    /* renamed from: a */
    public Class<?> f62645a;

    /* renamed from: b */
    public Class<?> f62646b;

    /* renamed from: c */
    public Class<?> f62647c;

    public C22622i() {
    }

    public C22622i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f62645a = cls;
        this.f62646b = cls2;
        this.f62647c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C22622i.class != obj.getClass()) {
            return false;
        }
        C22622i c22622i = (C22622i) obj;
        return this.f62645a.equals(c22622i.f62645a) && this.f62646b.equals(c22622i.f62646b) && C22623j.m8022b(this.f62647c, c22622i.f62647c);
    }

    public int hashCode() {
        int hashCode = this.f62645a.hashCode();
        int hashCode2 = this.f62646b.hashCode();
        Class<?> cls = this.f62647c;
        return ((hashCode2 + (hashCode * 31)) * 31) + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MultiClassKey{first=");
        m8728C.append(this.f62645a);
        m8728C.append(", second=");
        m8728C.append(this.f62646b);
        m8728C.append('}');
        return m8728C.toString();
    }
}
