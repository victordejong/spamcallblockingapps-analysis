package com.google.protobuf;

import com.google.protobuf.AbstractC1888i;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.protobuf.g */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/g.class */
public final class C1884g extends AbstractC1878f<AbstractC1888i.C1892d> {
    @Override // com.google.protobuf.AbstractC1878f
    /* renamed from: a */
    public int mo4315a(Map.Entry<?, ?> entry) {
        Objects.requireNonNull((AbstractC1888i.C1892d) entry.getKey());
        return 0;
    }

    @Override // com.google.protobuf.AbstractC1878f
    /* renamed from: b */
    public C1886h<AbstractC1888i.C1892d> mo4314b(Object obj) {
        return ((AbstractC1888i.AbstractC1891c) obj).extensions;
    }

    @Override // com.google.protobuf.AbstractC1878f
    /* renamed from: c */
    public C1886h<AbstractC1888i.C1892d> mo4313c(Object obj) {
        AbstractC1888i.AbstractC1891c abstractC1891c = (AbstractC1888i.AbstractC1891c) obj;
        C1886h<AbstractC1888i.C1892d> c1886h = abstractC1891c.extensions;
        if (c1886h.f7075b) {
            abstractC1891c.extensions = c1886h.clone();
        }
        return abstractC1891c.extensions;
    }

    @Override // com.google.protobuf.AbstractC1878f
    /* renamed from: d */
    public boolean mo4312d(AbstractC1916u abstractC1916u) {
        return abstractC1916u instanceof AbstractC1888i.AbstractC1891c;
    }

    @Override // com.google.protobuf.AbstractC1878f
    /* renamed from: e */
    public void mo4311e(Object obj) {
        ((AbstractC1888i.AbstractC1891c) obj).extensions.m4298l();
    }

    @Override // com.google.protobuf.AbstractC1878f
    /* renamed from: f */
    public void mo4310f(AbstractC1885g0 abstractC1885g0, Map.Entry<?, ?> entry) throws IOException {
        Objects.requireNonNull((AbstractC1888i.C1892d) entry.getKey());
        throw null;
    }
}
