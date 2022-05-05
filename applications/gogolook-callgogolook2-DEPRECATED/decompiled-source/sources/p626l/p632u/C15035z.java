package p626l.p632u;

import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.z */
/* loaded from: classes3-dex2jar.jar:l/u/z.class */
public final class C15035z<T> {

    /* renamed from: a */
    public final int f33069a;

    /* renamed from: b */
    public final T f33070b;

    public C15035z(int i, T t) {
        this.f33069a = i;
        this.f33070b = t;
    }

    /* renamed from: a */
    public final int m500a() {
        return this.f33069a;
    }

    /* renamed from: b */
    public final T m499b() {
        return this.f33070b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C15035z)) {
            return false;
        }
        C15035z zVar = (C15035z) obj;
        return this.f33069a == zVar.f33069a && C15149k.m384a(this.f33070b, zVar.f33070b);
    }

    public int hashCode() {
        int i = this.f33069a;
        T t = this.f33070b;
        return (i * 31) + (t != null ? t.hashCode() : 0);
    }

    public String toString() {
        return "IndexedValue(index=" + this.f33069a + ", value=" + this.f33070b + ")";
    }
}
