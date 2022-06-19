package p239t2;

import com.applovin.sdk.AppLovinEventTypes;
import java.io.IOException;
import p221r5.AbstractC4211d;
import p221r5.AbstractC4212e;
import p221r5.C4210c;
import p232s5.AbstractC4298a;
import p232s5.AbstractC4299b;
import p242t5.C4404e;
/* renamed from: t2.b */
/* loaded from: classes-dex2jar.jar:t2/b.class */
public final class C4357b implements AbstractC4298a {

    /* renamed from: a */
    public static final AbstractC4298a f13590a = new C4357b();

    /* renamed from: t2.b$a */
    /* loaded from: classes-dex2jar.jar:t2/b$a.class */
    public static final class C4358a implements AbstractC4211d<AbstractC4356a> {

        /* renamed from: a */
        public static final C4358a f13591a = new C4358a();

        /* renamed from: b */
        public static final C4210c f13592b = C4210c.m1286a("sdkVersion");

        /* renamed from: c */
        public static final C4210c f13593c = C4210c.m1286a("model");

        /* renamed from: d */
        public static final C4210c f13594d = C4210c.m1286a("hardware");

        /* renamed from: e */
        public static final C4210c f13595e = C4210c.m1286a("device");

        /* renamed from: f */
        public static final C4210c f13596f = C4210c.m1286a(AppLovinEventTypes.USER_VIEWED_PRODUCT);

        /* renamed from: g */
        public static final C4210c f13597g = C4210c.m1286a("osBuild");

        /* renamed from: h */
        public static final C4210c f13598h = C4210c.m1286a("manufacturer");

        /* renamed from: i */
        public static final C4210c f13599i = C4210c.m1286a("fingerprint");

        /* renamed from: j */
        public static final C4210c f13600j = C4210c.m1286a("locale");

        /* renamed from: k */
        public static final C4210c f13601k = C4210c.m1286a("country");

        /* renamed from: l */
        public static final C4210c f13602l = C4210c.m1286a("mccMnc");

