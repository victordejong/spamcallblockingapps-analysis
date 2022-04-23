package com.criteo.publisher.p020a0;

import com.criteo.publisher.model.AbstractC2040n;
import com.criteo.publisher.model.AbstractC2049t;
import com.criteo.publisher.model.AbstractC2051v;
import com.criteo.publisher.model.AbstractC2053x;
import com.criteo.publisher.model.p021z.AbstractC2074m;
import com.criteo.publisher.model.p021z.AbstractC2075n;
import com.criteo.publisher.model.p021z.AbstractC2077o;
import com.criteo.publisher.model.p021z.AbstractC2078p;
import com.criteo.publisher.model.p021z.AbstractC2079q;
import com.criteo.publisher.model.p021z.AbstractC2080r;
import com.criteo.publisher.p027t.AbstractC2127m;
import com.criteo.publisher.p027t.AbstractC2138t;
import com.criteo.publisher.p032y.p033b.AbstractC2171c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import p081h.p203i.p384e.p390x.C10173a;
/* renamed from: com.criteo.publisher.a0.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/f.class */
public final class C1913f extends AbstractC1924l {
    @Override // p081h.p203i.p384e.AbstractC10117u
    public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
        Class<? super T> a = aVar.m13280a();
        if (AbstractC2040n.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2040n.m35853a(gson);
        }
        if (AbstractC2171c.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2171c.m35535a(gson);
        }
        if (AbstractC2127m.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2127m.m35676a(gson);
        }
        if (AbstractC2138t.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2138t.m35636a(gson);
        }
        if (AbstractC2138t.AbstractC2139a.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2138t.AbstractC2139a.m35630a(gson);
        }
        if (AbstractC2138t.AbstractC2140b.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2138t.AbstractC2140b.m35622a(gson);
        }
        if (AbstractC2074m.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2074m.m35762a(gson);
        }
        if (AbstractC2075n.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2075n.m35757a(gson);
        }
        if (AbstractC2077o.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2077o.m35733a(gson);
        }
        if (AbstractC2078p.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2078p.m35731a(gson);
        }
        if (AbstractC2079q.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2079q.m35729a(gson);
        }
        if (AbstractC2080r.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2080r.m35725a(gson);
        }
        if (AbstractC2049t.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2049t.m35817a(gson);
        }
        if (AbstractC2051v.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2051v.m35810a(gson);
        }
        if (AbstractC2053x.class.isAssignableFrom(a)) {
            return (TypeAdapter<T>) AbstractC2053x.m35786a(gson);
        }
        return null;
    }
}
