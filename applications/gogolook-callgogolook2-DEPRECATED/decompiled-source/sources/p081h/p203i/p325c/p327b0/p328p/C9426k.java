package p081h.p203i.p325c.p327b0.p328p;

import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p327b0.C9401g;
import p081h.p203i.p325c.p327b0.C9402h;
import p081h.p203i.p325c.p327b0.C9403i;
import p081h.p203i.p325c.p327b0.C9404j;
import p081h.p203i.p325c.p327b0.p328p.C9430n;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p367v.AbstractC9941h;
import p081h.p203i.p325c.p367v.AbstractC9947m;
/* renamed from: h.i.c.b0.p.k */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/k.class */
public class C9426k {

    /* renamed from: j */
    public static final long f21501j = TimeUnit.HOURS.toSeconds(12);
    @VisibleForTesting

    /* renamed from: k */
    public static final int[] f21502k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: a */
    public final AbstractC9941h f21503a;
    @Nullable

    /* renamed from: b */
    public final AbstractC9452a f21504b;

    /* renamed from: c */
    public final Executor f21505c;

    /* renamed from: d */
    public final AbstractC7074f f21506d;

    /* renamed from: e */
    public final Random f21507e;

    /* renamed from: f */
    public final C9416e f21508f;

    /* renamed from: g */
    public final ConfigFetchHttpClient f21509g;

    /* renamed from: h */
    public final C9430n f21510h;

    /* renamed from: i */
    public final Map<String, String> f21511i;

    /* renamed from: h.i.c.b0.p.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/k$a.class */
    public static class C9427a {

        /* renamed from: a */
        public final int f21512a;

        /* renamed from: b */
        public final C9419f f21513b;
        @Nullable

        /* renamed from: c */
        public final String f21514c;

        public C9427a(Date date, int i, C9419f fVar, @Nullable String str) {
            this.f21512a = i;
            this.f21513b = fVar;
            this.f21514c = str;
        }

        /* renamed from: a */
        public static C9427a m15219a(C9419f fVar, String str) {
            return new C9427a(fVar.m15253c(), 0, fVar, str);
        }

        /* renamed from: a */
        public static C9427a m15218a(Date date) {
            return new C9427a(date, 1, null, null);
        }

        /* renamed from: b */
        public static C9427a m15216b(Date date) {
            return new C9427a(date, 2, null, null);
        }

        /* renamed from: a */
        public C9419f m15220a() {
            return this.f21513b;
        }

        @Nullable
        /* renamed from: b */
        public String m15217b() {
            return this.f21514c;
        }

        /* renamed from: c */
        public int m15215c() {
            return this.f21512a;
        }
    }

    public C9426k(AbstractC9941h hVar, @Nullable AbstractC9452a aVar, Executor executor, AbstractC7074f fVar, Random random, C9416e eVar, ConfigFetchHttpClient configFetchHttpClient, C9430n nVar, Map<String, String> map) {
        this.f21503a = hVar;
        this.f21504b = aVar;
        this.f21505c = executor;
        this.f21506d = fVar;
        this.f21507e = random;
        this.f21508f = eVar;
        this.f21509g = configFetchHttpClient;
        this.f21510h = nVar;
        this.f21511i = map;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9143h m15229a(C9426k kVar, AbstractC9143h hVar, AbstractC9143h hVar2, Date date, AbstractC9143h hVar3) throws Exception {
        return !hVar.mo16009e() ? C9148k.m16000a((Exception) new C9401g("Firebase Installations failed to get installation ID for fetch.", hVar.mo16030a())) : !hVar2.mo16009e() ? C9148k.m16000a((Exception) new C9401g("Firebase Installations failed to get installation auth token for fetch.", hVar2.mo16030a())) : kVar.m15222b((String) hVar.mo16014b(), ((AbstractC9947m) hVar2.mo16014b()).mo13896a(), date);
    }

    /* renamed from: a */
    public final long m15238a(int i) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f21502k;
        long millis = timeUnit.toMillis(iArr[Math.min(i, iArr.length) - 1]);
        return (millis / 2) + this.f21507e.nextInt((int) millis);
    }

    /* renamed from: a */
    public final AbstractC9143h<C9427a> m15234a(AbstractC9143h<C9419f> hVar, long j) {
        AbstractC9143h hVar2;
        Date date = new Date(this.f21506d.currentTimeMillis());
        if (hVar.mo16009e() && m15235a(j, date)) {
            return C9148k.m15999a(C9427a.m15216b(date));
        }
        Date a = m15225a(date);
        if (a != null) {
            hVar2 = C9148k.m16000a((Exception) new C9403i(m15236a(a.getTime() - date.getTime()), a.getTime()));
        } else {
            AbstractC9143h<String> id = this.f21503a.getId();
            AbstractC9143h<AbstractC9947m> a2 = this.f21503a.mo13898a(false);
            hVar2 = C9148k.m15993b(id, a2).mo16012b(this.f21505c, C9423h.m15242a(this, id, a2, date));
        }
        return hVar2.mo16012b(this.f21505c, C9424i.m15241a(this, date));
    }

