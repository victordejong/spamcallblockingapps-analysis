package com.google.android.datatransport.cct.p315a;

import com.google.firebase.encoders.AbstractC15738d;
import com.google.firebase.encoders.AbstractC15739e;
import com.google.firebase.encoders.C15736c;
import com.google.firebase.encoders.p393a.AbstractC15733a;
import com.google.firebase.encoders.p393a.AbstractC15734b;
import java.io.IOException;
/* renamed from: com.google.android.datatransport.cct.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b.class */
public final class C10632b implements AbstractC15733a {

    /* renamed from: a */
    public static final AbstractC15733a f34402a = new C10632b();

    /* renamed from: com.google.android.datatransport.cct.a.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$a.class */
    static final class C10633a implements AbstractC15738d<AbstractC10630a> {

        /* renamed from: a */
        static final C10633a f34403a = new C10633a();

        /* renamed from: b */
        private static final C15736c f34404b = C15736c.m8470a("sdkVersion");

        /* renamed from: c */
        private static final C15736c f34405c = C15736c.m8470a("model");

        /* renamed from: d */
        private static final C15736c f34406d = C15736c.m8470a("hardware");

        /* renamed from: e */
        private static final C15736c f34407e = C15736c.m8470a("device");

        /* renamed from: f */
        private static final C15736c f34408f = C15736c.m8470a("product");

        /* renamed from: g */
        private static final C15736c f34409g = C15736c.m8470a("osBuild");

        /* renamed from: h */
        private static final C15736c f34410h = C15736c.m8470a("manufacturer");

        /* renamed from: i */
        private static final C15736c f34411i = C15736c.m8470a("fingerprint");

        /* renamed from: j */
        private static final C15736c f34412j = C15736c.m8470a("locale");

        /* renamed from: k */
        private static final C15736c f34413k = C15736c.m8470a("country");

        /* renamed from: l */
        private static final C15736c f34414l = C15736c.m8470a("mccMnc");

        /* renamed from: m */
        private static final C15736c f34415m = C15736c.m8470a("applicationBuild");

        private C10633a() {
        }

        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            AbstractC10630a abstractC10630a = (AbstractC10630a) obj;
            AbstractC15739e abstractC15739e2 = abstractC15739e;
            abstractC15739e2.add(f34404b, abstractC10630a.mo22604a());
            abstractC15739e2.add(f34405c, abstractC10630a.mo22603b());
            abstractC15739e2.add(f34406d, abstractC10630a.mo22602c());
            abstractC15739e2.add(f34407e, abstractC10630a.mo22601d());
            abstractC15739e2.add(f34408f, abstractC10630a.mo22600e());
            abstractC15739e2.add(f34409g, abstractC10630a.mo22599f());
            abstractC15739e2.add(f34410h, abstractC10630a.mo22598g());
            abstractC15739e2.add(f34411i, abstractC10630a.mo22597h());
            abstractC15739e2.add(f34412j, abstractC10630a.mo22596i());
            abstractC15739e2.add(f34413k, abstractC10630a.mo22595j());
            abstractC15739e2.add(f34414l, abstractC10630a.mo22594k());
            abstractC15739e2.add(f34415m, abstractC10630a.mo22593l());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$b.class */
    static final class C10634b implements AbstractC15738d<AbstractC10656j> {

        /* renamed from: a */
        static final C10634b f34416a = new C10634b();

        /* renamed from: b */
        private static final C15736c f34417b = C15736c.m8470a("logRequest");

        private C10634b() {
        }

        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(f34417b, ((AbstractC10656j) obj).mo22579a());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.b$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$c.class */
    static final class C10635c implements AbstractC15738d<AbstractC10657k> {

        /* renamed from: a */
        static final C10635c f34418a = new C10635c();

        /* renamed from: b */
        private static final C15736c f34419b = C15736c.m8470a("clientType");

        /* renamed from: c */
        private static final C15736c f34420c = C15736c.m8470a("androidClientInfo");

        private C10635c() {
        }

        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            AbstractC10657k abstractC10657k = (AbstractC10657k) obj;
            AbstractC15739e abstractC15739e2 = abstractC15739e;
            abstractC15739e2.add(f34419b, abstractC10657k.mo22576a());
            abstractC15739e2.add(f34420c, abstractC10657k.mo22575b());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.b$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$d.class */
    static final class C10636d implements AbstractC15738d<AbstractC10660l> {

        /* renamed from: a */
        static final C10636d f34421a = new C10636d();

        /* renamed from: b */
        private static final C15736c f34422b = C15736c.m8470a("eventTimeMs");

        /* renamed from: c */
        private static final C15736c f34423c = C15736c.m8470a("eventCode");

        /* renamed from: d */
        private static final C15736c f34424d = C15736c.m8470a("eventUptimeMs");

