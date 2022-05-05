package com.criteo.publisher.p027t;

import androidx.annotation.Nullable;
import com.criteo.publisher.p027t.AbstractC2127m;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.t.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/e.class */
public final class C2105e extends AbstractC2099a {

    /* renamed from: com.criteo.publisher.t.e$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/e$a.class */
    public static final class C2106a extends TypeAdapter<AbstractC2127m> {

        /* renamed from: a */
        public volatile TypeAdapter<Long> f2373a;

        /* renamed from: b */
        public volatile TypeAdapter<Boolean> f2374b;

        /* renamed from: c */
        public volatile TypeAdapter<String> f2375c;

        /* renamed from: d */
        public final Gson f2376d;

        public C2106a(Gson gson) {
            this.f2376d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2127m mVar) throws IOException {
            if (mVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("cdbCallStartTimestamp");
            if (mVar.mo35674b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Long> typeAdapter = this.f2373a;
                TypeAdapter<Long> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2376d.m30989a(Long.class);
                    this.f2373a = typeAdapter2;
                }
                typeAdapter2.write(cVar, mVar.mo35674b());
            }
            cVar.mo13233a("cdbCallEndTimestamp");
            if (mVar.mo35677a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Long> typeAdapter3 = this.f2373a;
                TypeAdapter<Long> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2376d.m30989a(Long.class);
                    this.f2373a = typeAdapter4;
                }
                typeAdapter4.write(cVar, mVar.mo35677a());
            }
            cVar.mo13233a("cdbCallTimeout");
            TypeAdapter<Boolean> typeAdapter5 = this.f2374b;
            TypeAdapter<Boolean> typeAdapter6 = typeAdapter5;
            if (typeAdapter5 == null) {
                typeAdapter6 = this.f2376d.m30989a(Boolean.class);
                this.f2374b = typeAdapter6;
            }
            typeAdapter6.write(cVar, Boolean.valueOf(mVar.mo35669g()));
            cVar.mo13233a("cachedBidUsed");
            TypeAdapter<Boolean> typeAdapter7 = this.f2374b;
            TypeAdapter<Boolean> typeAdapter8 = typeAdapter7;
            if (typeAdapter7 == null) {
                typeAdapter8 = this.f2376d.m30989a(Boolean.class);
                this.f2374b = typeAdapter8;
            }
            typeAdapter8.write(cVar, Boolean.valueOf(mVar.mo35670f()));
            cVar.mo13233a("elapsedTimestamp");
            if (mVar.mo35673c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Long> typeAdapter9 = this.f2373a;
                TypeAdapter<Long> typeAdapter10 = typeAdapter9;
                if (typeAdapter9 == null) {
                    typeAdapter10 = this.f2376d.m30989a(Long.class);
                    this.f2373a = typeAdapter10;
                }
                typeAdapter10.write(cVar, mVar.mo35673c());
            }
            cVar.mo13233a("impressionId");
            if (mVar.mo35672d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter11 = this.f2375c;
                TypeAdapter<String> typeAdapter12 = typeAdapter11;
                if (typeAdapter11 == null) {
                    typeAdapter12 = this.f2376d.m30989a(String.class);
                    this.f2375c = typeAdapter12;
                }
                typeAdapter12.write(cVar, mVar.mo35672d());
            }
            cVar.mo13233a("requestGroupId");
            if (mVar.mo35671e() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter13 = this.f2375c;
                TypeAdapter<String> typeAdapter14 = typeAdapter13;
                if (typeAdapter13 == null) {
                    typeAdapter14 = this.f2376d.m30989a(String.class);
                    this.f2375c = typeAdapter14;
                }
                typeAdapter14.write(cVar, mVar.mo35671e());
            }
            cVar.mo13233a("readyToSend");
            TypeAdapter<Boolean> typeAdapter15 = this.f2374b;
            TypeAdapter<Boolean> typeAdapter16 = typeAdapter15;
            if (typeAdapter15 == null) {
                typeAdapter16 = this.f2376d.m30989a(Boolean.class);
                this.f2374b = typeAdapter16;
            }
            typeAdapter16.write(cVar, Boolean.valueOf(mVar.mo35668h()));
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2127m read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            AbstractC2127m.AbstractC2128a j = AbstractC2127m.m35666j();
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("cdbCallStartTimestamp".equals(o)) {
                        TypeAdapter<Long> typeAdapter = this.f2373a;
                        TypeAdapter<Long> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2376d.m30989a(Long.class);
                            this.f2373a = typeAdapter2;
                        }
                        j.mo35661b(typeAdapter2.read(aVar));
                    } else if ("cdbCallEndTimestamp".equals(o)) {
                        TypeAdapter<Long> typeAdapter3 = this.f2373a;
                        TypeAdapter<Long> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2376d.m30989a(Long.class);
                            this.f2373a = typeAdapter4;
                        }
                        j.mo35664a(typeAdapter4.read(aVar));
                    } else if ("cdbCallTimeout".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter5 = this.f2374b;
                        TypeAdapter<Boolean> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2376d.m30989a(Boolean.class);
                            this.f2374b = typeAdapter6;
                        }
                        j.mo35659b(typeAdapter6.read(aVar).booleanValue());
                    } else if ("cachedBidUsed".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter7 = this.f2374b;
                        TypeAdapter<Boolean> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2376d.m30989a(Boolean.class);
                            this.f2374b = typeAdapter8;
                        }
                        j.mo35662a(typeAdapter8.read(aVar).booleanValue());
                    } else if ("elapsedTimestamp".equals(o)) {
                        TypeAdapter<Long> typeAdapter9 = this.f2373a;
                        TypeAdapter<Long> typeAdapter10 = typeAdapter9;
                        if (typeAdapter9 == null) {
                            typeAdapter10 = this.f2376d.m30989a(Long.class);
                            this.f2373a = typeAdapter10;
                        }
                        j.mo35658c(typeAdapter10.read(aVar));
                    } else if ("impressionId".equals(o)) {
                        TypeAdapter<String> typeAdapter11 = this.f2375c;
                        TypeAdapter<String> typeAdapter12 = typeAdapter11;
                        if (typeAdapter11 == null) {
                            typeAdapter12 = this.f2376d.m30989a(String.class);
                            this.f2375c = typeAdapter12;
                        }
                        j.mo35663a(typeAdapter12.read(aVar));
                    } else if ("requestGroupId".equals(o)) {
                        TypeAdapter<String> typeAdapter13 = this.f2375c;
                        TypeAdapter<String> typeAdapter14 = typeAdapter13;
                        if (typeAdapter13 == null) {
                            typeAdapter14 = this.f2376d.m30989a(String.class);
                            this.f2375c = typeAdapter14;
                        }
                        j.mo35660b(typeAdapter14.read(aVar));
                    } else if ("readyToSend".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter15 = this.f2374b;
                        TypeAdapter<Boolean> typeAdapter16 = typeAdapter15;
                        if (typeAdapter15 == null) {
                            typeAdapter16 = this.f2376d.m30989a(Boolean.class);
                            this.f2374b = typeAdapter16;
                        }
                        j.mo35657c(typeAdapter16.read(aVar).booleanValue());
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return j.mo35665a();
        }

        public String toString() {
            return "TypeAdapter(Metric)";
        }
    }

    public C2105e(@Nullable Long l, @Nullable Long l2, boolean z, boolean z2, @Nullable Long l3, String str, @Nullable String str2, boolean z3) {
        super(l, l2, z, z2, l3, str, str2, z3);
    }
}
