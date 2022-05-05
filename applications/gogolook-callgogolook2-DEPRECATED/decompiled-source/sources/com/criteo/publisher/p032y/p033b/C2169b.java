package com.criteo.publisher.p032y.p033b;

import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.y.b.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/b.class */
public final class C2169b extends AbstractC2168a {

    /* renamed from: com.criteo.publisher.y.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/b$a.class */
    public static final class C2170a extends TypeAdapter<AbstractC2171c> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2499a;

        /* renamed from: b */
        public volatile TypeAdapter<Boolean> f2500b;

        /* renamed from: c */
        public volatile TypeAdapter<Integer> f2501c;

        /* renamed from: d */
        public final Gson f2502d;

        public C2170a(Gson gson) {
            this.f2502d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2171c cVar2) throws IOException {
            if (cVar2 == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("consentData");
            if (cVar2.mo35536a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2499a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2502d.m30989a(String.class);
                    this.f2499a = typeAdapter2;
                }
                typeAdapter2.write(cVar, cVar2.mo35536a());
            }
            cVar.mo13233a("gdprApplies");
            if (cVar2.mo35533b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Boolean> typeAdapter3 = this.f2500b;
                TypeAdapter<Boolean> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2502d.m30989a(Boolean.class);
                    this.f2500b = typeAdapter4;
                }
                typeAdapter4.write(cVar, cVar2.mo35533b());
            }
            cVar.mo13233a("version");
            if (cVar2.mo35531d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Integer> typeAdapter5 = this.f2501c;
                TypeAdapter<Integer> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2502d.m30989a(Integer.class);
                    this.f2501c = typeAdapter6;
                }
                typeAdapter6.write(cVar, cVar2.mo35531d());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2171c read(C10174a aVar) throws IOException {
            String str = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            Boolean bool = null;
            Integer num = null;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("consentData".equals(o)) {
                        TypeAdapter<String> typeAdapter = this.f2499a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2502d.m30989a(String.class);
                            this.f2499a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if ("gdprApplies".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter3 = this.f2500b;
                        TypeAdapter<Boolean> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2502d.m30989a(Boolean.class);
                            this.f2500b = typeAdapter4;
                        }
                        bool = typeAdapter4.read(aVar);
                    } else if ("version".equals(o)) {
                        TypeAdapter<Integer> typeAdapter5 = this.f2501c;
                        TypeAdapter<Integer> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2502d.m30989a(Integer.class);
                            this.f2501c = typeAdapter6;
                        }
                        num = typeAdapter6.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2169b(str, bool, num);
        }

        public String toString() {
            return "TypeAdapter(GdprData)";
        }
    }

    public C2169b(String str, @Nullable Boolean bool, Integer num) {
        super(str, bool, num);
    }
}
