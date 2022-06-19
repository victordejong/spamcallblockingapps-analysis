package kotlin.p081e.p083b;

import kotlin.p081e.C1661a;
import kotlin.p085g.AbstractC1719b;
/* renamed from: kotlin.e.b.c */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/c.class */
public final class C1689c implements AbstractC1688b, AbstractC1719b<Object> {

    /* renamed from: a */
    private final Class<?> f4383a;

    public C1689c(Class<?> cls) {
        C1694h.m3117b(cls, "jClass");
        this.f4383a = cls;
    }

    @Override // kotlin.p081e.p083b.AbstractC1688b
    /* renamed from: a */
    public Class<?> mo3128a() {
        return this.f4383a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1689c) && C1694h.m3123a(C1661a.m3132a(this), C1661a.m3132a((AbstractC1719b) obj));
    }

    public int hashCode() {
        return C1661a.m3132a(this).hashCode();
    }

    public String toString() {
        return mo3128a().toString() + " (Kotlin reflection is not available)";
    }
}
