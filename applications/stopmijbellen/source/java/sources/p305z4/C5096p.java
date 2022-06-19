package p305z4;

import p275w5.AbstractC4739b;
/* renamed from: z4.p */
/* loaded from: classes-dex2jar.jar:z4/p.class */
public class C5096p<T> implements AbstractC4739b<T> {

    /* renamed from: c */
    public static final Object f15442c = new Object();

    /* renamed from: a */
    public volatile Object f15443a = f15442c;

    /* renamed from: b */
    public volatile AbstractC4739b<T> f15444b;

    public C5096p(AbstractC4739b<T> abstractC4739b) {
        this.f15444b = abstractC4739b;
    }

    @Override // p275w5.AbstractC4739b
    public T get() {
        Object obj = this.f15443a;
        Object obj2 = f15442c;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f15443a;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f15444b.get();
                    this.f15443a = t;
                    this.f15444b = null;
                }
            }
        }
        return (T) t;
    }
}
