package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p386w.C10124b;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ArrayTypeAdapter.class */
public final class ArrayTypeAdapter<E> extends TypeAdapter<Object> {

    /* renamed from: c */
    public static final AbstractC10117u f7838c = new AbstractC10117u() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            Type b = aVar.m13276b();
            if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
                return null;
            }
            Type d = C10124b.m13337d(b);
            return new ArrayTypeAdapter(gson, gson.m30995a((C10173a) C10173a.m13278a(d)), C10124b.m13336e(d));
        }
    };

    /* renamed from: a */
    public final Class<E> f7839a;

    /* renamed from: b */
    public final TypeAdapter<E> f7840b;

    public ArrayTypeAdapter(Gson gson, TypeAdapter<E> typeAdapter, Class<E> cls) {
        this.f7840b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.f7839a = cls;
    }

    @Override // com.google.gson.TypeAdapter
    public Object read(C10174a aVar) throws IOException {
        if (aVar.mo13272F() == EnumC10176b.NULL) {
            aVar.mo13241p();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.mo13265a();
        while (aVar.mo13249h()) {
            arrayList.add(this.f7840b.read(aVar));
        }
        aVar.mo13251f();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f7839a, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.TypeAdapter
    public void write(C10177c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.mo13214k();
            return;
        }
        cVar.mo13227c();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f7840b.write(cVar, Array.get(obj, i));
        }
        cVar.mo13221e();
    }
}
