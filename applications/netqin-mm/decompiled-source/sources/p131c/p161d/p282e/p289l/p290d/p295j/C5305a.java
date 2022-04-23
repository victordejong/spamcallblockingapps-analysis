package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.squareup.picasso.Dispatcher;
import java.io.IOException;
import p131c.p161d.p282e.p310n.AbstractC5457c;
import p131c.p161d.p282e.p310n.AbstractC5458d;
import p131c.p161d.p282e.p310n.p311g.AbstractC5461a;
import p131c.p161d.p282e.p310n.p311g.AbstractC5462b;
/* renamed from: c.d.e.l.d.j.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a.class */
public final class C5305a implements AbstractC5461a {

    /* renamed from: a */
    public static final AbstractC5461a f18103a = new C5305a();

    /* renamed from: c.d.e.l.d.j.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$a.class */
    public static final class C5306a implements AbstractC5457c<CrashlyticsReport.AbstractC7779b> {

        /* renamed from: a */
        public static final C5306a f18104a = new C5306a();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7779b bVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("key", bVar.mo7614a());
            dVar.mo23726a("value", bVar.mo7613b());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$b.class */
    public static final class C5307b implements AbstractC5457c<CrashlyticsReport> {

        /* renamed from: a */
        public static final C5307b f18105a = new C5307b();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport crashlyticsReport, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("sdkVersion", crashlyticsReport.mo7629g());
            dVar.mo23726a("gmpAppId", crashlyticsReport.mo7633c());
            dVar.mo23728a("platform", crashlyticsReport.mo7630f());
            dVar.mo23726a("installationUuid", crashlyticsReport.mo7632d());
            dVar.mo23726a("buildVersion", crashlyticsReport.mo7638a());
            dVar.mo23726a("displayVersion", crashlyticsReport.mo7634b());
            dVar.mo23726a("session", crashlyticsReport.mo7628h());
            dVar.mo23726a("ndkPayload", crashlyticsReport.mo7631e());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$c.class */
    public static final class C5308c implements AbstractC5457c<CrashlyticsReport.AbstractC7781c> {

        /* renamed from: a */
        public static final C5308c f18106a = new C5308c();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7781c cVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("files", cVar.mo7608a());
            dVar.mo23726a("orgId", cVar.mo7607b());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$d.class */
    public static final class C5309d implements AbstractC5457c<CrashlyticsReport.AbstractC7781c.AbstractC7783b> {

        /* renamed from: a */
        public static final C5309d f18107a = new C5309d();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7781c.AbstractC7783b bVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("filename", bVar.mo7601b());
            dVar.mo23726a("contents", bVar.mo7602a());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$e */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$e.class */
    public static final class C5310e implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7786a> {

        /* renamed from: a */
        public static final C5310e f18108a = new C5310e();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7786a aVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("identifier", aVar.mo7577d());
            dVar.mo23726a("version", aVar.mo7574g());
            dVar.mo23726a("displayVersion", aVar.mo7578c());
            dVar.mo23726a("organization", aVar.mo7575f());
            dVar.mo23726a("installationUuid", aVar.mo7576e());
            dVar.mo23726a("developmentPlatform", aVar.mo7580a());
            dVar.mo23726a("developmentPlatformVersion", aVar.mo7579b());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$f */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$f.class */
    public static final class C5311f implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b> {

        /* renamed from: a */
        public static final C5311f f18109a = new C5311f();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b bVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("clsId", bVar.mo7565a());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$g */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$g.class */
    public static final class C5312g implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7790c> {

        /* renamed from: a */
        public static final C5312g f18110a = new C5312g();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7790c cVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23728a("arch", cVar.mo7551a());
            dVar.mo23726a("model", cVar.mo7547e());
            dVar.mo23728a("cores", cVar.mo7550b());
            dVar.mo23727a("ram", cVar.mo7545g());
            dVar.mo23727a("diskSpace", cVar.mo7549c());
            dVar.mo23725a("simulator", cVar.mo7543i());
            dVar.mo23728a(Dispatcher.NetworkBroadcastReceiver.EXTRA_AIRPLANE_STATE, cVar.mo7544h());
            dVar.mo23726a("manufacturer", cVar.mo7548d());
            dVar.mo23726a("modelClass", cVar.mo7546f());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$h */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$h.class */
    public static final class C5313h implements AbstractC5457c<CrashlyticsReport.AbstractC7785d> {

