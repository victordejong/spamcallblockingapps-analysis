package kotlinx.coroutines;

import kotlin.p075c.AbstractC1620a;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.ac */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ac.class */
public final class C1784ac extends AbstractC1620a {

    /* renamed from: a */
    public static final C1785a f4461a = new C1785a(null);

    /* renamed from: b */
    private final String f4462b;

    /* renamed from: kotlinx.coroutines.ac$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ac$a.class */
    public static final class C1785a implements AbstractC1646f.AbstractC1651c<C1784ac> {
        private C1785a() {
        }

        public /* synthetic */ C1785a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: a */
    public final String m2959a() {
        return this.f4462b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C1784ac) && C1694h.m3123a((Object) this.f4462b, (Object) ((C1784ac) obj).f4462b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f4462b;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return "CoroutineName(" + this.f4462b + ')';
    }
}
