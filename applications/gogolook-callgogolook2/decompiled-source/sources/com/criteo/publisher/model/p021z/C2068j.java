package com.criteo.publisher.model.p021z;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.net.URL;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.z.j */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/j.class */
public final class C2068j extends AbstractC2059d {

    /* renamed from: com.criteo.publisher.model.z.j$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/j$a.class */
    public static final class C2069a extends TypeAdapter<AbstractC2078p> {

        /* renamed from: a */
        public volatile TypeAdapter<URL> f2317a;

        /* renamed from: b */
        public final Gson f2318b;

        public C2069a(Gson gson) {
            this.f2318b = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2078p pVar) throws IOException {
            if (pVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("url");
            if (pVar.mo35732a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<URL> typeAdapter = this.f2317a;
                TypeAdapter<URL> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2318b.m30989a(URL.class);
                    this.f2317a = typeAdapter2;
                }
                typeAdapter2.write(cVar, pVar.mo35732a());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2078p read(C10174a aVar) throws IOException {
            URL url = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("url".equals(o)) {
                        TypeAdapter<URL> typeAdapter = this.f2317a;
                        TypeAdapter<URL> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2318b.m30989a(URL.class);
                            this.f2317a = typeAdapter2;
                        }
                        url = typeAdapter2.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2068j(url);
        }

        public String toString() {
            return "TypeAdapter(NativeImpressionPixel)";
        }
    }

    public C2068j(URL url) {
        super(url);
    }
}
