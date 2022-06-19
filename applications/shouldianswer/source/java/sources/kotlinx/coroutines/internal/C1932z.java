package kotlinx.coroutines.internal;

import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.z */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/z.class */
public final class C1932z {

    /* renamed from: a */
    private Object[] f4681a;

    /* renamed from: b */
    private int f4682b;

    /* renamed from: c */
    private final AbstractC1646f f4683c;

    public C1932z(AbstractC1646f abstractC1646f, int i) {
        C1694h.m3117b(abstractC1646f, "context");
        this.f4683c = abstractC1646f;
        this.f4681a = new Object[i];
    }

    /* renamed from: a */
    public final Object m2560a() {
        Object[] objArr = this.f4681a;
        int i = this.f4682b;
        this.f4682b = i + 1;
        return objArr[i];
    }

    /* renamed from: a */
    public final void m2559a(Object obj) {
        Object[] objArr = this.f4681a;
        int i = this.f4682b;
        this.f4682b = i + 1;
        objArr[i] = obj;
    }

    /* renamed from: b */
    public final void m2558b() {
        this.f4682b = 0;
    }

    /* renamed from: c */
    public final AbstractC1646f m2557c() {
        return this.f4683c;
    }
}
