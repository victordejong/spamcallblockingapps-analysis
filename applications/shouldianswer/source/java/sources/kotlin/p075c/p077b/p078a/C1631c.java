package kotlin.p075c.p077b.p078a;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
/* renamed from: kotlin.c.b.a.c */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/c.class */
public final class C1631c implements AbstractC1641c<Object> {

    /* renamed from: a */
    public static final C1631c f4356a = new C1631c();

    private C1631c() {
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public AbstractC1646f mo2555a() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public void mo2553a(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
