package com.criteo.publisher.model;

import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.j */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/j.class */
public final class C2035j extends AbstractC2025d {

    /* renamed from: com.criteo.publisher.model.j$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/j$a.class */
    public static final class C2036a extends TypeAdapter<AbstractC2053x> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2232a;

        /* renamed from: b */
        public final Gson f2233b;

        public C2036a(Gson gson) {
            this.f2233b = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2053x xVar) throws IOException {
            if (xVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("deviceId");
            if (xVar.mo35787a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2232a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2233b.m30989a(String.class);
                    this.f2232a = typeAdapter2;
                }
                typeAdapter2.write(cVar, xVar.mo35787a());
            }
            cVar.mo13233a("deviceIdType");
            if (xVar.mo35784b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2232a;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2233b.m30989a(String.class);
                    this.f2232a = typeAdapter4;
                }
                typeAdapter4.write(cVar, xVar.mo35784b());
            }
            cVar.mo13233a("deviceOs");
            if (xVar.mo35783c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f2232a;
                TypeAdapter<String> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2233b.m30989a(String.class);
                    this.f2232a = typeAdapter6;
                }
                typeAdapter6.write(cVar, xVar.mo35783c());
            }
            cVar.mo13233a("mopubConsent");
            if (xVar.mo35782d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter7 = this.f2232a;
                TypeAdapter<String> typeAdapter8 = typeAdapter7;
                if (typeAdapter7 == null) {
                    typeAdapter8 = this.f2233b.m30989a(String.class);
                    this.f2232a = typeAdapter8;
                }
                typeAdapter8.write(cVar, xVar.mo35782d());
            }
            cVar.mo13233a("uspIab");
            if (xVar.mo35780f() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter9 = this.f2232a;
                TypeAdapter<String> typeAdapter10 = typeAdapter9;
                if (typeAdapter9 == null) {
                    typeAdapter10 = this.f2233b.m30989a(String.class);
                    this.f2232a = typeAdapter10;
                }
                typeAdapter10.write(cVar, xVar.mo35780f());
            }
            cVar.mo13233a("uspOptout");
            if (xVar.mo35779g() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter11 = this.f2232a;
                TypeAdapter<String> typeAdapter12 = typeAdapter11;
                if (typeAdapter11 == null) {
                    typeAdapter12 = this.f2233b.m30989a(String.class);
                    this.f2232a = typeAdapter12;
                }
                typeAdapter12.write(cVar, xVar.mo35779g());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2053x read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("deviceId".equals(o)) {
                        TypeAdapter<String> typeAdapter = this.f2232a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2233b.m30989a(String.class);
                            this.f2232a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if ("deviceIdType".equals(o)) {
                        TypeAdapter<String> typeAdapter3 = this.f2232a;
                        TypeAdapter<String> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2233b.m30989a(String.class);
                            this.f2232a = typeAdapter4;
                        }
                        str2 = typeAdapter4.read(aVar);
                    } else if ("deviceOs".equals(o)) {
                        TypeAdapter<String> typeAdapter5 = this.f2232a;
                        TypeAdapter<String> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2233b.m30989a(String.class);
                            this.f2232a = typeAdapter6;
                        }
                        str3 = typeAdapter6.read(aVar);
                    } else if ("mopubConsent".equals(o)) {
                        TypeAdapter<String> typeAdapter7 = this.f2232a;
                        TypeAdapter<String> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2233b.m30989a(String.class);
                            this.f2232a = typeAdapter8;
                        }
                        str4 = typeAdapter8.read(aVar);
                    } else if ("uspIab".equals(o)) {
                        TypeAdapter<String> typeAdapter9 = this.f2232a;
                        TypeAdapter<String> typeAdapter10 = typeAdapter9;
                        if (typeAdapter9 == null) {
                            typeAdapter10 = this.f2233b.m30989a(String.class);
                            this.f2232a = typeAdapter10;
                        }
                        str5 = typeAdapter10.read(aVar);
                    } else if ("uspOptout".equals(o)) {
                        TypeAdapter<String> typeAdapter11 = this.f2232a;
                        TypeAdapter<String> typeAdapter12 = typeAdapter11;
                        if (typeAdapter11 == null) {
                            typeAdapter12 = this.f2233b.m30989a(String.class);
                            this.f2232a = typeAdapter12;
                        }
                        str6 = typeAdapter12.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2035j(str, str2, str3, str4, str5, str6);
        }

        public String toString() {
            return "TypeAdapter(User)";
        }
    }

    public C2035j(@Nullable String str, String str2, String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        super(str, str2, str3, str4, str5, str6);
    }
}
