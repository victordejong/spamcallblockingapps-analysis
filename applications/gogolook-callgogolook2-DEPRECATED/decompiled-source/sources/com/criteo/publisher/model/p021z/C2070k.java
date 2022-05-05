package com.criteo.publisher.model.p021z;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.z.k */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/k.class */
public final class C2070k extends AbstractC2060e {

    /* renamed from: com.criteo.publisher.model.z.k$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/k$a.class */
    public static final class C2071a extends TypeAdapter<AbstractC2079q> {

        /* renamed from: a */
        public volatile TypeAdapter<URI> f2319a;

        /* renamed from: b */
        public volatile TypeAdapter<URL> f2320b;

        /* renamed from: c */
        public volatile TypeAdapter<String> f2321c;

        /* renamed from: d */
        public final Gson f2322d;

        public C2071a(Gson gson) {
            this.f2322d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2079q qVar) throws IOException {
            if (qVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("optoutClickUrl");
            if (qVar.mo35730a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<URI> typeAdapter = this.f2319a;
                TypeAdapter<URI> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2322d.m30989a(URI.class);
                    this.f2319a = typeAdapter2;
                }
                typeAdapter2.write(cVar, qVar.mo35730a());
            }
            cVar.mo13233a("optoutImageUrl");
            if (qVar.mo35728b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<URL> typeAdapter3 = this.f2320b;
                TypeAdapter<URL> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2322d.m30989a(URL.class);
                    this.f2320b = typeAdapter4;
                }
                typeAdapter4.write(cVar, qVar.mo35728b());
            }
            cVar.mo13233a("longLegalText");
            if (qVar.mo35727c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f2321c;
                TypeAdapter<String> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2322d.m30989a(String.class);
                    this.f2321c = typeAdapter6;
                }
                typeAdapter6.write(cVar, qVar.mo35727c());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2079q read(C10174a aVar) throws IOException {
            URI uri = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            URL url = null;
            String str = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    int hashCode = o.hashCode();
                    if (hashCode != -111772945) {
                        if (hashCode != 763886698) {
                            if (hashCode == 1654281122 && o.equals("optoutClickUrl")) {
                                c = 0;
                            }
                        } else if (o.equals("longLegalText")) {
                            c = 2;
                        }
                    } else if (o.equals("optoutImageUrl")) {
                        c = 1;
                    }
                    if (c == 0) {
                        TypeAdapter<URI> typeAdapter = this.f2319a;
                        TypeAdapter<URI> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2322d.m30989a(URI.class);
                            this.f2319a = typeAdapter2;
                        }
                        uri = typeAdapter2.read(aVar);
                    } else if (c == 1) {
                        TypeAdapter<URL> typeAdapter3 = this.f2320b;
                        TypeAdapter<URL> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2322d.m30989a(URL.class);
                            this.f2320b = typeAdapter4;
                        }
                        url = typeAdapter4.read(aVar);
                    } else if (c != 2) {
                        aVar.mo13266L();
                    } else {
                        TypeAdapter<String> typeAdapter5 = this.f2321c;
                        TypeAdapter<String> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2322d.m30989a(String.class);
                            this.f2321c = typeAdapter6;
                        }
                        str = typeAdapter6.read(aVar);
                    }
                }
            }
            aVar.mo13250g();
            return new C2070k(uri, url, str);
        }

        public String toString() {
            return "TypeAdapter(NativePrivacy)";
        }
    }

    public C2070k(URI uri, URL url, String str) {
        super(uri, url, str);
    }
}
