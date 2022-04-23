package com.criteo.publisher.model.p021z;

import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.net.URI;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.z.l */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/l.class */
public final class C2072l extends AbstractC2061f {

    /* renamed from: com.criteo.publisher.model.z.l$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/l$a.class */
    public static final class C2073a extends TypeAdapter<AbstractC2080r> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2323a;

        /* renamed from: b */
        public volatile TypeAdapter<URI> f2324b;

        /* renamed from: c */
        public volatile TypeAdapter<AbstractC2077o> f2325c;

        /* renamed from: d */
        public final Gson f2326d;

        public C2073a(Gson gson) {
            this.f2326d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2080r rVar) throws IOException {
            if (rVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("title");
            if (rVar.mo35719g() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2323a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2326d.m30989a(String.class);
                    this.f2323a = typeAdapter2;
                }
                typeAdapter2.write(cVar, rVar.mo35719g());
            }
            cVar.mo13233a("description");
            if (rVar.mo35723c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2323a;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2326d.m30989a(String.class);
                    this.f2323a = typeAdapter4;
                }
                typeAdapter4.write(cVar, rVar.mo35723c());
            }
            cVar.mo13233a("price");
            if (rVar.mo35720f() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f2323a;
                TypeAdapter<String> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2326d.m30989a(String.class);
                    this.f2323a = typeAdapter6;
                }
                typeAdapter6.write(cVar, rVar.mo35720f());
            }
            cVar.mo13233a("clickUrl");
            if (rVar.mo35724b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<URI> typeAdapter7 = this.f2324b;
                TypeAdapter<URI> typeAdapter8 = typeAdapter7;
                if (typeAdapter7 == null) {
                    typeAdapter8 = this.f2326d.m30989a(URI.class);
                    this.f2324b = typeAdapter8;
                }
                typeAdapter8.write(cVar, rVar.mo35724b());
            }
            cVar.mo13233a("callToAction");
            if (rVar.mo35726a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter9 = this.f2323a;
                TypeAdapter<String> typeAdapter10 = typeAdapter9;
                if (typeAdapter9 == null) {
                    typeAdapter10 = this.f2326d.m30989a(String.class);
                    this.f2323a = typeAdapter10;
                }
                typeAdapter10.write(cVar, rVar.mo35726a());
            }
            cVar.mo13233a(TtmlNode.TAG_IMAGE);
            if (rVar.mo35722d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<AbstractC2077o> typeAdapter11 = this.f2325c;
                TypeAdapter<AbstractC2077o> typeAdapter12 = typeAdapter11;
                if (typeAdapter11 == null) {
                    typeAdapter12 = this.f2326d.m30989a(AbstractC2077o.class);
                    this.f2325c = typeAdapter12;
                }
                typeAdapter12.write(cVar, rVar.mo35722d());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2080r read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            String str = null;
            String str2 = null;
            String str3 = null;
            URI uri = null;
            String str4 = null;
            AbstractC2077o oVar = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("title".equals(o)) {
                        TypeAdapter<String> typeAdapter = this.f2323a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2326d.m30989a(String.class);
                            this.f2323a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if ("description".equals(o)) {
                        TypeAdapter<String> typeAdapter3 = this.f2323a;
                        TypeAdapter<String> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2326d.m30989a(String.class);
                            this.f2323a = typeAdapter4;
                        }
                        str2 = typeAdapter4.read(aVar);
                    } else if ("price".equals(o)) {
                        TypeAdapter<String> typeAdapter5 = this.f2323a;
                        TypeAdapter<String> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2326d.m30989a(String.class);
                            this.f2323a = typeAdapter6;
                        }
                        str3 = typeAdapter6.read(aVar);
                    } else if ("clickUrl".equals(o)) {
                        TypeAdapter<URI> typeAdapter7 = this.f2324b;
                        TypeAdapter<URI> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2326d.m30989a(URI.class);
                            this.f2324b = typeAdapter8;
                        }
                        uri = typeAdapter8.read(aVar);
                    } else if ("callToAction".equals(o)) {
                        TypeAdapter<String> typeAdapter9 = this.f2323a;
                        TypeAdapter<String> typeAdapter10 = typeAdapter9;
                        if (typeAdapter9 == null) {
                            typeAdapter10 = this.f2326d.m30989a(String.class);
                            this.f2323a = typeAdapter10;
                        }
                        str4 = typeAdapter10.read(aVar);
                    } else if (TtmlNode.TAG_IMAGE.equals(o)) {
                        TypeAdapter<AbstractC2077o> typeAdapter11 = this.f2325c;
                        TypeAdapter<AbstractC2077o> typeAdapter12 = typeAdapter11;
                        if (typeAdapter11 == null) {
                            typeAdapter12 = this.f2326d.m30989a(AbstractC2077o.class);
                            this.f2325c = typeAdapter12;
                        }
                        oVar = typeAdapter12.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2072l(str, str2, str3, uri, str4, oVar);
        }

        public String toString() {
            return "TypeAdapter(NativeProduct)";
        }
    }

    public C2072l(String str, String str2, String str3, URI uri, String str4, AbstractC2077o oVar) {
        super(str, str2, str3, uri, str4, oVar);
    }
}
