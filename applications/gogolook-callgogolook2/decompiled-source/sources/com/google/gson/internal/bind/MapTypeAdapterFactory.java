package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10110p;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p386w.AbstractC10144e;
import p081h.p203i.p384e.p386w.AbstractC10154h;
import p081h.p203i.p384e.p386w.C10124b;
import p081h.p203i.p384e.p386w.C10128c;
import p081h.p203i.p384e.p386w.C10157k;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/MapTypeAdapterFactory.class */
public final class MapTypeAdapterFactory implements AbstractC10117u {

    /* renamed from: a */
    public final C10128c f7847a;

    /* renamed from: b */
    public final boolean f7848b;

    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter.class */
    public final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {

        /* renamed from: a */
        public final TypeAdapter<K> f7849a;

        /* renamed from: b */
        public final TypeAdapter<V> f7850b;

        /* renamed from: c */
        public final AbstractC10154h<? extends Map<K, V>> f7851c;

        public Adapter(Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, AbstractC10154h<? extends Map<K, V>> hVar) {
            this.f7849a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f7850b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.f7851c = hVar;
        }

        /* renamed from: a */
        public final String m30954a(AbstractC10104j jVar) {
            if (jVar.m13374v()) {
                C10110p q = jVar.m13378q();
                if (q.m13364D()) {
                    return String.valueOf(q.m13366A());
                }
                if (q.m13365C()) {
                    return Boolean.toString(q.m13360w());
                }
                if (q.m13363E()) {
                    return q.mo13361r();
                }
                throw new AssertionError();
            } else if (jVar.m13376t()) {
                return C14247d.f31851f;
            } else {
                throw new AssertionError();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public void write(C10177c cVar, Map<K, V> map) throws IOException {
            if (map == null) {
                cVar.mo13214k();
            } else if (!MapTypeAdapterFactory.this.f7848b) {
                cVar.mo13224d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.mo13233a(String.valueOf(entry.getKey()));
                    this.f7850b.write(cVar, entry.getValue());
                }
                cVar.mo13220f();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    AbstractC10104j jsonTree = this.f7849a.toJsonTree(entry2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(entry2.getValue());
                    z |= jsonTree.m13377s() || jsonTree.m13375u();
                }
                if (z) {
                    cVar.mo13227c();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        cVar.mo13227c();
                        C10157k.m13303a((AbstractC10104j) arrayList.get(i), cVar);
                        this.f7850b.write(cVar, arrayList2.get(i));
                        cVar.mo13221e();
                    }
                    cVar.mo13221e();
                    return;
                }
                cVar.mo13224d();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    cVar.mo13233a(m30954a((AbstractC10104j) arrayList.get(i2)));
                    this.f7850b.write(cVar, arrayList2.get(i2));
                }
                cVar.mo13220f();
            }
        }

        @Override // com.google.gson.TypeAdapter
        public Map<K, V> read(C10174a aVar) throws IOException {
            EnumC10176b F = aVar.mo13272F();
            if (F == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            Map<K, V> map = (Map) this.f7851c.construct();
            if (F == EnumC10176b.BEGIN_ARRAY) {
                aVar.mo13265a();
                while (aVar.mo13249h()) {
                    aVar.mo13265a();
                    K read = this.f7849a.read(aVar);
                    if (map.put(read, this.f7850b.read(aVar)) == null) {
                        aVar.mo13251f();
                    } else {
                        throw new C10113s("duplicate key: " + read);
                    }
                }
                aVar.mo13251f();
            } else {
                aVar.mo13260b();
                while (aVar.mo13249h()) {
                    AbstractC10144e.f22857a.mo13240a(aVar);
                    K read2 = this.f7849a.read(aVar);
                    if (map.put(read2, this.f7850b.read(aVar)) != null) {
                        throw new C10113s("duplicate key: " + read2);
                    }
                }
                aVar.mo13250g();
            }
            return map;
        }
    }

    public MapTypeAdapterFactory(C10128c cVar, boolean z) {
        this.f7847a = cVar;
        this.f7848b = z;
    }

    /* renamed from: a */
    public final TypeAdapter<?> m30955a(Gson gson, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? TypeAdapters.f7922f : gson.m30995a((C10173a) C10173a.m13278a(type));
    }

    @Override // p081h.p203i.p384e.AbstractC10117u
    public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
        Type b = aVar.m13276b();
        if (!Map.class.isAssignableFrom(aVar.m13280a())) {
            return null;
        }
        Type[] b2 = C10124b.m13340b(b, C10124b.m13336e(b));
        return new Adapter(gson, b2[0], m30955a(gson, b2[0]), b2[1], gson.m30995a((C10173a) C10173a.m13278a(b2[1])), this.f7847a.m13332a(aVar));
    }
}
