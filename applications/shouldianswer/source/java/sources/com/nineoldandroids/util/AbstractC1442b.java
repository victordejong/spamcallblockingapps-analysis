package com.nineoldandroids.util;
/* renamed from: com.nineoldandroids.util.b */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/util/b.class */
public abstract class AbstractC1442b<T> extends AbstractC1443c<T, Integer> {
    public AbstractC1442b(String str) {
        super(Integer.class, str);
    }

    /* renamed from: a */
    public final void m3605a(T t, Integer num) {
        m3605a((AbstractC1442b<T>) t, Integer.valueOf(num.intValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.nineoldandroids.util.AbstractC1443c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo3602a(Object obj, Integer num) {
        m3605a((AbstractC1442b<T>) obj, num);
    }
}
