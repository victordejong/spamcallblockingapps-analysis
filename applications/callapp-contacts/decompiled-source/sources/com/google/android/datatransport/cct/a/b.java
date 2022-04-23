package com.google.android.datatransport.cct.a;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b.class */
public final class b implements com.google.firebase.encoders.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.firebase.encoders.a.a f20318a = new b();

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$a.class */
    static final class a implements com.google.firebase.encoders.d<com.google.android.datatransport.cct.a.a> {

        /* renamed from: a  reason: collision with root package name */
        static final a f20319a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20320b = com.google.firebase.encoders.c.a("sdkVersion");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20321c = com.google.firebase.encoders.c.a("model");

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20322d = com.google.firebase.encoders.c.a("hardware");
        private static final com.google.firebase.encoders.c e = com.google.firebase.encoders.c.a("device");
        private static final com.google.firebase.encoders.c f = com.google.firebase.encoders.c.a("product");
        private static final com.google.firebase.encoders.c g = com.google.firebase.encoders.c.a("osBuild");
        private static final com.google.firebase.encoders.c h = com.google.firebase.encoders.c.a("manufacturer");
        private static final com.google.firebase.encoders.c i = com.google.firebase.encoders.c.a("fingerprint");
        private static final com.google.firebase.encoders.c j = com.google.firebase.encoders.c.a("locale");
        private static final com.google.firebase.encoders.c k = com.google.firebase.encoders.c.a("country");
        private static final com.google.firebase.encoders.c l = com.google.firebase.encoders.c.a("mccMnc");
        private static final com.google.firebase.encoders.c m = com.google.firebase.encoders.c.a("applicationBuild");

        private a() {
        }

        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
            com.google.android.datatransport.cct.a.a aVar = (com.google.android.datatransport.cct.a.a) obj;
            com.google.firebase.encoders.e eVar2 = eVar;
            eVar2.add(f20320b, aVar.a());
            eVar2.add(f20321c, aVar.b());
            eVar2.add(f20322d, aVar.c());
            eVar2.add(e, aVar.d());
            eVar2.add(f, aVar.e());
            eVar2.add(g, aVar.f());
            eVar2.add(h, aVar.g());
            eVar2.add(i, aVar.h());
            eVar2.add(j, aVar.i());
            eVar2.add(k, aVar.j());
            eVar2.add(l, aVar.k());
            eVar2.add(m, aVar.l());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$b.class */
    static final class C0413b implements com.google.firebase.encoders.d<j> {

        /* renamed from: a  reason: collision with root package name */
        static final C0413b f20323a = new C0413b();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20324b = com.google.firebase.encoders.c.a("logRequest");

        private C0413b() {
        }

        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.add(f20324b, ((j) obj).a());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$c.class */
    static final class c implements com.google.firebase.encoders.d<k> {

        /* renamed from: a  reason: collision with root package name */
        static final c f20325a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20326b = com.google.firebase.encoders.c.a("clientType");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20327c = com.google.firebase.encoders.c.a("androidClientInfo");

        private c() {
        }

        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
            k kVar = (k) obj;
            com.google.firebase.encoders.e eVar2 = eVar;
            eVar2.add(f20326b, kVar.a());
            eVar2.add(f20327c, kVar.b());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$d.class */
    static final class d implements com.google.firebase.encoders.d<l> {

        /* renamed from: a  reason: collision with root package name */
        static final d f20328a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20329b = com.google.firebase.encoders.c.a("eventTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20330c = com.google.firebase.encoders.c.a("eventCode");

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20331d = com.google.firebase.encoders.c.a("eventUptimeMs");
        private static final com.google.firebase.encoders.c e = com.google.firebase.encoders.c.a("sourceExtension");
        private static final com.google.firebase.encoders.c f = com.google.firebase.encoders.c.a("sourceExtensionJsonProto3");
        private static final com.google.firebase.encoders.c g = com.google.firebase.encoders.c.a("timezoneOffsetSeconds");
        private static final com.google.firebase.encoders.c h = com.google.firebase.encoders.c.a("networkConnectionInfo");

        private d() {
        }

        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
            l lVar = (l) obj;
            com.google.firebase.encoders.e eVar2 = eVar;
            eVar2.add(f20329b, lVar.a());
            eVar2.add(f20330c, lVar.b());
            eVar2.add(f20331d, lVar.c());
            eVar2.add(e, lVar.d());
            eVar2.add(f, lVar.e());
            eVar2.add(g, lVar.f());
            eVar2.add(h, lVar.g());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$e.class */
    static final class e implements com.google.firebase.encoders.d<m> {

        /* renamed from: a  reason: collision with root package name */
        static final e f20332a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20333b = com.google.firebase.encoders.c.a("requestTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20334c = com.google.firebase.encoders.c.a("requestUptimeMs");

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20335d = com.google.firebase.encoders.c.a("clientInfo");
        private static final com.google.firebase.encoders.c e = com.google.firebase.encoders.c.a("logSource");
        private static final com.google.firebase.encoders.c f = com.google.firebase.encoders.c.a("logSourceName");
        private static final com.google.firebase.encoders.c g = com.google.firebase.encoders.c.a("logEvent");
        private static final com.google.firebase.encoders.c h = com.google.firebase.encoders.c.a("qosTier");

        private e() {
        }

        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
            m mVar = (m) obj;
            com.google.firebase.encoders.e eVar2 = eVar;
            eVar2.add(f20333b, mVar.a());
            eVar2.add(f20334c, mVar.b());
            eVar2.add(f20335d, mVar.c());
            eVar2.add(e, mVar.d());
            eVar2.add(f, mVar.e());
            eVar2.add(g, mVar.f());
            eVar2.add(h, mVar.g());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$f.class */
    static final class f implements com.google.firebase.encoders.d<o> {

        /* renamed from: a  reason: collision with root package name */
        static final f f20336a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20337b = com.google.firebase.encoders.c.a("networkType");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20338c = com.google.firebase.encoders.c.a("mobileSubtype");

        private f() {
        }

        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
            o oVar = (o) obj;
            com.google.firebase.encoders.e eVar2 = eVar;
            eVar2.add(f20337b, oVar.a());
            eVar2.add(f20338c, oVar.b());
        }
    }

    private b() {
    }

    @Override // com.google.firebase.encoders.a.a
    public final void configure(com.google.firebase.encoders.a.b<?> bVar) {
        bVar.registerEncoder(j.class, C0413b.f20323a);
        bVar.registerEncoder(com.google.android.datatransport.cct.a.d.class, C0413b.f20323a);
        bVar.registerEncoder(m.class, e.f20332a);
        bVar.registerEncoder(g.class, e.f20332a);
        bVar.registerEncoder(k.class, c.f20325a);
        bVar.registerEncoder(com.google.android.datatransport.cct.a.e.class, c.f20325a);
        bVar.registerEncoder(com.google.android.datatransport.cct.a.a.class, a.f20319a);
        bVar.registerEncoder(com.google.android.datatransport.cct.a.c.class, a.f20319a);
        bVar.registerEncoder(l.class, d.f20328a);
        bVar.registerEncoder(com.google.android.datatransport.cct.a.f.class, d.f20328a);
        bVar.registerEncoder(o.class, f.f20336a);
        bVar.registerEncoder(i.class, f.f20336a);
    }
}
