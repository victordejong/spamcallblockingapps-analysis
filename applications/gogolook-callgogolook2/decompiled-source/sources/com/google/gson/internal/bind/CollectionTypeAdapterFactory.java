package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p386w.AbstractC10154h;
import p081h.p203i.p384e.p386w.C10124b;
import p081h.p203i.p384e.p386w.C10128c;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/CollectionTypeAdapterFactory.class */
public final class CollectionTypeAdapterFactory implements AbstractC10117u {

    /* renamed from: a */
    public final C10128c f7841a;

    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter.class */
    public static final class Adapter<E> extends TypeAdapter<Collection<E>> {

        /* renamed from: a */
        public final TypeAdapter<E> f7842a;

        /* renamed from: b */
        public final AbstractC10154h<? extends Collection<E>> f7843b;

        public Adapter(Gson gson, Type type, TypeAdapter<E> typeAdapter, AbstractC10154h<? extends Collection<E>> hVar) {
            this.f7842a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f7843b = hVar;
        }

        /* renamed from: a */
        public void write(C10177c cVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13227c();
            for (E e : collection) {
                this.f7842a.write(cVar, e);
            }
            cVar.mo13221e();
        }

        @Override // com.google.gson.TypeAdapter
        public Collection<E> read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            Collection<E> collection = (Collection) this.f7843b.construct();
            aVar.mo13265a();
            while (aVar.mo13249h()) {
                collection.add(this.f7842a.read(aVar));
            }
            aVar.mo13251f();
            return collection;
        }
    }

    public CollectionTypeAdapterFactory(C10128c cVar) {
        this.f7841a = cVar;
    }

    @Override // p081h.p203i.p384e.AbstractC10117u
    public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
        Type b = aVar.m13276b();
        Class<? super T> a = aVar.m13280a();
        if (!Collection.class.isAssignableFrom(a)) {
            return null;
        }
        Type a2 = C10124b.m13350a(b, (Class<?>) a);
        return new Adapter(gson, a2, gson.m30995a((C10173a) C10173a.m13278a(a2)), this.f7841a.m13332a(aVar));
    }
}
