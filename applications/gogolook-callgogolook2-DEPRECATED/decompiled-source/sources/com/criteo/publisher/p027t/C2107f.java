package com.criteo.publisher.p027t;

import com.criteo.publisher.p027t.AbstractC2138t;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.util.List;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.t.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/f.class */
public final class C2107f extends AbstractC2102b {

    /* renamed from: com.criteo.publisher.t.f$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/f$a.class */
    public static final class C2108a extends TypeAdapter<AbstractC2138t> {

        /* renamed from: a */
        public volatile TypeAdapter<List<AbstractC2138t.AbstractC2139a>> f2377a;

        /* renamed from: b */
        public volatile TypeAdapter<String> f2378b;

        /* renamed from: c */
        public volatile TypeAdapter<Integer> f2379c;

        /* renamed from: d */
        public final Gson f2380d;

        public C2108a(Gson gson) {
            this.f2380d = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2138t tVar) throws IOException {
            if (tVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("feedbacks");
            if (tVar.mo35637a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<List<AbstractC2138t.AbstractC2139a>> typeAdapter = this.f2377a;
                TypeAdapter<List<AbstractC2138t.AbstractC2139a>> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2380d.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2138t.AbstractC2139a.class));
                    this.f2377a = typeAdapter2;
                }
                typeAdapter2.write(cVar, tVar.mo35637a());
            }
            cVar.mo13233a("wrapper_version");
            if (tVar.mo35633c() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f2378b;
                TypeAdapter<String> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2380d.m30989a(String.class);
                    this.f2378b = typeAdapter4;
                }
                typeAdapter4.write(cVar, tVar.mo35633c());
            }
            cVar.mo13233a("profile_id");
            TypeAdapter<Integer> typeAdapter5 = this.f2379c;
            TypeAdapter<Integer> typeAdapter6 = typeAdapter5;
            if (typeAdapter5 == null) {
                typeAdapter6 = this.f2380d.m30989a(Integer.class);
                this.f2379c = typeAdapter6;
            }
            typeAdapter6.write(cVar, Integer.valueOf(tVar.mo35634b()));
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2138t read(C10174a aVar) throws IOException {
            List<AbstractC2138t.AbstractC2139a> list = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            String str = null;
            int i = 0;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    int hashCode = o.hashCode();
                    if (hashCode != -1102636175) {
                        if (hashCode == 1143342380 && o.equals("wrapper_version")) {
                            c = 0;
                        }
                    } else if (o.equals("profile_id")) {
                        c = 1;
                    }
                    if (c == 0) {
                        TypeAdapter<String> typeAdapter = this.f2378b;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2380d.m30989a(String.class);
                            this.f2378b = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if (c == 1) {
                        TypeAdapter<Integer> typeAdapter3 = this.f2379c;
                        TypeAdapter<Integer> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2380d.m30989a(Integer.class);
                            this.f2379c = typeAdapter4;
                        }
                        i = typeAdapter4.read(aVar).intValue();
                    } else if ("feedbacks".equals(o)) {
                        TypeAdapter<List<AbstractC2138t.AbstractC2139a>> typeAdapter5 = this.f2377a;
                        TypeAdapter<List<AbstractC2138t.AbstractC2139a>> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2380d.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2138t.AbstractC2139a.class));
                            this.f2377a = typeAdapter6;
                        }
                        list = typeAdapter6.read(aVar);
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2107f(list, str, i);
        }

        public String toString() {
            return "TypeAdapter(MetricRequest)";
        }
    }

    public C2107f(List<AbstractC2138t.AbstractC2139a> list, String str, int i) {
        super(list, str, i);
    }
}