        /* renamed from: m */
        public static final C4210c f13603m = C4210c.m1286a("applicationBuild");

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4212e abstractC4212e) throws IOException {
            AbstractC4356a abstractC4356a = (AbstractC4356a) obj;
            AbstractC4212e abstractC4212e2 = abstractC4212e;
            abstractC4212e2.mo959f(f13592b, abstractC4356a.mo997l());
            abstractC4212e2.mo959f(f13593c, abstractC4356a.mo1000i());
            abstractC4212e2.mo959f(f13594d, abstractC4356a.mo1004e());
            abstractC4212e2.mo959f(f13595e, abstractC4356a.mo1006c());
            abstractC4212e2.mo959f(f13596f, abstractC4356a.mo998k());
            abstractC4212e2.mo959f(f13597g, abstractC4356a.mo999j());
            abstractC4212e2.mo959f(f13598h, abstractC4356a.mo1002g());
            abstractC4212e2.mo959f(f13599i, abstractC4356a.mo1005d());
            abstractC4212e2.mo959f(f13600j, abstractC4356a.mo1003f());
            abstractC4212e2.mo959f(f13601k, abstractC4356a.mo1007b());
            abstractC4212e2.mo959f(f13602l, abstractC4356a.mo1001h());
            abstractC4212e2.mo959f(f13603m, abstractC4356a.mo1008a());
        }
    }

    /* renamed from: t2.b$b */
    /* loaded from: classes-dex2jar.jar:t2/b$b.class */
    public static final class C4359b implements AbstractC4211d<AbstractC4377j> {

        /* renamed from: a */
        public static final C4359b f13604a = new C4359b();

        /* renamed from: b */
        public static final C4210c f13605b = C4210c.m1286a("logRequest");

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4212e abstractC4212e) throws IOException {
            abstractC4212e.mo959f(f13605b, ((AbstractC4377j) obj).mo996a());
        }
    }

    /* renamed from: t2.b$c */
    /* loaded from: classes-dex2jar.jar:t2/b$c.class */
    public static final class C4360c implements AbstractC4211d<AbstractC4378k> {

        /* renamed from: a */
        public static final C4360c f13606a = new C4360c();

        /* renamed from: b */
        public static final C4210c f13607b = C4210c.m1286a("clientType");

        /* renamed from: c */
        public static final C4210c f13608c = C4210c.m1286a("androidClientInfo");

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4212e abstractC4212e) throws IOException {
            AbstractC4378k abstractC4378k = (AbstractC4378k) obj;
            AbstractC4212e abstractC4212e2 = abstractC4212e;
            abstractC4212e2.mo959f(f13607b, abstractC4378k.mo994b());
            abstractC4212e2.mo959f(f13608c, abstractC4378k.mo995a());
        }
    }

    /* renamed from: t2.b$d */
    /* loaded from: classes-dex2jar.jar:t2/b$d.class */
    public static final class C4361d implements AbstractC4211d<AbstractC4380l> {

        /* renamed from: a */
        public static final C4361d f13609a = new C4361d();

        /* renamed from: b */
        public static final C4210c f13610b = C4210c.m1286a("eventTimeMs");

        /* renamed from: c */
        public static final C4210c f13611c = C4210c.m1286a("eventCode");

        /* renamed from: d */
        public static final C4210c f13612d = C4210c.m1286a("eventUptimeMs");

        /* renamed from: e */
        public static final C4210c f13613e = C4210c.m1286a("sourceExtension");

        /* renamed from: f */
        public static final C4210c f13614f = C4210c.m1286a("sourceExtensionJsonProto3");

        /* renamed from: g */
        public static final C4210c f13615g = C4210c.m1286a("timezoneOffsetSeconds");

        /* renamed from: h */
        public static final C4210c f13616h = C4210c.m1286a("networkConnectionInfo");

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4212e abstractC4212e) throws IOException {
            AbstractC4380l abstractC4380l = (AbstractC4380l) obj;
            AbstractC4212e abstractC4212e2 = abstractC4212e;
            abstractC4212e2.mo964a(f13610b, abstractC4380l.mo992b());
            abstractC4212e2.mo959f(f13611c, abstractC4380l.mo993a());
            abstractC4212e2.mo964a(f13612d, abstractC4380l.mo991c());
            abstractC4212e2.mo959f(f13613e, abstractC4380l.mo989e());
            abstractC4212e2.mo959f(f13614f, abstractC4380l.mo988f());
            abstractC4212e2.mo964a(f13615g, abstractC4380l.mo987g());
            abstractC4212e2.mo959f(f13616h, abstractC4380l.mo990d());
        }
    }

    /* renamed from: t2.b$e */
    /* loaded from: classes-dex2jar.jar:t2/b$e.class */
    public static final class C4362e implements AbstractC4211d<AbstractC4382m> {

        /* renamed from: a */
        public static final C4362e f13617a = new C4362e();

        /* renamed from: b */
        public static final C4210c f13618b = C4210c.m1286a("requestTimeMs");

        /* renamed from: c */
        public static final C4210c f13619c = C4210c.m1286a("requestUptimeMs");

        /* renamed from: d */
        public static final C4210c f13620d = C4210c.m1286a("clientInfo");

        /* renamed from: e */
        public static final C4210c f13621e = C4210c.m1286a("logSource");

        /* renamed from: f */
        public static final C4210c f13622f = C4210c.m1286a("logSourceName");

        /* renamed from: g */
        public static final C4210c f13623g = C4210c.m1286a("logEvent");

        /* renamed from: h */
        public static final C4210c f13624h = C4210c.m1286a("qosTier");

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4212e abstractC4212e) throws IOException {
            AbstractC4382m abstractC4382m = (AbstractC4382m) obj;
            AbstractC4212e abstractC4212e2 = abstractC4212e;
            abstractC4212e2.mo964a(f13618b, abstractC4382m.mo981f());
            abstractC4212e2.mo964a(f13619c, abstractC4382m.mo980g());
            abstractC4212e2.mo959f(f13620d, abstractC4382m.mo986a());
            abstractC4212e2.mo959f(f13621e, abstractC4382m.mo984c());
            abstractC4212e2.mo959f(f13622f, abstractC4382m.mo983d());
            abstractC4212e2.mo959f(f13623g, abstractC4382m.mo985b());
            abstractC4212e2.mo959f(f13624h, abstractC4382m.mo982e());
        }
    }

    /* renamed from: t2.b$f */
    /* loaded from: classes-dex2jar.jar:t2/b$f.class */
    public static final class C4363f implements AbstractC4211d<AbstractC4384o> {

        /* renamed from: a */
        public static final C4363f f13625a = new C4363f();

        /* renamed from: b */
        public static final C4210c f13626b = C4210c.m1286a("networkType");

        /* renamed from: c */
        public static final C4210c f13627c = C4210c.m1286a("mobileSubtype");

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4212e abstractC4212e) throws IOException {
            AbstractC4384o abstractC4384o = (AbstractC4384o) obj;
            AbstractC4212e abstractC4212e2 = abstractC4212e;
            abstractC4212e2.mo959f(f13626b, abstractC4384o.mo976b());
            abstractC4212e2.mo959f(f13627c, abstractC4384o.mo977a());
        }
    }

    /* renamed from: a */
    public void m1009a(AbstractC4299b<?> abstractC4299b) {
        C4359b c4359b = C4359b.f13604a;
        C4404e c4404e = (C4404e) abstractC4299b;
        c4404e.f13723a.put(AbstractC4377j.class, c4359b);
        c4404e.f13724b.remove(AbstractC4377j.class);
        c4404e.f13723a.put(C4366d.class, c4359b);
        c4404e.f13724b.remove(C4366d.class);
        C4362e c4362e = C4362e.f13617a;
        c4404e.f13723a.put(AbstractC4382m.class, c4362e);
        c4404e.f13724b.remove(AbstractC4382m.class);
        c4404e.f13723a.put(C4372g.class, c4362e);
        c4404e.f13724b.remove(C4372g.class);
        C4360c c4360c = C4360c.f13606a;
        c4404e.f13723a.put(AbstractC4378k.class, c4360c);
        c4404e.f13724b.remove(AbstractC4378k.class);
        c4404e.f13723a.put(C4367e.class, c4360c);
        c4404e.f13724b.remove(C4367e.class);
        C4358a c4358a = C4358a.f13591a;
        c4404e.f13723a.put(AbstractC4356a.class, c4358a);
        c4404e.f13724b.remove(AbstractC4356a.class);
        c4404e.f13723a.put(C4364c.class, c4358a);
        c4404e.f13724b.remove(C4364c.class);
        C4361d c4361d = C4361d.f13609a;
        c4404e.f13723a.put(AbstractC4380l.class, c4361d);
        c4404e.f13724b.remove(AbstractC4380l.class);
        c4404e.f13723a.put(C4369f.class, c4361d);
        c4404e.f13724b.remove(C4369f.class);
        C4363f c4363f = C4363f.f13625a;
        c4404e.f13723a.put(AbstractC4384o.class, c4363f);
        c4404e.f13724b.remove(AbstractC4384o.class);
        c4404e.f13723a.put(C4375i.class, c4363f);
        c4404e.f13724b.remove(C4375i.class);
    }
}
