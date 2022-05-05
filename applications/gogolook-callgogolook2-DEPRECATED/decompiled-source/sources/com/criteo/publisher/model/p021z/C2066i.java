package com.criteo.publisher.model.p021z;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.net.URL;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.z.i */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/i.class */
public final class C2066i extends AbstractC2058c {

    /* renamed from: com.criteo.publisher.model.z.i$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/i$a.class */
    public static final class C2067a extends TypeAdapter<AbstractC2077o> {

        /* renamed from: a */
        public volatile TypeAdapter<URL> f2315a;

        /* renamed from: b */
        public final Gson f2316b;

        public C2067a(Gson gson) {
            this.f2316b = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2077o oVar) throws IOException {
            if (oVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("url");
            if (oVar.mo35734a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<URL> typeAdapter = this.f2315a;
                TypeAdapter<URL> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2316b.m30989a(URL.class);
                    this.f2315a = typeAdapter2;
                }
                typeAdapter2.write(cVar, oVar.mo35734a());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2077o read(C10174a aVar) throws IOException {
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
                        TypeAdapter<URL> typeAdapter = this.f2315a;
                        TypeAdapter<URL> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2316b.m30989a(URL.class);
                            this.f2315a = typeAdapter2;
                        }
                        url = typeAdapter2.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2066i(url);
        }

        public String toString() {
            return "TypeAdapter(NativeImage)";
        }
    }

    public C2066i(URL url) {
        super(url);
    }
}
