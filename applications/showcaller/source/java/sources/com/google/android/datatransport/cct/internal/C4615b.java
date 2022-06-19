package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.AbstractC9153c;
import com.google.firebase.encoders.AbstractC9154d;
import com.google.firebase.encoders.C9152b;
import com.google.firebase.encoders.p306g.AbstractC9157a;
import com.google.firebase.encoders.p306g.AbstractC9158b;
/* renamed from: com.google.android.datatransport.cct.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b.class */
public final class C4615b implements AbstractC9157a {

    /* renamed from: a */
    public static final AbstractC9157a f14090a = new C4615b();

    /* renamed from: com.google.android.datatransport.cct.internal.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b$a.class */
    private static final class C4616a implements AbstractC9153c<AbstractC4613a> {

        /* renamed from: a */
        static final C4616a f14091a = new C4616a();

        /* renamed from: b */
        private static final C9152b f14092b = C9152b.m1710b("sdkVersion");

        /* renamed from: c */
        private static final C9152b f14093c = C9152b.m1710b("model");

        /* renamed from: d */
        private static final C9152b f14094d = C9152b.m1710b("hardware");

        /* renamed from: e */
        private static final C9152b f14095e = C9152b.m1710b("device");

        /* renamed from: f */
        private static final C9152b f14096f = C9152b.m1710b("product");

        /* renamed from: g */
        private static final C9152b f14097g = C9152b.m1710b("osBuild");

        /* renamed from: h */
        private static final C9152b f14098h = C9152b.m1710b("manufacturer");

        /* renamed from: i */
        private static final C9152b f14099i = C9152b.m1710b("fingerprint");

        /* renamed from: j */
        private static final C9152b f14100j = C9152b.m1710b("locale");

        /* renamed from: k */
        private static final C9152b f14101k = C9152b.m1710b("country");

        /* renamed from: l */
        private static final C9152b f14102l = C9152b.m1710b("mccMnc");

        /* renamed from: m */
        private static final C9152b f14103m = C9152b.m1710b("applicationBuild");

        private C4616a() {
        }

