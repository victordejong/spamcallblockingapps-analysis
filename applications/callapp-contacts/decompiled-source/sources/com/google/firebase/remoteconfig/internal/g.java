package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.f;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.k;
import com.google.firebase.installations.h;
import com.google.firebase.installations.l;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.g;
import com.google.firebase.remoteconfig.internal.n;
import io.objectbox.model.PropertyFlags;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final long f32618a = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: b  reason: collision with root package name */
    static final int[] f32619b = {2, 4, 8, 16, 32, 64, 128, PropertyFlags.INDEX_PARTIAL_SKIP_NULL};

    /* renamed from: c  reason: collision with root package name */
    private final h f32620c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.firebase.analytics.connector.a f32621d;
    private final Executor e;
    private final f f;
    private final Random g;
    private final com.google.firebase.remoteconfig.internal.a h;
    private final ConfigFetchHttpClient i;
    private final n j;
    private final Map<String, String> k;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f32622a;

        /* renamed from: b  reason: collision with root package name */
        final f f32623b;

        /* renamed from: c  reason: collision with root package name */
        final String f32624c;

        /* renamed from: d  reason: collision with root package name */
        private final Date f32625d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Date date, int i, f fVar, String str) {
            this.f32625d = date;
            this.f32622a = i;
            this.f32623b = fVar;
            this.f32624c = str;
        }
    }

    public g(h hVar, com.google.firebase.analytics.connector.a aVar, Executor executor, f fVar, Random random, com.google.firebase.remoteconfig.internal.a aVar2, ConfigFetchHttpClient configFetchHttpClient, n nVar, Map<String, String> map) {
        this.f32620c = hVar;
        this.f32621d = aVar;
        this.e = executor;
        this.f = fVar;
        this.g = random;
        this.h = aVar2;
        this.i = configFetchHttpClient;
        this.j = nVar;
        this.k = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.tasks.h a(final g gVar, long j, com.google.android.gms.tasks.h hVar) throws Exception {
        com.google.android.gms.tasks.h hVar2;
        final Date date = new Date(gVar.f.a());
        boolean b2 = hVar.b();
        Date date2 = null;
        if (b2) {
            Date date3 = new Date(gVar.j.f32644c.getLong("last_fetch_time_in_millis", -1L));
            if (date3.equals(n.f32642a) ? false : date.before(new Date(date3.getTime() + TimeUnit.SECONDS.toMillis(j)))) {
                return k.a(new a(date, 2, null, null));
            }
        }
        Date date4 = gVar.j.c().f32647b;
        if (date.before(date4)) {
            date2 = date4;
        }
        if (date2 != null) {
            hVar2 = k.a((Exception) new FirebaseRemoteConfigFetchThrottledException(String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(date2.getTime() - date.getTime()))), date2.getTime()));
        } else {
            final com.google.android.gms.tasks.h<String> b3 = gVar.f32620c.b();
            final com.google.android.gms.tasks.h<l> c2 = gVar.f32620c.c();
            hVar2 = k.b(b3, c2).b(gVar.e, new b(gVar, b3, c2, date) { // from class: com.google.firebase.remoteconfig.internal.i

                /* renamed from: a  reason: collision with root package name */
                private final g f32628a;

                /* renamed from: b  reason: collision with root package name */
                private final com.google.android.gms.tasks.h f32629b;

                /* renamed from: c  reason: collision with root package name */
                private final com.google.android.gms.tasks.h f32630c;

                /* renamed from: d  reason: collision with root package name */
                private final Date f32631d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32628a = gVar;
                    this.f32629b = b3;
                    this.f32630c = c2;
                    this.f32631d = date;
                }

                @Override // com.google.android.gms.tasks.b
                public final Object then(com.google.android.gms.tasks.h hVar3) {
                    return g.a(this.f32628a, this.f32629b, this.f32630c, this.f32631d);
                }
            });
        }
        return hVar2.b(gVar.e, new b(gVar, date) { // from class: com.google.firebase.remoteconfig.internal.j

            /* renamed from: a  reason: collision with root package name */
            private final g f32632a;

            /* renamed from: b  reason: collision with root package name */
            private final Date f32633b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32632a = gVar;
                this.f32633b = date;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(com.google.android.gms.tasks.h hVar3) {
                return g.a(this.f32632a, this.f32633b, hVar3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.tasks.h a(g gVar, com.google.android.gms.tasks.h hVar, com.google.android.gms.tasks.h hVar2, Date date) throws Exception {
        return !hVar.b() ? k.a((Exception) new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", hVar.e())) : !hVar2.b() ? k.a((Exception) new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", hVar2.e())) : gVar.a((String) hVar.d(), ((l) hVar2.d()).a(), date);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.tasks.h a(g gVar, Date date, com.google.android.gms.tasks.h hVar) throws Exception {
        if (hVar.b()) {
            n nVar = gVar.j;
            synchronized (nVar.f32645d) {
                nVar.f32644c.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
            }
        } else {
            Exception e = hVar.e();
            if (e != null) {
                if (e instanceof FirebaseRemoteConfigFetchThrottledException) {
                    n nVar2 = gVar.j;
                    synchronized (nVar2.f32645d) {
                        nVar2.f32644c.edit().putInt("last_fetch_status", 2).apply();
                    }
                } else {
                    n nVar3 = gVar.j;
                    synchronized (nVar3.f32645d) {
                        nVar3.f32644c.edit().putInt("last_fetch_status", 1).apply();
                    }
                }
            }
        }
        return hVar;
    }

    private com.google.android.gms.tasks.h<a> a(String str, String str2, Date date) {
        try {
            final a b2 = b(str, str2, date);
            return b2.f32622a != 0 ? k.a(b2) : this.h.a(b2.f32623b).a(this.e, new com.google.android.gms.tasks.g(b2) { // from class: com.google.firebase.remoteconfig.internal.k

                /* renamed from: a  reason: collision with root package name */
                private final g.a f32634a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32634a = b2;
                }

                @Override // com.google.android.gms.tasks.g
                public final com.google.android.gms.tasks.h then(Object obj) {
                    com.google.android.gms.tasks.h a2;
                    a2 = com.google.android.gms.tasks.k.a(this.f32634a);
                    return a2;
                }
            });
        } catch (FirebaseRemoteConfigException e) {
            return k.a((Exception) e);
        }
    }

    private a b(String str, String str2, Date date) throws FirebaseRemoteConfigException {
        String str3;
        boolean z = false;
        try {
            HttpURLConnection a2 = this.i.a();
            ConfigFetchHttpClient configFetchHttpClient = this.i;
            HashMap hashMap = new HashMap();
            com.google.firebase.analytics.connector.a aVar = this.f32621d;
            if (aVar != null) {
                for (Map.Entry<String, Object> entry : aVar.a().entrySet()) {
                    hashMap.put(entry.getKey(), entry.getValue().toString());
                }
            }
            a fetch = configFetchHttpClient.fetch(a2, str, str2, hashMap, this.j.f32644c.getString("last_fetch_etag", null), this.k, date);
            if (fetch.f32624c != null) {
                this.j.a(fetch.f32624c);
            }
            this.j.a(0, n.f32643b);
            return fetch;
        } catch (FirebaseRemoteConfigServerException e) {
            int i = e.f32576a;
            if (i == 429 || i == 502 || i == 503 || i == 504) {
                int i2 = this.j.c().f32646a + 1;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                int[] iArr = f32619b;
                long millis = timeUnit.toMillis(iArr[Math.min(i2, iArr.length) - 1]);
                this.j.a(i2, new Date(date.getTime() + (millis / 2) + this.g.nextInt((int) millis)));
            }
            n.a c2 = this.j.c();
            int i3 = e.f32576a;
            if (c2.f32646a > 1 || i3 == 429) {
                z = true;
            }
            if (!z) {
                int i4 = e.f32576a;
                if (i4 == 401) {
                    str3 = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
                } else if (i4 == 403) {
                    str3 = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
                } else if (i4 == 429) {
                    throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
                } else if (i4 != 500) {
                    switch (i4) {
                        case 502:
                        case 503:
                        case 504:
                            str3 = "The server is unavailable. Please try again later.";
                            break;
                        default:
                            str3 = "The server returned an unexpected error.";
                            break;
                    }
                } else {
                    str3 = "There was an internal server error.";
                }
                throw new FirebaseRemoteConfigServerException(e.f32576a, "Fetch failed: ".concat(str3), e);
            }
            throw new FirebaseRemoteConfigFetchThrottledException(c2.f32647b.getTime());
        }
    }

    public final com.google.android.gms.tasks.h<a> a() {
        return a(this.j.b());
    }

    public final com.google.android.gms.tasks.h<a> a(long j) {
        return this.h.b().b(this.e, h.a(this, j));
    }
}
