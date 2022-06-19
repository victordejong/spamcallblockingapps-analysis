package com.nineoldandroids.util;
/* renamed from: com.nineoldandroids.util.a */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/util/a.class */
public abstract class AbstractC1441a<T> extends AbstractC1443c<T, Float> {
    public AbstractC1441a(String str) {
        super(Float.class, str);
    }

    /* renamed from: a */
    public abstract void mo3607a(T t, float f);

    /* renamed from: a */
    public final void m3606a(T t, Float f) {
        mo3607a((AbstractC1441a<T>) t, f.floatValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.nineoldandroids.util.AbstractC1443c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo3602a(Object obj, Float f) {
        m3606a((AbstractC1441a<T>) obj, f);
    }
}
