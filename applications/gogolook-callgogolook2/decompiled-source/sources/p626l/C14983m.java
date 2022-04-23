package p626l;

import java.io.Serializable;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.m */
/* loaded from: classes3-dex2jar.jar:l/m.class */
public final class C14983m<T> implements AbstractC14974f<T>, Serializable {

    /* renamed from: a */
    public AbstractC15107a<? extends T> f33015a;

    /* renamed from: b */
    public volatile Object f33016b;

    /* renamed from: c */
    public final Object f33017c;

    public C14983m(AbstractC15107a<? extends T> aVar, Object obj) {
        C15149k.m377b(aVar, "initializer");
        this.f33015a = aVar;
        this.f33016b = C14987q.f33021a;
        this.f33017c = obj != null ? obj : this;
    }

    public /* synthetic */ C14983m(AbstractC15107a aVar, Object obj, int i, C15145g gVar) {
        this(aVar, (i & 2) != 0 ? null : obj);
    }

    private final Object writeReplace() {
        return new C14897c(getValue());
    }

    /* renamed from: a */
    public boolean m651a() {
        return this.f33016b != C14987q.f33021a;
    }

    @Override // p626l.AbstractC14974f
    public T getValue() {
        T t;
        T t2 = (T) this.f33016b;
        if (t2 != C14987q.f33021a) {
            return t2;
        }
        synchronized (this.f33017c) {
            t = (T) this.f33016b;
            if (t == C14987q.f33021a) {
                AbstractC15107a<? extends T> aVar = this.f33015a;
                if (aVar != null) {
                    t = (T) aVar.invoke();
                    this.f33016b = t;
                    this.f33015a = null;
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
        }
        return t;
    }

    public String toString() {
        return m651a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