        /* renamed from: e */
        private static final C15736c f34425e = C15736c.m8470a("sourceExtension");

        /* renamed from: f */
        private static final C15736c f34426f = C15736c.m8470a("sourceExtensionJsonProto3");

        /* renamed from: g */
        private static final C15736c f34427g = C15736c.m8470a("timezoneOffsetSeconds");

        /* renamed from: h */
        private static final C15736c f34428h = C15736c.m8470a("networkConnectionInfo");

        private C10636d() {
        }

        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            AbstractC10660l abstractC10660l = (AbstractC10660l) obj;
            AbstractC15739e abstractC15739e2 = abstractC15739e;
            abstractC15739e2.add(f34422b, abstractC10660l.mo22570a());
            abstractC15739e2.add(f34423c, abstractC10660l.mo22567b());
            abstractC15739e2.add(f34424d, abstractC10660l.mo22566c());
            abstractC15739e2.add(f34425e, abstractC10660l.mo22565d());
            abstractC15739e2.add(f34426f, abstractC10660l.mo22564e());
            abstractC15739e2.add(f34427g, abstractC10660l.mo22563f());
            abstractC15739e2.add(f34428h, abstractC10660l.mo22562g());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.b$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$e.class */
    static final class C10637e implements AbstractC15738d<AbstractC10662m> {

        /* renamed from: a */
        static final C10637e f34429a = new C10637e();

        /* renamed from: b */
        private static final C15736c f34430b = C15736c.m8470a("requestTimeMs");

        /* renamed from: c */
        private static final C15736c f34431c = C15736c.m8470a("requestUptimeMs");

        /* renamed from: d */
        private static final C15736c f34432d = C15736c.m8470a("clientInfo");

        /* renamed from: e */
        private static final C15736c f34433e = C15736c.m8470a("logSource");

        /* renamed from: f */
        private static final C15736c f34434f = C15736c.m8470a("logSourceName");

        /* renamed from: g */
        private static final C15736c f34435g = C15736c.m8470a("logEvent");

        /* renamed from: h */
        private static final C15736c f34436h = C15736c.m8470a("qosTier");

        private C10637e() {
        }

        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            AbstractC10662m abstractC10662m = (AbstractC10662m) obj;
            AbstractC15739e abstractC15739e2 = abstractC15739e;
            abstractC15739e2.add(f34430b, abstractC10662m.mo22553a());
            abstractC15739e2.add(f34431c, abstractC10662m.mo22552b());
            abstractC15739e2.add(f34432d, abstractC10662m.mo22551c());
            abstractC15739e2.add(f34433e, abstractC10662m.mo22550d());
            abstractC15739e2.add(f34434f, abstractC10662m.mo22549e());
            abstractC15739e2.add(f34435g, abstractC10662m.mo22548f());
            abstractC15739e2.add(f34436h, abstractC10662m.mo22547g());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.a.b$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/b$f.class */
    static final class C10638f implements AbstractC15738d<AbstractC10665o> {

        /* renamed from: a */
        static final C10638f f34437a = new C10638f();

        /* renamed from: b */
        private static final C15736c f34438b = C15736c.m8470a("networkType");

        /* renamed from: c */
        private static final C15736c f34439c = C15736c.m8470a("mobileSubtype");

        private C10638f() {
        }

        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            AbstractC10665o abstractC10665o = (AbstractC10665o) obj;
            AbstractC15739e abstractC15739e2 = abstractC15739e;
            abstractC15739e2.add(f34438b, abstractC10665o.mo22534a());
            abstractC15739e2.add(f34439c, abstractC10665o.mo22533b());
        }
    }

    private C10632b() {
    }

    @Override // com.google.firebase.encoders.p393a.AbstractC15733a
    public final void configure(AbstractC15734b<?> abstractC15734b) {
        abstractC15734b.registerEncoder(AbstractC10656j.class, C10634b.f34416a);
        abstractC15734b.registerEncoder(C10642d.class, C10634b.f34416a);
        abstractC15734b.registerEncoder(AbstractC10662m.class, C10637e.f34429a);
        abstractC15734b.registerEncoder(C10649g.class, C10637e.f34429a);
        abstractC15734b.registerEncoder(AbstractC10657k.class, C10635c.f34418a);
        abstractC15734b.registerEncoder(C10643e.class, C10635c.f34418a);
        abstractC15734b.registerEncoder(AbstractC10630a.class, C10633a.f34403a);
        abstractC15734b.registerEncoder(C10639c.class, C10633a.f34403a);
        abstractC15734b.registerEncoder(AbstractC10660l.class, C10636d.f34421a);
        abstractC15734b.registerEncoder(C10646f.class, C10636d.f34421a);
        abstractC15734b.registerEncoder(AbstractC10665o.class, C10638f.f34437a);
        abstractC15734b.registerEncoder(C10653i.class, C10638f.f34437a);
    }
}
