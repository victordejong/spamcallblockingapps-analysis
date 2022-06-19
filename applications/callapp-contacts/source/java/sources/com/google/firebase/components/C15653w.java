package com.google.firebase.components;

import com.google.firebase.p391d.AbstractC15726a;
import com.google.firebase.p391d.AbstractC15728b;
/* renamed from: com.google.firebase.components.w */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/w.class */
public final class C15653w<T> implements AbstractC15726a<T>, AbstractC15728b<T> {

    /* renamed from: b */
    AbstractC15726a.AbstractC15727a<T> f56070b;

    /* renamed from: c */
    volatile AbstractC15728b<T> f56071c;

    /* renamed from: d */
    private static final AbstractC15726a.AbstractC15727a<Object> f56069d = C15654x.m8494b();

    /* renamed from: a */
    static final AbstractC15728b<Object> f56068a = C15655y.m8493b();

    private C15653w(AbstractC15726a.AbstractC15727a<T> abstractC15727a, AbstractC15728b<T> abstractC15728b) {
        this.f56070b = abstractC15727a;
        this.f56071c = abstractC15728b;
    }

    /* renamed from: b */
    public static <T> C15653w<T> m8497b() {
        return new C15653w<>(f56069d, f56068a);
    }

    /* renamed from: c */
    public static /* synthetic */ Object m8496c() {
        return null;
    }

    /* renamed from: d */
    public static /* synthetic */ void m8495d() {
    }

    @Override // com.google.firebase.p391d.AbstractC15728b
    /* renamed from: a */
    public final T mo8476a() {
        return this.f56071c.mo8476a();
    }
}
