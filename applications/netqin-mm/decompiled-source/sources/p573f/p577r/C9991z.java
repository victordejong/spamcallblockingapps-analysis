package p573f.p577r;

import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.z */
/* loaded from: classes2-dex2jar.jar:f/r/z.class */
public final class C9991z<T> {

    /* renamed from: a */
    public final int f37157a;

    /* renamed from: b */
    public final T f37158b;

    /* renamed from: a */
    public final int m1692a() {
        return this.f37157a;
    }

    /* renamed from: b */
    public final T m1691b() {
        return this.f37158b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9991z)) {
            return false;
        }
        C9991z zVar = (C9991z) obj;
        return (this.f37157a == zVar.f37157a) && C10059q.m1643a(this.f37158b, zVar.f37158b);
    }

    public int hashCode() {
        int i = this.f37157a;
        T t = this.f37158b;
        return (i * 31) + (t != null ? t.hashCode() : 0);
    }

    public String toString() {
        return "IndexedValue(index=" + this.f37157a + ", value=" + this.f37158b + ")";
    }
}
