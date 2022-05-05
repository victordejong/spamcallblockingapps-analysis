package p081h.p203i.p325c.p327b0;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p327b0.p328p.C9416e;
import p081h.p203i.p325c.p327b0.p328p.C9426k;
import p081h.p203i.p325c.p327b0.p328p.C9429m;
import p081h.p203i.p325c.p327b0.p328p.C9430n;
import p081h.p203i.p325c.p327b0.p328p.C9432o;
import p081h.p203i.p325c.p327b0.p328p.C9434q;
import p081h.p203i.p325c.p329j.C9449c;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p367v.AbstractC9941h;
/* renamed from: h.i.c.b0.n */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/n.class */
public class C9410n {

    /* renamed from: j */
    public static final AbstractC7074f f21457j = C7077i.m21148a();

    /* renamed from: k */
    public static final Random f21458k = new Random();
    @GuardedBy("this")

    /* renamed from: a */
    public final Map<String, C9400f> f21459a;

    /* renamed from: b */
    public final Context f21460b;

    /* renamed from: c */
    public final ExecutorService f21461c;

    /* renamed from: d */
    public final C9435c f21462d;

    /* renamed from: e */
    public final AbstractC9941h f21463e;

    /* renamed from: f */
    public final C9449c f21464f;
    @Nullable

    /* renamed from: g */
    public final AbstractC9452a f21465g;

    /* renamed from: h */
    public final String f21466h;
    @GuardedBy("this")

    /* renamed from: i */
    public Map<String, String> f21467i;

    public C9410n(Context context, C9435c cVar, AbstractC9941h hVar, C9449c cVar2, @Nullable AbstractC9452a aVar) {
        this(context, Executors.newCachedThreadPool(), cVar, hVar, cVar2, aVar, true);
    }

    @VisibleForTesting
    public C9410n(Context context, ExecutorService executorService, C9435c cVar, AbstractC9941h hVar, C9449c cVar2, @Nullable AbstractC9452a aVar, boolean z) {
        this.f21459a = new HashMap();
        this.f21467i = new HashMap();
        this.f21460b = context;
        this.f21461c = executorService;
        this.f21462d = cVar;
        this.f21463e = hVar;
        this.f21464f = cVar2;
        this.f21465g = aVar;
        this.f21466h = cVar.m15169d().m15149b();
        if (z) {
            C9148k.m15997a(executorService, CallableC9408l.m15288a(this));
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static C9430n m15284a(Context context, String str, String str2) {
        return new C9430n(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    @Nullable
    /* renamed from: a */
    public static C9434q m15280a(C9435c cVar, String str, @Nullable AbstractC9452a aVar) {
        if (!m15282a(cVar) || !str.equals("firebase") || aVar == null) {
            return null;
        }
        return new C9434q(aVar);
    }

    /* renamed from: a */
    public static boolean m15282a(C9435c cVar) {
        return cVar.m15170c().equals("[DEFAULT]");
    }

    /* renamed from: a */
    public static boolean m15281a(C9435c cVar, String str) {
        return str.equals("firebase") && m15282a(cVar);
    }

    @VisibleForTesting
    /* renamed from: a */
    public ConfigFetchHttpClient m15275a(String str, String str2, C9430n nVar) {
        return new ConfigFetchHttpClient(this.f21460b, this.f21462d.m15169d().m15149b(), str, str2, nVar.m15198b(), nVar.m15198b());
    }

    /* renamed from: a */
    public C9400f m15285a() {
        return m15278a("firebase");
    }

    @VisibleForTesting
    /* renamed from: a */
    public C9400f m15279a(C9435c cVar, String str, AbstractC9941h hVar, C9449c cVar2, Executor executor, C9416e eVar, C9416e eVar2, C9416e eVar3, C9426k kVar, C9429m mVar, C9430n nVar) {
        C9400f fVar;
        synchronized (this) {
            if (!this.f21459a.containsKey(str)) {
                Context context = this.f21460b;
                if (!m15281a(cVar, str)) {
                    cVar2 = null;
                }
                C9400f fVar2 = new C9400f(context, cVar, hVar, cVar2, executor, eVar, eVar2, eVar3, kVar, mVar, nVar);
                fVar2.m15300b();
                this.f21459a.put(str, fVar2);
            }
            fVar = this.f21459a.get(str);
        }
        return fVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public C9400f m15278a(String str) {
        C9400f a;
        synchronized (this) {
            C9416e a2 = m15276a(str, "fetch");
            C9416e a3 = m15276a(str, "activate");
            C9416e a4 = m15276a(str, "defaults");
            C9430n a5 = m15284a(this.f21460b, this.f21466h, str);
            C9429m a6 = m15283a(a3, a4);
            C9434q a7 = m15280a(this.f21462d, str, this.f21465g);
            if (a7 != null) {
                a7.getClass();
                a6.m15213a(C9409m.m15287a(a7));
            }
            a = m15279a(this.f21462d, str, this.f21463e, this.f21464f, this.f21461c, a2, a3, a4, m15277a(str, a2, a5), a6, a5);
        }
        return a;
    }

    /* renamed from: a */
    public final C9416e m15276a(String str, String str2) {
        return C9416e.m15262a(Executors.newCachedThreadPool(), C9432o.m15189a(this.f21460b, String.format("%s_%s_%s_%s.json", "frc", this.f21466h, str, str2)));
    }

    @VisibleForTesting
    /* renamed from: a */
    public C9426k m15277a(String str, C9416e eVar, C9430n nVar) {
        C9426k kVar;
        synchronized (this) {
            kVar = new C9426k(this.f21463e, m15282a(this.f21462d) ? this.f21465g : null, this.f21461c, f21457j, f21458k, eVar, m15275a(this.f21462d.m15169d().m15151a(), str, nVar), nVar, this.f21467i);
        }
        return kVar;
    }

    /* renamed from: a */
    public final C9429m m15283a(C9416e eVar, C9416e eVar2) {
        return new C9429m(this.f21461c, eVar, eVar2);
    }
}
