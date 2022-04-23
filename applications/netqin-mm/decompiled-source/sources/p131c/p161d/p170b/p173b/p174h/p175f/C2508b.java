package p131c.p161d.p170b.p173b.p174h.p175f;

import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.mopub.network.ImpressionData;
import java.io.IOException;
import p131c.p161d.p282e.p310n.AbstractC5457c;
import p131c.p161d.p282e.p310n.AbstractC5458d;
import p131c.p161d.p282e.p310n.p311g.AbstractC5461a;
import p131c.p161d.p282e.p310n.p311g.AbstractC5462b;
/* renamed from: c.d.b.b.h.f.b */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b.class */
public final class C2508b implements AbstractC5461a {

    /* renamed from: a */
    public static final AbstractC5461a f9501a = new C2508b();

    /* renamed from: c.d.b.b.h.f.b$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b$a.class */
    public static final class C2509a implements AbstractC5457c<AbstractC2506a> {

        /* renamed from: a */
        public static final C2509a f9502a = new C2509a();

        /* renamed from: a */
        public void mo23737a(AbstractC2506a aVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("sdkVersion", aVar.mo29618l());
            dVar.mo23726a("model", aVar.mo29621i());
            dVar.mo23726a("hardware", aVar.mo29625e());
            dVar.mo23726a("device", aVar.mo29627c());
            dVar.mo23726a(AppLovinEventTypes.USER_VIEWED_PRODUCT, aVar.mo29619k());
            dVar.mo23726a("osBuild", aVar.mo29620j());
            dVar.mo23726a("manufacturer", aVar.mo29623g());
            dVar.mo23726a("fingerprint", aVar.mo29626d());
            dVar.mo23726a("locale", aVar.mo29624f());
            dVar.mo23726a(ImpressionData.COUNTRY, aVar.mo29628b());
            dVar.mo23726a("mccMnc", aVar.mo29622h());
            dVar.mo23726a("applicationBuild", aVar.mo29629a());
        }
    }

    /* renamed from: c.d.b.b.h.f.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b$b.class */
    public static final class C2510b implements AbstractC5457c<AbstractC2532j> {

        /* renamed from: a */
        public static final C2510b f9503a = new C2510b();

        /* renamed from: a */
        public void mo23737a(AbstractC2532j jVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("logRequest", jVar.mo29604a());
        }
    }

    /* renamed from: c.d.b.b.h.f.b$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b$c.class */
    public static final class C2511c implements AbstractC5457c<ClientInfo> {

        /* renamed from: a */
        public static final C2511c f9504a = new C2511c();

        /* renamed from: a */
        public void mo23737a(ClientInfo clientInfo, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("clientType", clientInfo.mo18753b());
            dVar.mo23726a("androidClientInfo", clientInfo.mo18754a());
        }
    }

    /* renamed from: c.d.b.b.h.f.b$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b$d.class */
    public static final class C2512d implements AbstractC5457c<AbstractC2533k> {

        /* renamed from: a */
        public static final C2512d f9505a = new C2512d();

        /* renamed from: a */
        public void mo23737a(AbstractC2533k kVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23727a("eventTimeMs", kVar.mo29598b());
            dVar.mo23726a("eventCode", kVar.mo29601a());
            dVar.mo23727a("eventUptimeMs", kVar.mo29597c());
            dVar.mo23726a("sourceExtension", kVar.mo29595e());
            dVar.mo23726a("sourceExtensionJsonProto3", kVar.mo29594f());
            dVar.mo23727a("timezoneOffsetSeconds", kVar.mo29593g());
            dVar.mo23726a("networkConnectionInfo", kVar.mo29596d());
        }
    }

    /* renamed from: c.d.b.b.h.f.b$e */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b$e.class */
    public static final class C2513e implements AbstractC5457c<AbstractC2535l> {

        /* renamed from: a */
        public static final C2513e f9506a = new C2513e();

        /* renamed from: a */
        public void mo23737a(AbstractC2535l lVar, AbstractC5458d dVar) throws IOException {
            dVar.mo23727a("requestTimeMs", lVar.mo29578f());
            dVar.mo23727a("requestUptimeMs", lVar.mo29577g());
            dVar.mo23726a("clientInfo", lVar.mo29583a());
            dVar.mo23726a("logSource", lVar.mo29581c());
            dVar.mo23726a("logSourceName", lVar.mo29580d());
            dVar.mo23726a("logEvent", lVar.mo29582b());
            dVar.mo23726a("qosTier", lVar.mo29579e());
        }
    }

    /* renamed from: c.d.b.b.h.f.b$f */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/b$f.class */
    public static final class C2514f implements AbstractC5457c<NetworkConnectionInfo> {

        /* renamed from: a */
        public static final C2514f f9507a = new C2514f();

        /* renamed from: a */
        public void mo23737a(NetworkConnectionInfo networkConnectionInfo, AbstractC5458d dVar) throws IOException {
            dVar.mo23726a("networkType", networkConnectionInfo.mo18747b());
            dVar.mo23726a("mobileSubtype", networkConnectionInfo.mo18748a());
        }
    }

    @Override // p131c.p161d.p282e.p310n.p311g.AbstractC5461a
    /* renamed from: a */
    public void mo23755a(AbstractC5462b<?> bVar) {
        bVar.mo23747a(AbstractC2532j.class, C2510b.f9503a);
        bVar.mo23747a(C2518d.class, C2510b.f9503a);
        bVar.mo23747a(AbstractC2535l.class, C2513e.f9506a);
        bVar.mo23747a(C2525g.class, C2513e.f9506a);
        bVar.mo23747a(ClientInfo.class, C2511c.f9504a);
        bVar.mo23747a(C2519e.class, C2511c.f9504a);
        bVar.mo23747a(AbstractC2506a.class, C2509a.f9502a);
        bVar.mo23747a(C2515c.class, C2509a.f9502a);
        bVar.mo23747a(AbstractC2533k.class, C2512d.f9505a);
        bVar.mo23747a(C2522f.class, C2512d.f9505a);
        bVar.mo23747a(NetworkConnectionInfo.class, C2514f.f9507a);
        bVar.mo23747a(C2529i.class, C2514f.f9507a);
    }
}
