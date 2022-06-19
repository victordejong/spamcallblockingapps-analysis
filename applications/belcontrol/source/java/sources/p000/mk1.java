package p000;
/* renamed from: mk1 */
/* loaded from: classes3-dex2jar.jar:mk1.class */
public final class mk1 implements al1<Object>, lk1 {

    /* renamed from: a */
    public final Class<?> f7039a;

    public mk1(Class<?> cls) {
        qk1.m744c(cls, "jClass");
        this.f7039a = cls;
    }

    @Override // p000.lk1
    /* renamed from: a */
    public Class<?> mo1231a() {
        return this.f7039a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof mk1) && qk1.m746a(hk1.m1620a(this), hk1.m1620a((al1) obj));
    }

    public int hashCode() {
        return hk1.m1620a(this).hashCode();
    }

    public String toString() {
        return mo1231a().toString() + " (Kotlin reflection is not available)";
    }
}
