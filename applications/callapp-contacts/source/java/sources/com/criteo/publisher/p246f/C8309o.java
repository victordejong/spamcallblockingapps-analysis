package com.criteo.publisher.p246f;

import java.util.List;
/* renamed from: com.criteo.publisher.f.o */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/o.class */
final class C8309o<T> implements AbstractC8310p<T> {

    /* renamed from: a */
    private final AbstractC8310p<T> f29938a;

    /* renamed from: b */
    private final Object f29939b = new Object();

    /* renamed from: c */
    private final AbstractC8292b<T> f29940c;

    public C8309o(AbstractC8310p<T> abstractC8310p, AbstractC8292b<T> abstractC8292b) {
        this.f29938a = abstractC8310p;
        this.f29940c = abstractC8292b;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8310p
    /* renamed from: a */
    public final int mo25722a() {
        return this.f29938a.mo25722a();
    }

    @Override // com.criteo.publisher.p246f.AbstractC8310p
    /* renamed from: a */
    public final List<T> mo25721a(int i) {
        List<T> mo25721a;
        synchronized (this.f29939b) {
            mo25721a = this.f29938a.mo25721a(i);
        }
        return mo25721a;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8310p
    /* renamed from: a */
    public final boolean mo25720a(T t) {
        boolean mo25720a;
        synchronized (this.f29939b) {
            if (mo25722a() >= this.f29940c.mo25719a()) {
                this.f29938a.mo25721a(1);
            }
            mo25720a = this.f29938a.mo25720a((AbstractC8310p<T>) t);
        }
        return mo25720a;
    }
}
