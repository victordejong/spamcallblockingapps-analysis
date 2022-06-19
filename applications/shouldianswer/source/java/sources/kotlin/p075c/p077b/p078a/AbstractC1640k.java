package kotlin.p075c.p077b.p078a;

import kotlin.p075c.AbstractC1641c;
import kotlin.p081e.p083b.AbstractC1692f;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1703n;
/* renamed from: kotlin.c.b.a.k */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/k.class */
public abstract class AbstractC1640k extends AbstractC1632d implements AbstractC1692f<Object> {

    /* renamed from: a */
    private final int f4365a;

    public AbstractC1640k(int i, AbstractC1641c<Object> abstractC1641c) {
        super(abstractC1641c);
        this.f4365a = i;
    }

    @Override // kotlin.p081e.p083b.AbstractC1692f
    /* renamed from: g */
    public int mo3114g() {
        return this.f4365a;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
    public String toString() {
        String str;
        if (m3169e() == null) {
            str = C1703n.m3106a(this);
            C1694h.m3122a((Object) str, "Reflection.renderLambdaToString(this)");
        } else {
            str = super.toString();
        }
        return str;
    }
}
