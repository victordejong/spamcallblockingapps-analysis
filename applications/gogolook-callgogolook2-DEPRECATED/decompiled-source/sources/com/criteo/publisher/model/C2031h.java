package com.criteo.publisher.model;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.h */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/h.class */
public final class C2031h extends AbstractC2023b {

    /* renamed from: com.criteo.publisher.model.h$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/h$a.class */
    public static final class C2032a extends TypeAdapter<AbstractC2049t> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2226a;

        /* renamed from: b */
        public volatile TypeAdapter<Integer> f2227b;

        /* renamed from: c */
        public final Gson f2228c;

        public C2032a(Gson gson) {
            this.f2228c = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2049t tVar) throws IOException {
            if (tVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("cpId");
            if (tVar.mo35815b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2226a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2228c.m30989a(String.class);
                    this.f2226a = typeAdapter2;
                }
                typeAdapter2.write(cVar, tVar.mo35815b());
            }
            cVar.mo13233a("bundleId");
            if (tVar.mo35818a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2226a;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2228c.m30989a(String.class);
                    this.f2226a = typeAdapter4;
                }
                typeAdapter4.write(cVar, tVar.mo35818a());
            }
            cVar.mo13233a("sdkVersion");
            if (tVar.mo35813d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f2226a;
                TypeAdapter<String> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2228c.m30989a(String.class);
                    this.f2226a = typeAdapter6;
                }
                typeAdapter6.write(cVar, tVar.mo35813d());
            }
            cVar.mo13233a("rtbProfileId");
            TypeAdapter<Integer> typeAdapter7 = this.f2227b;
            TypeAdapter<Integer> typeAdapter8 = typeAdapter7;
            if (typeAdapter7 == null) {
                typeAdapter8 = this.f2228c.m30989a(Integer.class);
                this.f2227b = typeAdapter8;
            }
            typeAdapter8.write(cVar, Integer.valueOf(tVar.mo35814c()));
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2049t read(C10174a aVar) throws IOException {
            String str = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            String str2 = null;
            String str3 = null;
            int i = 0;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    int hashCode = o.hashCode();
                    if (hashCode != -1537286620) {
                        if (hashCode == 3059304 && o.equals("cpId")) {
                            c = 0;
                        }
                    } else if (o.equals("rtbProfileId")) {
                        c = 1;
                    }
                    if (c == 0) {
                        TypeAdapter<String> typeAdapter = this.f2226a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2228c.m30989a(String.class);
                            this.f2226a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if (c == 1) {
                        TypeAdapter<Integer> typeAdapter3 = this.f2227b;
                        TypeAdapter<Integer> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2228c.m30989a(Integer.class);
                            this.f2227b = typeAdapter4;
                        }
                        i = typeAdapter4.read(aVar).intValue();
                    } else if ("bundleId".equals(o)) {
                        TypeAdapter<String> typeAdapter5 = this.f2226a;
                        TypeAdapter<String> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2228c.m30989a(String.class);
                            this.f2226a = typeAdapter6;
                        }
                        str2 = typeAdapter6.read(aVar);
                    } else if ("sdkVersion".equals(o)) {
                        TypeAdapter<String> typeAdapter7 = this.f2226a;
                        TypeAdapter<String> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2228c.m30989a(String.class);
                            this.f2226a = typeAdapter8;
                        }
                        str3 = typeAdapter8.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2031h(str, str2, str3, i);
        }

        public String toString() {
            return "TypeAdapter(RemoteConfigRequest)";
        }
    }

    public C2031h(String str, String str2, String str3, int i) {
        super(str, str2, str3, i);
    }
}