        /* renamed from: b */
        public void mo1130a(AbstractC4613a abstractC4613a, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1681h(f14092b, abstractC4613a.mo22138m());
            abstractC9154d.mo1681h(f14093c, abstractC4613a.mo22141j());
            abstractC9154d.mo1681h(f14094d, abstractC4613a.mo22145f());
            abstractC9154d.mo1681h(f14095e, abstractC4613a.mo22147d());
            abstractC9154d.mo1681h(f14096f, abstractC4613a.mo22139l());
            abstractC9154d.mo1681h(f14097g, abstractC4613a.mo22140k());
            abstractC9154d.mo1681h(f14098h, abstractC4613a.mo22143h());
            abstractC9154d.mo1681h(f14099i, abstractC4613a.mo22146e());
            abstractC9154d.mo1681h(f14100j, abstractC4613a.mo22144g());
            abstractC9154d.mo1681h(f14101k, abstractC4613a.mo22148c());
            abstractC9154d.mo1681h(f14102l, abstractC4613a.mo22142i());
            abstractC9154d.mo1681h(f14103m, abstractC4613a.mo22149b());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b$b.class */
    private static final class C4617b implements AbstractC9153c<AbstractC4639j> {

        /* renamed from: a */
        static final C4617b f14104a = new C4617b();

        /* renamed from: b */
        private static final C9152b f14105b = C9152b.m1710b("logRequest");

        private C4617b() {
        }

        /* renamed from: b */
        public void mo1130a(AbstractC4639j abstractC4639j, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1681h(f14105b, abstractC4639j.mo22112c());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b$c.class */
    private static final class C4618c implements AbstractC9153c<ClientInfo> {

        /* renamed from: a */
        static final C4618c f14106a = new C4618c();

        /* renamed from: b */
        private static final C9152b f14107b = C9152b.m1710b("clientType");

        /* renamed from: c */
        private static final C9152b f14108c = C9152b.m1710b("androidClientInfo");

        private C4618c() {
        }

        /* renamed from: b */
        public void mo1130a(ClientInfo clientInfo, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1681h(f14107b, clientInfo.mo22123c());
            abstractC9154d.mo1681h(f14108c, clientInfo.mo22124b());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b$d.class */
    private static final class C4619d implements AbstractC9153c<AbstractC4640k> {

        /* renamed from: a */
        static final C4619d f14109a = new C4619d();

        /* renamed from: b */
        private static final C9152b f14110b = C9152b.m1710b("eventTimeMs");

        /* renamed from: c */
        private static final C9152b f14111c = C9152b.m1710b("eventCode");

        /* renamed from: d */
        private static final C9152b f14112d = C9152b.m1710b("eventUptimeMs");

        /* renamed from: e */
        private static final C9152b f14113e = C9152b.m1710b("sourceExtension");

        /* renamed from: f */
        private static final C9152b f14114f = C9152b.m1710b("sourceExtensionJsonProto3");

        /* renamed from: g */
        private static final C9152b f14115g = C9152b.m1710b("timezoneOffsetSeconds");

        /* renamed from: h */
        private static final C9152b f14116h = C9152b.m1710b("networkConnectionInfo");

        private C4619d() {
        }

        /* renamed from: b */
        public void mo1130a(AbstractC4640k abstractC4640k, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1687b(f14110b, abstractC4640k.mo22109c());
            abstractC9154d.mo1681h(f14111c, abstractC4640k.mo22110b());
            abstractC9154d.mo1687b(f14112d, abstractC4640k.mo22108d());
            abstractC9154d.mo1681h(f14113e, abstractC4640k.mo22106f());
            abstractC9154d.mo1681h(f14114f, abstractC4640k.mo22105g());
            abstractC9154d.mo1687b(f14115g, abstractC4640k.mo22104h());
            abstractC9154d.mo1681h(f14116h, abstractC4640k.mo22107e());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.b$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b$e.class */
    private static final class C4620e implements AbstractC9153c<AbstractC4642l> {

        /* renamed from: a */
        static final C4620e f14117a = new C4620e();

        /* renamed from: b */
        private static final C9152b f14118b = C9152b.m1710b("requestTimeMs");

        /* renamed from: c */
        private static final C9152b f14119c = C9152b.m1710b("requestUptimeMs");

        /* renamed from: d */
        private static final C9152b f14120d = C9152b.m1710b("clientInfo");

        /* renamed from: e */
        private static final C9152b f14121e = C9152b.m1710b("logSource");

        /* renamed from: f */
        private static final C9152b f14122f = C9152b.m1710b("logSourceName");

        /* renamed from: g */
        private static final C9152b f14123g = C9152b.m1710b("logEvent");

        /* renamed from: h */
        private static final C9152b f14124h = C9152b.m1710b("qosTier");

        private C4620e() {
        }

        /* renamed from: b */
        public void mo1130a(AbstractC4642l abstractC4642l, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1687b(f14118b, abstractC4642l.mo22087g());
            abstractC9154d.mo1687b(f14119c, abstractC4642l.mo22086h());
            abstractC9154d.mo1681h(f14120d, abstractC4642l.mo22092b());
            abstractC9154d.mo1681h(f14121e, abstractC4642l.mo22090d());
            abstractC9154d.mo1681h(f14122f, abstractC4642l.mo22089e());
            abstractC9154d.mo1681h(f14123g, abstractC4642l.mo22091c());
            abstractC9154d.mo1681h(f14124h, abstractC4642l.mo22088f());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.b$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/b$f.class */
    private static final class C4621f implements AbstractC9153c<NetworkConnectionInfo> {

        /* renamed from: a */
        static final C4621f f14125a = new C4621f();

        /* renamed from: b */
        private static final C9152b f14126b = C9152b.m1710b("networkType");

        /* renamed from: c */
        private static final C9152b f14127c = C9152b.m1710b("mobileSubtype");

        private C4621f() {
        }

        /* renamed from: b */
        public void mo1130a(NetworkConnectionInfo networkConnectionInfo, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1681h(f14126b, networkConnectionInfo.mo22118c());
            abstractC9154d.mo1681h(f14127c, networkConnectionInfo.mo22119b());
        }
    }

    private C4615b() {
    }

    @Override // com.google.firebase.encoders.p306g.AbstractC9157a
    /* renamed from: a */
    public void mo1709a(AbstractC9158b<?> abstractC9158b) {
        C4617b c4617b = C4617b.f14104a;
        abstractC9158b.mo1705a(AbstractC4639j.class, c4617b);
        abstractC9158b.mo1705a(C4625d.class, c4617b);
        C4620e c4620e = C4620e.f14117a;
        abstractC9158b.mo1705a(AbstractC4642l.class, c4620e);
        abstractC9158b.mo1705a(C4632g.class, c4620e);
        C4618c c4618c = C4618c.f14106a;
        abstractC9158b.mo1705a(ClientInfo.class, c4618c);
        abstractC9158b.mo1705a(C4626e.class, c4618c);
        C4616a c4616a = C4616a.f14091a;
        abstractC9158b.mo1705a(AbstractC4613a.class, c4616a);
        abstractC9158b.mo1705a(C4622c.class, c4616a);
        C4619d c4619d = C4619d.f14109a;
        abstractC9158b.mo1705a(AbstractC4640k.class, c4619d);
        abstractC9158b.mo1705a(C4629f.class, c4619d);
        C4621f c4621f = C4621f.f14125a;
        abstractC9158b.mo1705a(NetworkConnectionInfo.class, c4621f);
        abstractC9158b.mo1705a(C4636i.class, c4621f);
    }
}
