package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.AbstractC1610f;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import com.google.firebase.analytics.a.a;
import com.google.firebase.installations.g;
import com.google.firebase.installations.k;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.C2528n;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.remoteconfig.internal.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/k.class */
public class C2524k {

    /* renamed from: j */
    public static final long f10819j = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: k */
    static final int[] f10820k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: a */
    private final g f10821a;

    /* renamed from: b */
    private final a f10822b;

    /* renamed from: c */
    private final Executor f10823c;

    /* renamed from: d */
    private final AbstractC1610f f10824d;

    /* renamed from: e */
    private final Random f10825e;

    /* renamed from: f */
    private final C2514e f10826f;

    /* renamed from: g */
    private final ConfigFetchHttpClient f10827g;

    /* renamed from: h */
    private final C2528n f10828h;

    /* renamed from: i */
    private final Map<String, String> f10829i;

    /* renamed from: com.google.firebase.remoteconfig.internal.k$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/k$a.class */
    public static class C2525a {

        /* renamed from: a */
        private final int f10830a;

        /* renamed from: b */
        private final C2517f f10831b;

        /* renamed from: c */
        private final String f10832c;

        private C2525a(Date date, int i, C2517f c2517f, String str) {
            this.f10830a = i;
            this.f10831b = c2517f;
            this.f10832c = str;
        }

        /* renamed from: a */
        public static C2525a m3222a(Date date) {
            return new C2525a(date, 1, null, null);
        }

        /* renamed from: b */
        public static C2525a m3221b(C2517f c2517f, String str) {
            return new C2525a(c2517f.m3256e(), 0, c2517f, str);
        }

        /* renamed from: c */
        public static C2525a m3220c(Date date) {
            return new C2525a(date, 2, null, null);
        }

        /* renamed from: d */
        public C2517f m3219d() {
            return this.f10831b;
        }

        /* renamed from: e */
        String m3218e() {
            return this.f10832c;
        }

        /* renamed from: f */
        int m3217f() {
            return this.f10830a;
        }
    }

    public C2524k(g gVar, a aVar, Executor executor, AbstractC1610f abstractC1610f, Random random, C2514e c2514e, ConfigFetchHttpClient configFetchHttpClient, C2528n c2528n, Map<String, String> map) {
        this.f10821a = gVar;
        this.f10822b = aVar;
        this.f10823c = executor;
        this.f10824d = abstractC1610f;
        this.f10825e = random;
        this.f10826f = c2514e;
        this.f10827g = configFetchHttpClient;
        this.f10828h = c2528n;
        this.f10829i = map;
    }

