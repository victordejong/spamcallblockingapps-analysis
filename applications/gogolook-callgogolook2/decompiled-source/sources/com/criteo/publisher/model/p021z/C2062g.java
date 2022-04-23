package com.criteo.publisher.model.p021z;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.net.URI;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.z.g */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/g.class */
public final class C2062g extends AbstractC2055a {

    /* renamed from: com.criteo.publisher.model.z.g$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/g$a.class */
    public static final class C2063a extends TypeAdapter<AbstractC2074m> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2306a;

        /* renamed from: b */
        public volatile TypeAdapter<URI> f2307b;

        /* renamed from: c */
        public volatile TypeAdapter<AbstractC2077o> f2308c;

        /* renamed from: d */
        public final Gson f2309d;

        public C2063a(Gson gson) {
            this.f2309d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2074m mVar) throws IOException {
            if (mVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("domain");
            if (mVar.mo35761b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2306a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2309d.m30989a(String.class);
                    this.f2306a = typeAdapter2;
                }
                typeAdapter2.write(cVar, mVar.mo35761b());
            }
            cVar.mo13233a("description");
            if (mVar.mo35763a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2306a;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2309d.m30989a(String.class);
                    this.f2306a = typeAdapter4;
                }
                typeAdapter4.write(cVar, mVar.mo35763a());
            }
            cVar.mo13233a("logoClickUrl");
            if (mVar.mo35759d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<URI> typeAdapter5 = this.f2307b;
                TypeAdapter<URI> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2309d.m30989a(URI.class);
                    this.f2307b = typeAdapter6;
                }
                typeAdapter6.write(cVar, mVar.mo35759d());
            }
            cVar.mo13233a("logo");
            if (mVar.mo35760c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<AbstractC2077o> typeAdapter7 = this.f2308c;
                TypeAdapter<AbstractC2077o> typeAdapter8 = typeAdapter7;
                if (typeAdapter7 == null) {
                    typeAdapter8 = this.f2309d.m30989a(AbstractC2077o.class);
                    this.f2308c = typeAdapter8;
                }
                typeAdapter8.write(cVar, mVar.mo35760c());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2074m read(C10174a aVar) throws IOException {
            String str = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            String str2 = null;
            URI uri = null;
            AbstractC2077o oVar = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("domain".equals(o)) {
                        TypeAdapter<String> typeAdapter = this.f2306a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2309d.m30989a(String.class);
                            this.f2306a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if ("description".equals(o)) {
                        TypeAdapter<String> typeAdapter3 = this.f2306a;
                        TypeAdapter<String> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2309d.m30989a(String.class);
                            this.f2306a = typeAdapter4;
                        }
                        str2 = typeAdapter4.read(aVar);
                    } else if ("logoClickUrl".equals(o)) {
                        TypeAdapter<URI> typeAdapter5 = this.f2307b;
                        TypeAdapter<URI> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2309d.m30989a(URI.class);
                            this.f2307b = typeAdapter6;
                        }
                        uri = typeAdapter6.read(aVar);
                    } else if ("logo".equals(o)) {
                        TypeAdapter<AbstractC2077o> typeAdapter7 = this.f2308c;
                        TypeAdapter<AbstractC2077o> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2309d.m30989a(AbstractC2077o.class);
                            this.f2308c = typeAdapter8;
                        }
                        oVar = typeAdapter8.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2062g(str, str2, uri, oVar);
        }

        public String toString() {
            return "TypeAdapter(NativeAdvertiser)";
        }
    }

    public C2062g(String str, String str2, URI uri, AbstractC2077o oVar) {
        super(str, str2, uri, oVar);
    }
}
