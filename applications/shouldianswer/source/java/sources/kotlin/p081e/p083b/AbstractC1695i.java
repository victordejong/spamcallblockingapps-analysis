package kotlin.p081e.p083b;

import java.io.Serializable;
/* renamed from: kotlin.e.b.i */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/i.class */
public abstract class AbstractC1695i<R> implements Serializable, AbstractC1692f<R> {

    /* renamed from: a */
    private final int f4385a;

    public AbstractC1695i(int i) {
        this.f4385a = i;
    }

    @Override // kotlin.p081e.p083b.AbstractC1692f
    /* renamed from: g */
    public int mo3114g() {
        return this.f4385a;
    }

    public String toString() {
        String m3105a = C1703n.m3105a((AbstractC1695i) this);
        C1694h.m3122a((Object) m3105a, "Reflection.renderLambdaToString(this)");
        return m3105a;
    }
}
