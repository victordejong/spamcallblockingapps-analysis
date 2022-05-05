package com.criteo.publisher.model;

import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.mopub.common.AdType;
import java.io.IOException;
import java.util.Collection;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.g */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/g.class */
public final class C2029g extends AbstractC2022a {

    /* renamed from: com.criteo.publisher.model.g$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/g$a.class */
    public static final class C2030a extends TypeAdapter<AbstractC2040n> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2222a;

        /* renamed from: b */
        public volatile TypeAdapter<Boolean> f2223b;

        /* renamed from: c */
        public volatile TypeAdapter<Collection<String>> f2224c;

        /* renamed from: d */
        public final Gson f2225d;

        public C2030a(Gson gson) {
            this.f2225d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2040n nVar) throws IOException {
            if (nVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("impId");
            if (nVar.mo35854a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2222a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2225d.m30989a(String.class);
                    this.f2222a = typeAdapter2;
                }
                typeAdapter2.write(cVar, nVar.mo35854a());
            }
            cVar.mo13233a("placementId");
            if (nVar.mo35851b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2222a;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2225d.m30989a(String.class);
                    this.f2222a = typeAdapter4;
                }
                typeAdapter4.write(cVar, nVar.mo35851b());
            }
            cVar.mo13233a("isNative");
            if (nVar.mo35848e() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Boolean> typeAdapter5 = this.f2223b;
                TypeAdapter<Boolean> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2225d.m30989a(Boolean.class);
                    this.f2223b = typeAdapter6;
                }
                typeAdapter6.write(cVar, nVar.mo35848e());
            }
            cVar.mo13233a(AdType.INTERSTITIAL);
            if (nVar.mo35849d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Boolean> typeAdapter7 = this.f2223b;
                TypeAdapter<Boolean> typeAdapter8 = typeAdapter7;
                if (typeAdapter7 == null) {
                    typeAdapter8 = this.f2225d.m30989a(Boolean.class);
                    this.f2223b = typeAdapter8;
                }
                typeAdapter8.write(cVar, nVar.mo35849d());
            }
            cVar.mo13233a("sizes");
            if (nVar.mo35850c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Collection<String>> typeAdapter9 = this.f2224c;
                TypeAdapter<Collection<String>> typeAdapter10 = typeAdapter9;
                if (typeAdapter9 == null) {
                    typeAdapter10 = this.f2225d.m30995a((C10173a) C10173a.m13277a(Collection.class, String.class));
                    this.f2224c = typeAdapter10;
                }
                typeAdapter10.write(cVar, nVar.mo35850c());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2040n read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            String str = null;
            String str2 = null;
            Boolean bool = null;
            Boolean bool2 = null;
            Collection<String> collection = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    switch (o.hashCode()) {
                        case -378584607:
                            if (o.equals("isNative")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 100326919:
                            if (o.equals("impId")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 109453458:
                            if (o.equals("sizes")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 604727084:
                            if (o.equals(AdType.INTERSTITIAL)) {
                                c = 3;
                                break;
                            }
                            break;
                        case 732231392:
                            if (o.equals("placementId")) {
                                c = 1;
                                break;
                            }
                            break;
                    }
                    if (c == 0) {
                        TypeAdapter<String> typeAdapter = this.f2222a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2225d.m30989a(String.class);
                            this.f2222a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if (c == 1) {
                        TypeAdapter<String> typeAdapter3 = this.f2222a;
                        TypeAdapter<String> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2225d.m30989a(String.class);
                            this.f2222a = typeAdapter4;
                        }
                        str2 = typeAdapter4.read(aVar);
                    } else if (c == 2) {
                        TypeAdapter<Boolean> typeAdapter5 = this.f2223b;
                        TypeAdapter<Boolean> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2225d.m30989a(Boolean.class);
                            this.f2223b = typeAdapter6;
                        }
                        bool = typeAdapter6.read(aVar);
                    } else if (c == 3) {
                        TypeAdapter<Boolean> typeAdapter7 = this.f2223b;
                        TypeAdapter<Boolean> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2225d.m30989a(Boolean.class);
                            this.f2223b = typeAdapter8;
                        }
                        bool2 = typeAdapter8.read(aVar);
                    } else if (c != 4) {
                        aVar.mo13266L();
                    } else {
                        TypeAdapter<Collection<String>> typeAdapter9 = this.f2224c;
                        TypeAdapter<Collection<String>> typeAdapter10 = typeAdapter9;
                        if (typeAdapter9 == null) {
                            typeAdapter10 = this.f2225d.m30995a((C10173a) C10173a.m13277a(Collection.class, String.class));
                            this.f2224c = typeAdapter10;
                        }
                        collection = typeAdapter10.read(aVar);
                    }
                }
            }
            aVar.mo13250g();
            return new C2029g(str, str2, bool, bool2, collection);
        }

        public String toString() {
            return "TypeAdapter(CdbRequestSlot)";
        }
    }

    public C2029g(String str, String str2, @Nullable Boolean bool, @Nullable Boolean bool2, Collection<String> collection) {
        super(str, str2, bool, bool2, collection);
    }
}
