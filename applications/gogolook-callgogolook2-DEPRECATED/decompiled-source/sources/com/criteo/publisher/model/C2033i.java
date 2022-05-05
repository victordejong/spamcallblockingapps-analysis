package com.criteo.publisher.model;

import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.i */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/i.class */
public final class C2033i extends AbstractC2024c {

    /* renamed from: com.criteo.publisher.model.i$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/i$a.class */
    public static final class C2034a extends TypeAdapter<AbstractC2051v> {

        /* renamed from: a */
        public volatile TypeAdapter<Boolean> f2229a;

        /* renamed from: b */
        public volatile TypeAdapter<String> f2230b;

        /* renamed from: c */
        public final Gson f2231c;

        public C2034a(Gson gson) {
            this.f2231c = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2051v vVar) throws IOException {
            if (vVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("killSwitch");
            if (vVar.mo35803f() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Boolean> typeAdapter = this.f2229a;
                TypeAdapter<Boolean> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2231c.m30989a(Boolean.class);
                    this.f2229a = typeAdapter2;
                }
                typeAdapter2.write(cVar, vVar.mo35803f());
            }
            cVar.mo13233a("AndroidDisplayUrlMacro");
            if (vVar.mo35805d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2230b;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2231c.m30989a(String.class);
                    this.f2230b = typeAdapter4;
                }
                typeAdapter4.write(cVar, vVar.mo35805d());
            }
            cVar.mo13233a("AndroidAdTagUrlMode");
            if (vVar.mo35806c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f2230b;
                TypeAdapter<String> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2231c.m30989a(String.class);
                    this.f2230b = typeAdapter6;
                }
                typeAdapter6.write(cVar, vVar.mo35806c());
            }
            cVar.mo13233a("AndroidAdTagDataMacro");
            if (vVar.mo35811a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter7 = this.f2230b;
                TypeAdapter<String> typeAdapter8 = typeAdapter7;
                if (typeAdapter7 == null) {
                    typeAdapter8 = this.f2231c.m30989a(String.class);
                    this.f2230b = typeAdapter8;
                }
                typeAdapter8.write(cVar, vVar.mo35811a());
            }
            cVar.mo13233a("AndroidAdTagDataMode");
            if (vVar.mo35807b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter9 = this.f2230b;
                TypeAdapter<String> typeAdapter10 = typeAdapter9;
                if (typeAdapter9 == null) {
                    typeAdapter10 = this.f2231c.m30989a(String.class);
                    this.f2230b = typeAdapter10;
                }
                typeAdapter10.write(cVar, vVar.mo35807b());
            }
            cVar.mo13233a("csmEnabled");
            if (vVar.mo35804e() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Boolean> typeAdapter11 = this.f2229a;
                TypeAdapter<Boolean> typeAdapter12 = typeAdapter11;
                if (typeAdapter11 == null) {
                    typeAdapter12 = this.f2231c.m30989a(Boolean.class);
                    this.f2229a = typeAdapter12;
                }
                typeAdapter12.write(cVar, vVar.mo35804e());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2051v read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            Boolean bool = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Boolean bool2 = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    int hashCode = o.hashCode();
                    if (hashCode != -648432651) {
                        if (hashCode != 28088106) {
                            if (hashCode != 1373006778) {
                                if (hashCode == 1395208240 && o.equals("AndroidDisplayUrlMacro")) {
                                    c = 0;
                                }
                            } else if (o.equals("AndroidAdTagDataMacro")) {
                                c = 2;
                            }
                        } else if (o.equals("AndroidAdTagUrlMode")) {
                            c = 1;
                        }
                    } else if (o.equals("AndroidAdTagDataMode")) {
                        c = 3;
                    }
                    if (c == 0) {
                        TypeAdapter<String> typeAdapter = this.f2230b;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2231c.m30989a(String.class);
                            this.f2230b = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if (c == 1) {
                        TypeAdapter<String> typeAdapter3 = this.f2230b;
                        TypeAdapter<String> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2231c.m30989a(String.class);
                            this.f2230b = typeAdapter4;
                        }
                        str2 = typeAdapter4.read(aVar);
                    } else if (c == 2) {
                        TypeAdapter<String> typeAdapter5 = this.f2230b;
                        TypeAdapter<String> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2231c.m30989a(String.class);
                            this.f2230b = typeAdapter6;
                        }
                        str3 = typeAdapter6.read(aVar);
                    } else if (c == 3) {
                        TypeAdapter<String> typeAdapter7 = this.f2230b;
                        TypeAdapter<String> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2231c.m30989a(String.class);
                            this.f2230b = typeAdapter8;
                        }
                        str4 = typeAdapter8.read(aVar);
                    } else if ("killSwitch".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter9 = this.f2229a;
                        TypeAdapter<Boolean> typeAdapter10 = typeAdapter9;
                        if (typeAdapter9 == null) {
                            typeAdapter10 = this.f2231c.m30989a(Boolean.class);
                            this.f2229a = typeAdapter10;
                        }
                        bool = typeAdapter10.read(aVar);
                    } else if ("csmEnabled".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter11 = this.f2229a;
                        TypeAdapter<Boolean> typeAdapter12 = typeAdapter11;
                        if (typeAdapter11 == null) {
                            typeAdapter12 = this.f2231c.m30989a(Boolean.class);
                            this.f2229a = typeAdapter12;
                        }
                        bool2 = typeAdapter12.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2033i(bool, str, str2, str3, str4, bool2);
        }

        public String toString() {
            return "TypeAdapter(RemoteConfigResponse)";
        }
    }

    public C2033i(@Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool2) {
        super(bool, str, str2, str3, str4, bool2);
    }
}
