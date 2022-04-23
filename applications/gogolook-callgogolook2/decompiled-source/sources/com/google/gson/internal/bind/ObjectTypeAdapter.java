package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.util.ArrayList;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p386w.C10146g;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ObjectTypeAdapter.class */
public final class ObjectTypeAdapter extends TypeAdapter<Object> {

    /* renamed from: b */
    public static final AbstractC10117u f7853b = new AbstractC10117u() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter.1
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            if (aVar.m13280a() == Object.class) {
                return new ObjectTypeAdapter(gson);
            }
            return null;
        }
    };

    /* renamed from: a */
    public final Gson f7854a;

    /* renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/ObjectTypeAdapter$a.class */
    public static /* synthetic */ class C3691a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7855a = new int[EnumC10176b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            try {
                f7855a[EnumC10176b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7855a[EnumC10176b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7855a[EnumC10176b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7855a[EnumC10176b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f7855a[EnumC10176b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f7855a[EnumC10176b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public ObjectTypeAdapter(Gson gson) {
        this.f7854a = gson;
    }

    @Override // com.google.gson.TypeAdapter
    public Object read(C10174a aVar) throws IOException {
        switch (C3691a.f7855a[aVar.mo13272F().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.mo13265a();
                while (aVar.mo13249h()) {
                    arrayList.add(read(aVar));
                }
                aVar.mo13251f();
                return arrayList;
            case 2:
                C10146g gVar = new C10146g();
                aVar.mo13260b();
                while (aVar.mo13249h()) {
                    gVar.put(aVar.mo13242o(), read(aVar));
                }
                aVar.mo13250g();
                return gVar;
            case 3:
                return aVar.mo13274B();
            case 4:
                return Double.valueOf(aVar.mo13245l());
            case 5:
                return Boolean.valueOf(aVar.mo13246k());
            case 6:
                aVar.mo13241p();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.TypeAdapter
    public void write(C10177c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.mo13214k();
            return;
        }
        TypeAdapter a = this.f7854a.m30989a((Class) obj.getClass());
        if (a instanceof ObjectTypeAdapter) {
            cVar.mo13224d();
            cVar.mo13220f();
            return;
        }
        a.write(cVar, obj);
    }
}