    /* renamed from: a */
    public final C9404j m15232a(C9404j jVar) throws C9401g {
        String str;
        int a = jVar.m15295a();
        if (a == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (a == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else if (a == 429) {
            throw new C9401g("The throttled response from the server was not handled correctly by the FRC SDK.");
        } else if (a != 500) {
            switch (a) {
                case 502:
                case 503:
                case 504:
                    str = "The server is unavailable. Please try again later.";
                    break;
                default:
                    str = "The server returned an unexpected error.";
                    break;
            }
        } else {
            str = "There was an internal server error.";
        }
        int a2 = jVar.m15295a();
        return new C9404j(a2, "Fetch failed: " + str, jVar);
    }

    @WorkerThread
    /* renamed from: a */
    public final C9427a m15226a(String str, String str2, Date date) throws C9402h {
        try {
            C9427a fetch = this.f21509g.fetch(this.f21509g.m31019a(), str, str2, m15239a(), this.f21510h.m15197c(), this.f21511i, date);
            if (fetch.m15217b() != null) {
                this.f21510h.m15200a(fetch.m15217b());
            }
            this.f21510h.m15195e();
            return fetch;
        } catch (C9404j e) {
            C9430n.C9431a a = m15237a(e.m15295a(), date);
            if (m15227a(a, e.m15295a())) {
                throw new C9403i(a.m15192a().getTime());
            }
            throw m15232a(e);
        }
    }

    /* renamed from: a */
    public final C9430n.C9431a m15237a(int i, Date date) {
        if (m15224b(i)) {
            m15221b(date);
        }
        return this.f21510h.m15203a();
    }

    /* renamed from: a */
    public final String m15236a(long j) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j)));
    }

    @Nullable
    /* renamed from: a */
    public final Date m15225a(Date date) {
        Date a = this.f21510h.m15203a().m15192a();
        if (date.before(a)) {
            return a;
        }
        return null;
    }

    @WorkerThread
    /* renamed from: a */
    public final Map<String, String> m15239a() {
        HashMap hashMap = new HashMap();
        AbstractC9452a aVar = this.f21504b;
        if (aVar == null) {
            return hashMap;
        }
        for (Map.Entry<String, Object> entry : aVar.mo15117a(false).entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m15233a(AbstractC9143h<C9427a> hVar, Date date) {
        if (hVar.mo16009e()) {
            this.f21510h.m15199a(date);
            return;
        }
        Exception a = hVar.mo16030a();
        if (a != null) {
            if (a instanceof C9403i) {
                this.f21510h.m15193g();
            } else {
                this.f21510h.m15194f();
            }
        }
    }

    /* renamed from: a */
    public final boolean m15235a(long j, Date date) {
        Date d = this.f21510h.m15196d();
        if (d.equals(C9430n.f21524d)) {
            return false;
        }
        return date.before(new Date(d.getTime() + TimeUnit.SECONDS.toMillis(j)));
    }

    /* renamed from: a */
    public final boolean m15227a(C9430n.C9431a aVar, int i) {
        boolean z = true;
        if (aVar.m15191b() <= 1) {
            z = i == 429;
        }
        return z;
    }

    /* renamed from: b */
    public AbstractC9143h<C9427a> m15223b(long j) {
        return this.f21508f.m15261b().mo16012b(this.f21505c, C9422g.m15243a(this, j));
    }

    /* renamed from: b */
    public final AbstractC9143h<C9427a> m15222b(String str, String str2, Date date) {
        try {
            C9427a a = m15226a(str, str2, date);
            return a.m15215c() != 0 ? C9148k.m15999a(a) : this.f21508f.m15264a(a.m15220a()).mo16015a(this.f21505c, C9425j.m15240a(a));
        } catch (C9402h e) {
            return C9148k.m16000a((Exception) e);
        }
    }

    /* renamed from: b */
    public final void m15221b(Date date) {
        int b = this.f21510h.m15203a().m15191b() + 1;
        this.f21510h.m15202a(b, new Date(date.getTime() + m15238a(b)));
    }

    /* renamed from: b */
    public final boolean m15224b(int i) {
        return i == 429 || i == 502 || i == 503 || i == 504;
    }
}
