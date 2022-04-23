package androidx.work.impl.p009l;
/* renamed from: androidx.work.impl.l.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/l/d.class */
public class C0585d {

    /* renamed from: a */
    public final String f3081a;

    /* renamed from: b */
    public final int f3082b;

    public C0585d(String str, int i) {
        this.f3081a = str;
        this.f3082b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0585d.class != obj.getClass()) {
            return false;
        }
        C0585d dVar = (C0585d) obj;
        if (this.f3082b != dVar.f3082b) {
            return false;
        }
        return this.f3081a.equals(dVar.f3081a);
    }

    public int hashCode() {
        return (this.f3081a.hashCode() * 31) + this.f3082b;
    }
}
