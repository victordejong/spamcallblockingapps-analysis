package com.criteo.publisher.p027t;

import androidx.annotation.Nullable;
import com.criteo.publisher.p027t.AbstractC2138t;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.util.List;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.t.g */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/g.class */
public final class C2109g extends AbstractC2103c {

    /* renamed from: com.criteo.publisher.t.g$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/g$a.class */
    public static final class C2110a extends TypeAdapter<AbstractC2138t.AbstractC2139a> {

        /* renamed from: a */
        public volatile TypeAdapter<List<AbstractC2138t.AbstractC2140b>> f2381a;

        /* renamed from: b */
        public volatile TypeAdapter<Long> f2382b;

        /* renamed from: c */
        public volatile TypeAdapter<Boolean> f2383c;

        /* renamed from: d */
        public volatile TypeAdapter<Long> f2384d;

        /* renamed from: e */
        public volatile TypeAdapter<String> f2385e;

        /* renamed from: f */
        public final Gson f2386f;

        public C2110a(Gson gson) {
            this.f2386f = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2138t.AbstractC2139a aVar) throws IOException {
            if (aVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("slots");
            if (aVar.mo35625e() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<List<AbstractC2138t.AbstractC2140b>> typeAdapter = this.f2381a;
                TypeAdapter<List<AbstractC2138t.AbstractC2140b>> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2386f.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2138t.AbstractC2140b.class));
                    this.f2381a = typeAdapter2;
                }
                typeAdapter2.write(cVar, aVar.mo35625e());
            }
            cVar.mo13233a("elapsed");
            if (aVar.mo35627c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Long> typeAdapter3 = this.f2382b;
                TypeAdapter<Long> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2386f.m30989a(Long.class);
                    this.f2382b = typeAdapter4;
                }
                typeAdapter4.write(cVar, aVar.mo35627c());
            }
            cVar.mo13233a("isTimeout");
            TypeAdapter<Boolean> typeAdapter5 = this.f2383c;
            TypeAdapter<Boolean> typeAdapter6 = typeAdapter5;
            if (typeAdapter5 == null) {
                typeAdapter6 = this.f2386f.m30989a(Boolean.class);
                this.f2383c = typeAdapter6;
            }
            typeAdapter6.write(cVar, Boolean.valueOf(aVar.mo35624f()));
            cVar.mo13233a("cdbCallStartElapsed");
            TypeAdapter<Long> typeAdapter7 = this.f2384d;
            TypeAdapter<Long> typeAdapter8 = typeAdapter7;
            if (typeAdapter7 == null) {
                typeAdapter8 = this.f2386f.m30989a(Long.class);
                this.f2384d = typeAdapter8;
            }
            typeAdapter8.write(cVar, Long.valueOf(aVar.mo35628b()));
            cVar.mo13233a("cdbCallEndElapsed");
            if (aVar.mo35632a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<Long> typeAdapter9 = this.f2382b;
                TypeAdapter<Long> typeAdapter10 = typeAdapter9;
                if (typeAdapter9 == null) {
                    typeAdapter10 = this.f2386f.m30989a(Long.class);
                    this.f2382b = typeAdapter10;
                }
                typeAdapter10.write(cVar, aVar.mo35632a());
            }
            cVar.mo13233a("requestGroupId");
            if (aVar.mo35626d() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter11 = this.f2385e;
                TypeAdapter<String> typeAdapter12 = typeAdapter11;
                if (typeAdapter11 == null) {
                    typeAdapter12 = this.f2386f.m30989a(String.class);
                    this.f2385e = typeAdapter12;
                }
                typeAdapter12.write(cVar, aVar.mo35626d());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2138t.AbstractC2139a read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            long j = 0;
            List<AbstractC2138t.AbstractC2140b> list = null;
            Long l = null;
            Long l2 = null;
            String str = null;
            boolean z = false;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    if (o.hashCode() == -1893690153 && o.equals("isTimeout")) {
                        c = 0;
                    }
                    if (c == 0) {
                        TypeAdapter<Boolean> typeAdapter = this.f2383c;
                        TypeAdapter<Boolean> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2386f.m30989a(Boolean.class);
                            this.f2383c = typeAdapter2;
                        }
                        z = typeAdapter2.read(aVar).booleanValue();
                    } else if ("slots".equals(o)) {
                        TypeAdapter<List<AbstractC2138t.AbstractC2140b>> typeAdapter3 = this.f2381a;
                        TypeAdapter<List<AbstractC2138t.AbstractC2140b>> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2386f.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2138t.AbstractC2140b.class));
                            this.f2381a = typeAdapter4;
                        }
                        list = typeAdapter4.read(aVar);
                    } else if ("elapsed".equals(o)) {
                        TypeAdapter<Long> typeAdapter5 = this.f2382b;
                        TypeAdapter<Long> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2386f.m30989a(Long.class);
                            this.f2382b = typeAdapter6;
                        }
                        l = typeAdapter6.read(aVar);
                    } else if ("cdbCallStartElapsed".equals(o)) {
                        TypeAdapter<Long> typeAdapter7 = this.f2384d;
                        TypeAdapter<Long> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2386f.m30989a(Long.class);
                            this.f2384d = typeAdapter8;
                        }
                        j = typeAdapter8.read(aVar).longValue();
                    } else if ("cdbCallEndElapsed".equals(o)) {
                        TypeAdapter<Long> typeAdapter9 = this.f2382b;
                        TypeAdapter<Long> typeAdapter10 = typeAdapter9;
                        if (typeAdapter9 == null) {
                            typeAdapter10 = this.f2386f.m30989a(Long.class);
                            this.f2382b = typeAdapter10;
                        }
                        l2 = typeAdapter10.read(aVar);
                    } else if ("requestGroupId".equals(o)) {
                        TypeAdapter<String> typeAdapter11 = this.f2385e;
                        TypeAdapter<String> typeAdapter12 = typeAdapter11;
                        if (typeAdapter11 == null) {
                            typeAdapter12 = this.f2386f.m30989a(String.class);
                            this.f2385e = typeAdapter12;
                        }
                        str = typeAdapter12.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2109g(list, l, z, j, l2, str);
        }

        public String toString() {
            return "TypeAdapter(MetricRequest.MetricRequestFeedback)";
        }
    }

    public C2109g(List<AbstractC2138t.AbstractC2140b> list, @Nullable Long l, boolean z, long j, @Nullable Long l2, @Nullable String str) {
        super(list, l, z, j, l2, str);
    }
}