    /* renamed from: a */
    private boolean m3242a(long j, Date date) {
        Date m3202e = this.f10828h.m3202e();
        if (m3202e.equals(C2528n.f10842d)) {
            return false;
        }
        return date.before(new Date(m3202e.getTime() + TimeUnit.SECONDS.toMillis(j)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException] */
    /* renamed from: b */
    private FirebaseRemoteConfigServerException m3241b(FirebaseRemoteConfigServerException firebaseRemoteConfigServerException) {
        String str;
        int httpStatusCode = firebaseRemoteConfigServerException.getHttpStatusCode();
        if (httpStatusCode == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (httpStatusCode == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else if (httpStatusCode == 429) {
            throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
        } else {
            if (httpStatusCode != 500) {
                switch (httpStatusCode) {
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
        }
        int httpStatusCode2 = firebaseRemoteConfigServerException.getHttpStatusCode();
        return new FirebaseRemoteConfigServerException(httpStatusCode2, "Fetch failed: " + str, firebaseRemoteConfigServerException);
    }

    /* renamed from: c */
    private String m3240c(long j) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j)));
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Throwable, com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException] */
    /* renamed from: f */
    private C2525a m3237f(String str, String str2, Date date) {
        try {
            C2525a fetch = this.f10827g.fetch(this.f10827g.m3289c(), str, str2, m3232k(), this.f10828h.m3203d(), this.f10829i, date);
            if (fetch.m3218e() != null) {
                this.f10828h.m3198i(fetch.m3218e());
            }
            this.f10828h.m3200g();
            return fetch;
        } catch (FirebaseRemoteConfigServerException e) {
            C2528n.C2529a m3225r = m3225r(e.getHttpStatusCode(), date);
            if (!m3226q(m3225r, e.getHttpStatusCode())) {
                throw m3241b(e);
            }
            throw new FirebaseRemoteConfigFetchThrottledException(m3225r.m3194a().getTime());
        }
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigException, java.lang.Exception] */
    /* renamed from: g */
    private AbstractC2397g<C2525a> m3236g(String str, String str2, Date date) {
        try {
            C2525a m3237f = m3237f(str, str2, date);
            return m3237f.m3217f() != 0 ? C2401j.m3760e(m3237f) : this.f10826f.m3267i(m3237f.m3219d()).m3770q(this.f10823c, C2523j.m3243b(m3237f));
        } catch (FirebaseRemoteConfigException e) {
            return C2401j.m3761d(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException, java.lang.Exception] */
    /* renamed from: h */
    public AbstractC2397g<C2525a> m3235h(AbstractC2397g<C2517f> abstractC2397g, long j) {
        AbstractC2397g abstractC2397g2;
        Date date = new Date(this.f10824d.m8247a());
        if (!abstractC2397g.m3772o() || !m3242a(j, date)) {
            Date m3234i = m3234i(date);
            if (m3234i != null) {
                abstractC2397g2 = C2401j.m3761d(new FirebaseRemoteConfigFetchThrottledException(m3240c(m3234i.getTime() - date.getTime()), m3234i.getTime()));
            } else {
                AbstractC2397g F = this.f10821a.F();
                AbstractC2397g a = this.f10821a.a(false);
                abstractC2397g2 = C2401j.m3756i(F, a).m3778i(this.f10823c, C2521h.m3247b(this, F, a, date));
            }
            return abstractC2397g2.m3778i(this.f10823c, C2522i.m3245b(this, date));
        }
        return C2401j.m3760e(C2525a.m3220c(date));
    }

    /* renamed from: i */
    private Date m3234i(Date date) {
        Date m3194a = this.f10828h.m3206a().m3194a();
        if (date.before(m3194a)) {
            return m3194a;
        }
        return null;
    }

    /* renamed from: j */
    private long m3233j(int i) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f10820k;
        long millis = timeUnit.toMillis(iArr[Math.min(i, iArr.length) - 1]);
        return (millis / 2) + this.f10825e.nextInt((int) millis);
    }

    /* renamed from: k */
    private Map<String, String> m3232k() {
        HashMap hashMap = new HashMap();
        a aVar = this.f10822b;
        if (aVar == null) {
            return hashMap;
        }
        for (Map.Entry entry : aVar.a(false).entrySet()) {
            hashMap.put((String) entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    /* renamed from: l */
    private boolean m3231l(int i) {
        return i == 429 || i == 502 || i == 503 || i == 504;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException, java.lang.Exception] */
    /* renamed from: o */
    public static /* synthetic */ AbstractC2397g m3228o(C2524k c2524k, AbstractC2397g abstractC2397g, AbstractC2397g abstractC2397g2, Date date, AbstractC2397g abstractC2397g3) {
        return !abstractC2397g.m3772o() ? C2401j.m3761d(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", abstractC2397g.m3777j())) : !abstractC2397g2.m3772o() ? C2401j.m3761d(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", abstractC2397g2.m3777j())) : c2524k.m3236g((String) abstractC2397g.m3776k(), ((k) abstractC2397g2.m3776k()).b(), date);
    }

    /* renamed from: q */
    private boolean m3226q(C2528n.C2529a c2529a, int i) {
        boolean z = true;
        if (c2529a.m3193b() <= 1) {
            z = i == 429;
        }
        return z;
    }

    /* renamed from: r */
    private C2528n.C2529a m3225r(int i, Date date) {
        if (m3231l(i)) {
            m3224s(date);
        }
        return this.f10828h.m3206a();
    }

    /* renamed from: s */
    private void m3224s(Date date) {
        int m3193b = this.f10828h.m3206a().m3193b() + 1;
        this.f10828h.m3199h(m3193b, new Date(date.getTime() + m3233j(m3193b)));
    }

    /* renamed from: t */
    public void m3223t(AbstractC2397g<C2525a> abstractC2397g, Date date) {
        if (abstractC2397g.m3772o()) {
            this.f10828h.m3196k(date);
            return;
        }
        Exception m3777j = abstractC2397g.m3777j();
        if (m3777j == null) {
            return;
        }
        if (m3777j instanceof FirebaseRemoteConfigFetchThrottledException) {
            this.f10828h.m3195l();
        } else {
            this.f10828h.m3197j();
        }
    }

    /* renamed from: d */
    public AbstractC2397g<C2525a> m3239d() {
        return m3238e(this.f10828h.m3201f());
    }

    /* renamed from: e */
    public AbstractC2397g<C2525a> m3238e(long j) {
        return this.f10826f.m3273c().m3778i(this.f10823c, C2520g.m3248b(this, j));
    }
}
