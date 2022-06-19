package p305z4;

import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
/* renamed from: z4.s */
/* loaded from: classes-dex2jar.jar:z4/s.class */
public class C5099s<T> implements AbstractC4739b<T>, AbstractC4737a<T> {

    /* renamed from: c */
    public static final /* synthetic */ int f15448c = 0;

    /* renamed from: a */
    public AbstractC4737a.AbstractC4738a<T> f15449a;

    /* renamed from: b */
    public volatile AbstractC4739b<T> f15450b;

    public C5099s(AbstractC4737a.AbstractC4738a<T> abstractC4738a, AbstractC4739b<T> abstractC4739b) {
        this.f15449a = abstractC4738a;
        this.f15450b = abstractC4739b;
    }

    @Override // p275w5.AbstractC4739b
    public T get() {
        return this.f15450b.get();
    }
}
