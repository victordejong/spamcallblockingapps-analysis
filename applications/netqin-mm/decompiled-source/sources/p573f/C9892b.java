package p573f;

import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.b */
/* loaded from: classes2-dex2jar.jar:f/b.class */
public final class C9892b implements Comparable<C9892b> {

    /* renamed from: e */
    public static final C9892b f37096e = new C9892b(1, 3, 61);

    /* renamed from: a */
    public final int f37097a;

    /* renamed from: b */
    public final int f37098b;

    /* renamed from: c */
    public final int f37099c;

    /* renamed from: d */
    public final int f37100d;

    /* renamed from: f.b$a */
    /* loaded from: classes2-dex2jar.jar:f/b$a.class */
    public static final class C9893a {
        public C9893a() {
        }

        public /* synthetic */ C9893a(C10057o oVar) {
            this();
        }
    }

    static {
        new C9893a(null);
    }

    public C9892b(int i, int i2, int i3) {
        this.f37098b = i;
        this.f37099c = i2;
        this.f37100d = i3;
        this.f37097a = m1820a(i, i2, i3);
    }

    /* renamed from: a */
    public final int m1820a(int i, int i2, int i3) {
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    /* renamed from: a */
    public int compareTo(C9892b bVar) {
        C10059q.m1637b(bVar, "other");
        return this.f37097a - bVar.f37097a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        Object obj2 = obj;
        if (!(obj instanceof C9892b)) {
            obj2 = null;
        }
        C9892b bVar = (C9892b) obj2;
        if (bVar == null) {
            return false;
        }
        if (this.f37097a != bVar.f37097a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f37097a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f37098b);
        sb.append('.');
        sb.append(this.f37099c);
        sb.append('.');
        sb.append(this.f37100d);
        return sb.toString();
    }
}
