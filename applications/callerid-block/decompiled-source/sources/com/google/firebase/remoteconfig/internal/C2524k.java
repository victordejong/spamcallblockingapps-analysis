package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.AbstractC1610f;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import com.google.firebase.analytics.a.a;
import com.google.firebase.installations.g;
import com.google.firebase.installations.k;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
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

        private C2525a(Date date, int i, C2517f fVar, String str) {
            this.f10830a = i;
            this.f10831b = fVar;
            this.f10832c = str;
        }

        /* renamed from: a */
        public static C2525a m3222a(Date date) {
            return new C2525a(date, 1, null, null);
        }

        /* renamed from: b */
        public static C2525a m3221b(C2517f fVar, String str) {
            return new C2525a(fVar.m3256e(), 0, fVar, str);
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

    public C2524k(g gVar, a aVar, Executor executor, AbstractC1610f fVar, Random random, C2514e eVar, ConfigFetchHttpClient configFetchHttpClient, C2528n nVar, Map<String, String> map) {
        this.f10821a = gVar;
        this.f10822b = aVar;
        this.f10823c = executor;
        this.f10824d = fVar;
        this.f10825e = random;
        this.f10826f = eVar;
        this.f10827g = configFetchHttpClient;
        this.f10828h = nVar;
        this.f10829i = map;
    }

    /* renamed from: a */
    private boolean m3242a(long j, Date date) {
        Date e = this.f10828h.m3202e();
        if (e.equals(C2528n.f10842d)) {
            return false;
        }
        return date.before(new Date(e.getTime() + TimeUnit.SECONDS.toMillis(j)));
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
        } else if (httpStatusCode != 500) {
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
            C2528n.C2529a r = m3225r(e.getHttpStatusCode(), date);
            if (m3226q(r, e.getHttpStatusCode())) {
                throw new FirebaseRemoteConfigFetchThrottledException(r.m3194a().getTime());
            }
            throw m3241b(e);
        }
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigException, java.lang.Exception] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.gms.tasks.AbstractC2397g<com.google.firebase.remoteconfig.internal.C2524k.C2525a> m3236g(java.lang.String r6, java.lang.String r7, java.util.Date r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            com.google.firebase.remoteconfig.internal.k$a r0 = r0.m3237f(r1, r2, r3)     // Catch: FirebaseRemoteConfigException -> 0x002d
            r6 = r0
            r0 = r6
            int r0 = r0.m3217f()     // Catch: FirebaseRemoteConfigException -> 0x002d
            if (r0 == 0) goto L_0x0014
            r0 = r6
            com.google.android.gms.tasks.g r0 = com.google.android.gms.tasks.C2401j.m3760e(r0)     // Catch: FirebaseRemoteConfigException -> 0x002d
            return r0
        L_0x0014:
            r0 = r5
            com.google.firebase.remoteconfig.internal.e r0 = r0.f10826f     // Catch: FirebaseRemoteConfigException -> 0x002d
            r1 = r6
            com.google.firebase.remoteconfig.internal.f r1 = r1.m3219d()     // Catch: FirebaseRemoteConfigException -> 0x002d
            com.google.android.gms.tasks.g r0 = r0.m3267i(r1)     // Catch: FirebaseRemoteConfigException -> 0x002d
            r1 = r5
            java.util.concurrent.Executor r1 = r1.f10823c     // Catch: FirebaseRemoteConfigException -> 0x002d
            r2 = r6
            com.google.android.gms.tasks.f r2 = com.google.firebase.remoteconfig.internal.C2523j.m3243b(r2)     // Catch: FirebaseRemoteConfigException -> 0x002d
            com.google.android.gms.tasks.g r0 = r0.m3770q(r1, r2)     // Catch: FirebaseRemoteConfigException -> 0x002d
            r6 = r0
            r0 = r6
            return r0
        L_0x002d:
            r6 = move-exception
            r0 = r6
            com.google.android.gms.tasks.g r0 = com.google.android.gms.tasks.C2401j.m3761d(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.C2524k.m3236g(java.lang.String, java.lang.String, java.util.Date):com.google.android.gms.tasks.g");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v18, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException, java.lang.Exception] */
    /* renamed from: h */
    public AbstractC2397g<C2525a> m3235h(AbstractC2397g<C2517f> gVar, long j) {
        AbstractC2397g gVar2;
        Date date = new Date(this.f10824d.m8247a());
        if (gVar.m3772o() && m3242a(j, date)) {
            return C2401j.m3760e(C2525a.m3220c(date));
        }
        Date i = m3234i(date);
        if (i != null) {
            gVar2 = C2401j.m3761d(new FirebaseRemoteConfigFetchThrottledException(m3240c(i.getTime() - date.getTime()), i.getTime()));
        } else {
            AbstractC2397g F = this.f10821a.F();
            AbstractC2397g a = this.f10821a.a(false);
            gVar2 = C2401j.m3756i(F, a).m3778i(this.f10823c, C2521h.m3247b(this, F, a, date));
        }
        return gVar2.m3778i(this.f10823c, C2522i.m3245b(this, date));
    }

    /* renamed from: i */
    private Date m3234i(Date date) {
        Date a = this.f10828h.m3206a().m3194a();
        if (date.before(a)) {
            return a;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException, java.lang.Exception] */
    /* renamed from: o */
    public static /* synthetic */ AbstractC2397g m3228o(C2524k kVar, AbstractC2397g gVar, AbstractC2397g gVar2, Date date, AbstractC2397g gVar3) {
        return !gVar.m3772o() ? C2401j.m3761d(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", gVar.m3777j())) : !gVar2.m3772o() ? C2401j.m3761d(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", gVar2.m3777j())) : kVar.m3236g((String) gVar.m3776k(), ((k) gVar2.m3776k()).b(), date);
    }

    /* renamed from: q */
    private boolean m3226q(C2528n.C2529a aVar, int i) {
        boolean z = true;
        if (aVar.m3193b() <= 1) {
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
        int b = this.f10828h.m3206a().m3193b() + 1;
        this.f10828h.m3199h(b, new Date(date.getTime() + m3233j(b)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public void m3223t(AbstractC2397g<C2525a> gVar, Date date) {
        if (gVar.m3772o()) {
            this.f10828h.m3196k(date);
            return;
        }
        Exception j = gVar.m3777j();
        if (j != null) {
            if (j instanceof FirebaseRemoteConfigFetchThrottledException) {
                this.f10828h.m3195l();
            } else {
                this.f10828h.m3197j();
            }
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