        /* renamed from: a */
        public static final C5313h f18111a = new C5313h();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d dVar, AbstractC5458d dVar2) throws IOException {
            dVar2.mo23726a("generator", dVar.mo7590e());
            dVar2.mo23726a("identifier", dVar.m7587h());
            dVar2.mo23727a("startedAt", dVar.mo7585j());
            dVar2.mo23726a("endedAt", dVar.mo7592c());
            dVar2.mo23725a("crashed", dVar.mo7583l());
            dVar2.mo23726a("app", dVar.mo7596a());
            dVar2.mo23726a("user", dVar.mo7584k());
            dVar2.mo23726a("os", dVar.mo7586i());
            dVar2.mo23726a("device", dVar.mo7593b());
            dVar2.mo23726a(Constants.VIDEO_TRACKING_EVENTS_KEY, dVar.mo7591d());
            dVar2.mo23728a("generatorType", dVar.mo7589f());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$i */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$i.class */
    public static final class C5314i implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a> {

        /* renamed from: a */
        public static final C5314i f18112a = new C5314i();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a aVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("execution", aVar.mo7522c());
            dVar.mo23726a("customAttributes", aVar.mo7523b());
            dVar.mo23726a("background", aVar.mo7524a());
            dVar.mo23728a("uiOrientation", aVar.mo7521d());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$j */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$j.class */
    public static final class C5315j implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> {

        /* renamed from: a */
        public static final C5315j f18113a = new C5315j();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a aVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23727a("baseAddress", aVar.mo7508a());
            dVar.mo23727a("size", aVar.mo7506c());
            dVar.mo23726a("name", aVar.mo7507b());
            dVar.mo23726a("uuid", aVar.m7504e());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$k */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$k.class */
    public static final class C5316k implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b> {

        /* renamed from: a */
        public static final C5316k f18114a = new C5316k();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b bVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("threads", bVar.mo7510d());
            dVar.mo23726a("exception", bVar.mo7512b());
            dVar.mo23726a("signal", bVar.mo7511c());
            dVar.mo23726a("binaries", bVar.mo7513a());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$l */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$l.class */
    public static final class C5317l implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c> {

        /* renamed from: a */
        public static final C5317l f18115a = new C5317l();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("type", cVar.mo7487e());
            dVar.mo23726a("reason", cVar.mo7488d());
            dVar.mo23726a("frames", cVar.mo7490b());
            dVar.mo23726a("causedBy", cVar.mo7491a());
            dVar.mo23728a("overflowCount", cVar.mo7489c());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$m */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$m.class */
    public static final class C5318m implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d> {

        /* renamed from: a */
        public static final C5318m f18116a = new C5318m();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d dVar, AbstractC5458d dVar2) throws IOException {
            dVar2.mo23726a("name", dVar.mo7477c());
            dVar2.mo23726a("code", dVar.mo7478b());
            dVar2.mo23727a("address", dVar.mo7479a());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$n */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$n.class */
    public static final class C5319n implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> {

        /* renamed from: a */
        public static final C5319n f18117a = new C5319n();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e eVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("name", eVar.mo7469c());
            dVar.mo23728a("importance", eVar.mo7470b());
            dVar.mo23726a("frames", eVar.mo7471a());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$o */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$o.class */
    public static final class C5320o implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> {

        /* renamed from: a */
        public static final C5320o f18118a = new C5320o();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b bVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23727a("pc", bVar.mo7460d());
            dVar.mo23726a("symbol", bVar.mo7459e());
            dVar.mo23726a("file", bVar.mo7463a());
            dVar.mo23727a(VastIconXmlManager.OFFSET, bVar.mo7461c());
            dVar.mo23728a("importance", bVar.mo7462b());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$p */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$p.class */
    public static final class C5321p implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c> {

        /* renamed from: a */
        public static final C5321p f18119a = new C5321p();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c cVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("batteryLevel", cVar.mo7445a());
            dVar.mo23728a("batteryVelocity", cVar.mo7444b());
            dVar.mo23725a("proximityOn", cVar.mo7440f());
            dVar.mo23728a("orientation", cVar.mo7442d());
            dVar.mo23727a("ramUsed", cVar.mo7441e());
            dVar.mo23727a("diskUsed", cVar.mo7443c());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$q */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$q.class */
    public static final class C5322q implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d> {

        /* renamed from: a */
        public static final C5322q f18120a = new C5322q();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d dVar, AbstractC5458d dVar2) throws IOException {
            dVar2.mo23727a(AvidJSONUtil.KEY_TIMESTAMP, dVar.mo7528d());
            dVar2.mo23726a("type", dVar.mo7527e());
            dVar2.mo23726a("app", dVar.mo7531a());
            dVar2.mo23726a("device", dVar.mo7530b());
            dVar2.mo23726a("log", dVar.mo7529c());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$r */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$r.class */
    public static final class C5323r implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d> {

        /* renamed from: a */
        public static final C5323r f18121a = new C5323r();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d dVar, AbstractC5458d dVar2) throws IOException {
            dVar2.mo23726a("content", dVar.mo7431a());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$s */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$s.class */
    public static final class C5324s implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7812e> {

        /* renamed from: a */
        public static final C5324s f18122a = new C5324s();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7812e eVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23728a("platform", eVar.mo7426b());
            dVar.mo23726a("version", eVar.mo7425c());
            dVar.mo23726a("buildVersion", eVar.mo7427a());
            dVar.mo23725a("jailbroken", eVar.mo7424d());
        }
    }

    /* renamed from: c.d.e.l.d.j.a$t */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/a$t.class */
    public static final class C5325t implements AbstractC5457c<CrashlyticsReport.AbstractC7785d.AbstractC7814f> {

        /* renamed from: a */
        public static final C5325t f18123a = new C5325t();

        /* renamed from: a */
        public void mo23737a(CrashlyticsReport.AbstractC7785d.AbstractC7814f fVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("identifier", fVar.mo7417a());
        }
    }

    @Override // p131c.p161d.p282e.p310n.p311g.AbstractC5461a
    /* renamed from: a */
    public void mo23755a(AbstractC5462b<?> bVar) {
        bVar.mo23747a(CrashlyticsReport.class, C5307b.f18105a);
        bVar.mo23747a(C5326b.class, C5307b.f18105a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.class, C5313h.f18111a);
        bVar.mo23747a(C5338f.class, C5313h.f18111a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7786a.class, C5310e.f18108a);
        bVar.mo23747a(C5341g.class, C5310e.f18108a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b.class, C5311f.f18109a);
        bVar.mo23747a(C5344h.class, C5311f.f18109a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7814f.class, C5325t.f18123a);
        bVar.mo23747a(C5381u.class, C5325t.f18123a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7812e.class, C5324s.f18122a);
        bVar.mo23747a(C5378t.class, C5324s.f18122a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7790c.class, C5312g.f18110a);
        bVar.mo23747a(C5345i.class, C5312g.f18110a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.class, C5322q.f18120a);
        bVar.mo23747a(C5348j.class, C5322q.f18120a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.class, C5314i.f18112a);
        bVar.mo23747a(C5351k.class, C5314i.f18112a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.class, C5316k.f18114a);
        bVar.mo23747a(C5354l.class, C5316k.f18114a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.class, C5319n.f18117a);
        bVar.mo23747a(C5366p.class, C5319n.f18117a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.class, C5320o.f18118a);
        bVar.mo23747a(C5369q.class, C5320o.f18118a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.class, C5317l.f18115a);
        bVar.mo23747a(C5360n.class, C5317l.f18115a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.class, C5318m.f18116a);
        bVar.mo23747a(C5363o.class, C5318m.f18116a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.class, C5315j.f18113a);
        bVar.mo23747a(C5357m.class, C5315j.f18113a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7779b.class, C5306a.f18104a);
        bVar.mo23747a(C5329c.class, C5306a.f18104a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.class, C5321p.f18119a);
        bVar.mo23747a(C5372r.class, C5321p.f18119a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.class, C5323r.f18121a);
        bVar.mo23747a(C5375s.class, C5323r.f18121a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7781c.class, C5308c.f18106a);
        bVar.mo23747a(C5332d.class, C5308c.f18106a);
        bVar.mo23747a(CrashlyticsReport.AbstractC7781c.AbstractC7783b.class, C5309d.f18107a);
        bVar.mo23747a(C5335e.class, C5309d.f18107a);
    }
}
