package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.AbstractC12102f;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14184g;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.installations.AbstractC15826l;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.internal.C15921g;
import io.objectbox.model.PropertyFlags;
import java.util.Date;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.remoteconfig.internal.g */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/g.class */
public final class C15921g {

    /* renamed from: a */
    public static final long f56519a = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: b */
    static final int[] f56520b = {2, 4, 8, 16, 32, 64, 128, PropertyFlags.INDEX_PARTIAL_SKIP_NULL};

    /* renamed from: c */
    private final AbstractC15822h f56521c;

    /* renamed from: d */
    private final AbstractC15587a f56522d;

    /* renamed from: e */
    private final Executor f56523e;

    /* renamed from: f */
    private final AbstractC12102f f56524f;

    /* renamed from: g */
    private final Random f56525g;

    /* renamed from: h */
    private final C15911a f56526h;

    /* renamed from: i */
    private final ConfigFetchHttpClient f56527i;

    /* renamed from: j */
    private final C15929n f56528j;

    /* renamed from: k */
    private final Map<String, String> f56529k;

    /* renamed from: com.google.firebase.remoteconfig.internal.g$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/g$a.class */
    public static final class C15922a {

        /* renamed from: a */
        final int f56530a;

        /* renamed from: b */
        final C15918f f56531b;

        /* renamed from: c */
        final String f56532c;

        /* renamed from: d */
        private final Date f56533d;

        public C15922a(Date date, int i, C15918f c15918f, String str) {
            this.f56533d = date;
            this.f56530a = i;
            this.f56531b = c15918f;
            this.f56532c = str;
        }
    }

