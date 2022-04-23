package p131c.p161d.p282e.p352w;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p283i.C5140b;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p352w.p353o.C6084e;
import p131c.p161d.p282e.p352w.p353o.C6094k;
import p131c.p161d.p282e.p352w.p353o.C6097m;
import p131c.p161d.p282e.p352w.p353o.C6098n;
import p131c.p161d.p282e.p352w.p353o.C6100o;
import p131c.p161d.p282e.p352w.p353o.C6106s;
@KeepForSdk
/* renamed from: c.d.e.w.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/m.class */
public class C6078m {

    /* renamed from: j */
    public static final Clock f19527j = DefaultClock.m17089d();

    /* renamed from: k */
    public static final Random f19528k = new Random();

    /* renamed from: a */
    public final Map<String, C6070g> f19529a;

    /* renamed from: b */
    public final Context f19530b;

    /* renamed from: c */
    public final ExecutorService f19531c;

    /* renamed from: d */
    public final C5128c f19532d;

    /* renamed from: e */
    public final AbstractC5898g f19533e;

    /* renamed from: f */
    public final C5140b f19534f;

    /* renamed from: g */
    public final AbstractC5143a f19535g;

    /* renamed from: h */
    public final String f19536h;

    /* renamed from: i */
    public Map<String, String> f19537i;

    public C6078m(Context context, C5128c cVar, AbstractC5898g gVar, C5140b bVar, AbstractC5143a aVar) {
        this(context, Executors.newCachedThreadPool(), cVar, gVar, bVar, aVar, true);
    }

    public C6078m(Context context, ExecutorService executorService, C5128c cVar, AbstractC5898g gVar, C5140b bVar, AbstractC5143a aVar, boolean z) {
        this.f19529a = new HashMap();
        this.f19537i = new HashMap();
        this.f19530b = context;
        this.f19531c = executorService;
        this.f19532d = cVar;
        this.f19533e = gVar;
        this.f19534f = bVar;
        this.f19535g = aVar;
        this.f19536h = cVar.m24464d().m24445b();
        if (z) {
            Tasks.m8589a(executorService, CallableC6076k.m22124a(this));
        }
    }

    /* renamed from: a */
    public static C6098n m22121a(Context context, String str, String str2) {
        return new C6098n(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    /* renamed from: a */
    public static C6106s m22118a(C5128c cVar, String str, AbstractC5143a aVar) {
        if (!m22120a(cVar) || !str.equals("firebase") || aVar == null) {
            return null;
        }
        return new C6106s(aVar);
    }

    /* renamed from: a */
    public static boolean m22120a(C5128c cVar) {
        return cVar.m24465c().equals("[DEFAULT]");
    }

    /* renamed from: a */
    public static boolean m22119a(C5128c cVar, String str) {
        return str.equals("firebase") && m22120a(cVar);
    }

    /* renamed from: a */
    public C6070g m22122a() {
        return m22115a("firebase");
    }

    /* renamed from: a */
    public C6070g m22117a(C5128c cVar, String str, AbstractC5898g gVar, C5140b bVar, Executor executor, C6084e eVar, C6084e eVar2, C6084e eVar3, C6094k kVar, C6097m mVar, C6098n nVar) {
        C6070g gVar2;
        synchronized (this) {
            if (!this.f19529a.containsKey(str)) {
                Context context = this.f19530b;
                if (!m22119a(cVar, str)) {
                    bVar = null;
                }
                C6070g gVar3 = new C6070g(context, cVar, gVar, bVar, executor, eVar, eVar2, eVar3, kVar, mVar, nVar);
                gVar3.m22133f();
                this.f19529a.put(str, gVar3);
            }
            gVar2 = this.f19529a.get(str);
        }
        return gVar2;
    }

    @KeepForSdk
    /* renamed from: a */
    public C6070g m22115a(String str) {
        C6070g a;
        synchronized (this) {
            C6084e a2 = m22113a(str, "fetch");
            C6084e a3 = m22113a(str, "activate");
            C6084e a4 = m22113a(str, "defaults");
            C6098n a5 = m22121a(this.f19530b, this.f19536h, str);
            C6097m a6 = m22116a(a3, a4);
            C6106s a7 = m22118a(this.f19532d, str, this.f19535g);
            if (a7 != null) {
                a7.getClass();
                a6.m22046a(C6077l.m22123a(a7));
            }
            a = m22117a(this.f19532d, str, this.f19533e, this.f19534f, this.f19531c, a2, a3, a4, m22114a(str, a2, a5), a6, a5);
        }
        return a;
    }

    /* renamed from: a */
    public final C6084e m22113a(String str, String str2) {
        return C6084e.m22098a(Executors.newCachedThreadPool(), C6100o.m22022a(this.f19530b, String.format("%s_%s_%s_%s.json", "frc", this.f19536h, str, str2)));
    }

    /* renamed from: a */
    public C6094k m22114a(String str, C6084e eVar, C6098n nVar) {
        C6094k kVar;
        synchronized (this) {
            kVar = new C6094k(this.f19533e, m22120a(this.f19532d) ? this.f19535g : null, this.f19531c, f19527j, f19528k, eVar, m22112a(this.f19532d.m24464d().m24447a(), str, nVar), nVar, this.f19537i);
        }
        return kVar;
    }

    /* renamed from: a */
    public final C6097m m22116a(C6084e eVar, C6084e eVar2) {
        return new C6097m(this.f19531c, eVar, eVar2);
    }

    /* renamed from: a */
    public ConfigFetchHttpClient m22112a(String str, String str2, C6098n nVar) {
        return new ConfigFetchHttpClient(this.f19530b, this.f19532d.m24464d().m24445b(), str, str2, nVar.m22033b(), nVar.m22033b());
    }
}
