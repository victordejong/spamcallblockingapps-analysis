package com.google.protobuf;

import com.google.protobuf.C1886h;
import com.google.protobuf.C1900l;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import p287x6.AbstractC4925w;
import p287x6.EnumC4904d0;
/* renamed from: com.google.protobuf.x */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/x.class */
public final class C1920x<T> implements AbstractC4925w<T> {

    /* renamed from: a */
    public final AbstractC1916u f7132a;

    /* renamed from: b */
    public final AbstractC1875d0<?, ?> f7133b;

    /* renamed from: c */
    public final boolean f7134c;

    /* renamed from: d */
    public final AbstractC1878f<?> f7135d;

    public C1920x(AbstractC1875d0<?, ?> abstractC1875d0, AbstractC1878f<?> abstractC1878f, AbstractC1916u abstractC1916u) {
        this.f7133b = abstractC1875d0;
        this.f7134c = abstractC1878f.mo4312d(abstractC1916u);
        this.f7135d = abstractC1878f;
        this.f7132a = abstractC1916u;
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: a */
    public void mo260a(T t, T t2) {
        AbstractC1875d0<?, ?> abstractC1875d0 = this.f7133b;
        Class<?> cls = C1861a0.f7035a;
        abstractC1875d0.mo245f(t, abstractC1875d0.mo246e(abstractC1875d0.mo250a(t), abstractC1875d0.mo250a(t2)));
        if (this.f7134c) {
            C1861a0.m4348z(this.f7135d, t, t2);
        }
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: b */
    public void mo259b(T t, AbstractC1885g0 abstractC1885g0) throws IOException {
        Iterator<Map.Entry<?, Object>> m4299k = this.f7135d.mo4314b(t).m4299k();
        while (m4299k.hasNext()) {
            Map.Entry<?, Object> next = m4299k.next();
            C1886h.AbstractC1887a abstractC1887a = (C1886h.AbstractC1887a) next.getKey();
            if (abstractC1887a.mo4277E() != EnumC4904d0.MESSAGE || abstractC1887a.mo4274z() || abstractC1887a.mo4276F()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof C1900l.C1902b) {
                ((C1876e) abstractC1885g0).m4328e(abstractC1887a.mo4275y(), ((C1900l.C1902b) next).f7094a.getValue().m4261b());
            } else {
                ((C1876e) abstractC1885g0).m4328e(abstractC1887a.mo4275y(), next.getValue());
            }
        }
        AbstractC1875d0<?, ?> abstractC1875d0 = this.f7133b;
        abstractC1875d0.mo244g(abstractC1875d0.mo250a(t), abstractC1885g0);
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: c */
    public void mo258c(T t) {
        this.f7133b.mo247d(t);
        this.f7135d.mo4311e(t);
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: d */
    public final boolean mo257d(T t) {
        return this.f7135d.mo4314b(t).m4301i();
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: e */
    public boolean mo256e(T t, T t2) {
        if (!this.f7133b.mo250a(t).equals(this.f7133b.mo250a(t2))) {
            return false;
        }
        if (!this.f7134c) {
            return true;
        }
        return this.f7135d.mo4314b(t).equals(this.f7135d.mo4314b(t2));
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: f */
    public int mo255f(T t) {
        AbstractC1875d0<?, ?> abstractC1875d0 = this.f7133b;
        int mo248c = abstractC1875d0.mo248c(abstractC1875d0.mo250a(t)) + 0;
        int i = mo248c;
        if (this.f7134c) {
            C1886h<?> mo4314b = this.f7135d.mo4314b(t);
            int i2 = 0;
            for (int i3 = 0; i3 < mo4314b.f7074a.m4343d(); i3++) {
                i2 += mo4314b.m4303g(mo4314b.f7074a.m4344c(i3));
            }
            for (Map.Entry<?, Object> entry : mo4314b.f7074a.m4342e()) {
                i2 += mo4314b.m4303g(entry);
            }
            i = mo248c + i2;
        }
        return i;
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: g */
    public int mo254g(T t) {
        int hashCode = this.f7133b.mo250a(t).hashCode();
        int i = hashCode;
        if (this.f7134c) {
            i = (hashCode * 53) + this.f7135d.mo4314b(t).hashCode();
        }
        return i;
    }
}