    public C15921g(AbstractC15822h abstractC15822h, AbstractC15587a abstractC15587a, Executor executor, AbstractC12102f abstractC12102f, Random random, C15911a c15911a, ConfigFetchHttpClient configFetchHttpClient, C15929n c15929n, Map<String, String> map) {
        this.f56521c = abstractC15822h;
        this.f56522d = abstractC15587a;
        this.f56523e = executor;
        this.f56524f = abstractC12102f;
        this.f56525g = random;
        this.f56526h = c15911a;
        this.f56527i = configFetchHttpClient;
        this.f56528j = c15929n;
        this.f56529k = map;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14185h m8059a(C15921g c15921g, long j, AbstractC14185h abstractC14185h) throws Exception {
        AbstractC14185h abstractC14185h2;
        Date date = new Date(c15921g.f56524f.mo19039a());
        boolean mo11478b = abstractC14185h.mo11478b();
        Date date2 = null;
        if (mo11478b) {
            Date date3 = new Date(c15921g.f56528j.f56555c.getLong("last_fetch_time_in_millis", -1L));
            if (date3.equals(C15929n.f56553a) ? false : date.before(new Date(date3.getTime() + TimeUnit.SECONDS.toMillis(j)))) {
                return C14188k.m11464a(new C15922a(date, 2, null, null));
            }
        }
        Date date4 = c15921g.f56528j.m8041c().f56559b;
        if (date.before(date4)) {
            date2 = date4;
        }
        if (date2 != null) {
            abstractC14185h2 = C14188k.m11465a((Exception) new FirebaseRemoteConfigFetchThrottledException(String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(date2.getTime() - date.getTime()))), date2.getTime()));
        } else {
            AbstractC14185h<String> mo8286b = c15921g.f56521c.mo8286b();
            AbstractC14185h<AbstractC15826l> mo8285c = c15921g.f56521c.mo8285c();
            abstractC14185h2 = C14188k.m11458b(mo8286b, mo8285c).mo11477b(c15921g.f56523e, new AbstractC14179b(c15921g, mo8286b, mo8285c, date) { // from class: com.google.firebase.remoteconfig.internal.i

                /* renamed from: a */
                private final C15921g f56536a;

                /* renamed from: b */
                private final AbstractC14185h f56537b;

                /* renamed from: c */
                private final AbstractC14185h f56538c;

                /* renamed from: d */
                private final Date f56539d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56536a = c15921g;
                    this.f56537b = mo8286b;
                    this.f56538c = mo8285c;
                    this.f56539d = date;
                }

                @Override // com.google.android.gms.tasks.AbstractC14179b
                public final Object then(AbstractC14185h abstractC14185h3) {
                    return C15921g.m8058a(this.f56536a, this.f56537b, this.f56538c, this.f56539d);
                }
            });
        }
        return abstractC14185h2.mo11477b(c15921g.f56523e, new AbstractC14179b(c15921g, date) { // from class: com.google.firebase.remoteconfig.internal.j

            /* renamed from: a */
            private final C15921g f56540a;

            /* renamed from: b */
            private final Date f56541b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56540a = c15921g;
                this.f56541b = date;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h3) {
                return C15921g.m8057a(this.f56540a, this.f56541b, abstractC14185h3);
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14185h m8058a(C15921g c15921g, AbstractC14185h abstractC14185h, AbstractC14185h abstractC14185h2, Date date) throws Exception {
        return !abstractC14185h.mo11478b() ? C14188k.m11465a((Exception) new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", abstractC14185h.mo11474e())) : !abstractC14185h2.mo11478b() ? C14188k.m11465a((Exception) new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", abstractC14185h2.mo11474e())) : c15921g.m8056a((String) abstractC14185h.mo11475d(), ((AbstractC15826l) abstractC14185h2.mo11475d()).mo8282a(), date);
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14185h m8057a(C15921g c15921g, Date date, AbstractC14185h abstractC14185h) throws Exception {
        if (abstractC14185h.mo11478b()) {
            C15929n c15929n = c15921g.f56528j;
            synchronized (c15929n.f56556d) {
                c15929n.f56555c.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
            }
        } else {
            Exception mo11474e = abstractC14185h.mo11474e();
            if (mo11474e != null) {
                if (mo11474e instanceof FirebaseRemoteConfigFetchThrottledException) {
                    C15929n c15929n2 = c15921g.f56528j;
                    synchronized (c15929n2.f56556d) {
                        c15929n2.f56555c.edit().putInt("last_fetch_status", 2).apply();
                    }
                } else {
                    C15929n c15929n3 = c15921g.f56528j;
                    synchronized (c15929n3.f56556d) {
                        c15929n3.f56555c.edit().putInt("last_fetch_status", 1).apply();
                    }
                }
            }
        }
        return abstractC14185h;
    }

    /* renamed from: a */
    private AbstractC14185h<C15922a> m8056a(String str, String str2, Date date) {
        try {
            C15922a m8055b = m8055b(str, str2, date);
            return m8055b.f56530a != 0 ? C14188k.m11464a(m8055b) : this.f56526h.m8078a(m8055b.f56531b).mo11479a(this.f56523e, new AbstractC14184g(m8055b) { // from class: com.google.firebase.remoteconfig.internal.k

                /* renamed from: a */
                private final C15921g.C15922a f56542a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56542a = m8055b;
                }

                @Override // com.google.android.gms.tasks.AbstractC14184g
                public final AbstractC14185h then(Object obj) {
                    AbstractC14185h m11464a;
                    m11464a = C14188k.m11464a(this.f56542a);
                    return m11464a;
                }
            });
        } catch (FirebaseRemoteConfigException e) {
            return C14188k.m11465a((Exception) e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0161, code lost:
        if (r0 == 429) goto L34;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.firebase.remoteconfig.internal.C15921g.C15922a m8055b(java.lang.String r10, java.lang.String r11, java.util.Date r12) throws com.google.firebase.remoteconfig.FirebaseRemoteConfigException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.C15921g.m8055b(java.lang.String, java.lang.String, java.util.Date):com.google.firebase.remoteconfig.internal.g$a");
    }

    /* renamed from: a */
    public final AbstractC14185h<C15922a> m8062a() {
        return m8061a(this.f56528j.m8042b());
    }

    /* renamed from: a */
    public final AbstractC14185h<C15922a> m8061a(long j) {
        return this.f56526h.m8076b().mo11477b(this.f56523e, C15923h.m8054a(this, j));
    }
}
