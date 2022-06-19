package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.common.util.Clock;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p222r6.C4218d;
import p222r6.C4221e;
import p275w5.AbstractC4739b;
import p285x4.AbstractC4857a;
import p286x5.AbstractC4871e;
/* renamed from: com.google.firebase.remoteconfig.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/internal/a.class */
public class C1853a {

    /* renamed from: j */
    public static final long f7008j = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: k */
    public static final int[] f7009k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: a */
    public final AbstractC4871e f7010a;

    /* renamed from: b */
    public final AbstractC4739b<AbstractC4857a> f7011b;

    /* renamed from: c */
    public final Executor f7012c;

    /* renamed from: d */
    public final Clock f7013d;

    /* renamed from: e */
    public final Random f7014e;

    /* renamed from: f */
    public final C4218d f7015f;

    /* renamed from: g */
    public final ConfigFetchHttpClient f7016g;

    /* renamed from: h */
    public final C1855b f7017h;

    /* renamed from: i */
    public final Map<String, String> f7018i;

    /* renamed from: com.google.firebase.remoteconfig.internal.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/internal/a$a.class */
    public static class C1854a {

        /* renamed from: a */
        public final int f7019a;

        /* renamed from: b */
        public final C4221e f7020b;

        /* renamed from: c */
        public final String f7021c;

        public C1854a(Date date, int i, C4221e c4221e, String str) {
            this.f7019a = i;
            this.f7020b = c4221e;
            this.f7021c = str;
        }
    }

    public C1853a(AbstractC4871e abstractC4871e, AbstractC4739b<AbstractC4857a> abstractC4739b, Executor executor, Clock clock, Random random, C4218d c4218d, ConfigFetchHttpClient configFetchHttpClient, C1855b c1855b, Map<String, String> map) {
        this.f7010a = abstractC4871e;
        this.f7011b = abstractC4739b;
        this.f7012c = executor;
        this.f7013d = clock;
        this.f7014e = random;
        this.f7015f = c4218d;
        this.f7016g = configFetchHttpClient;
        this.f7017h = c1855b;
        this.f7018i = map;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x012a, code lost:
        if (r0 == 429) goto L32;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.firebase.remoteconfig.internal.C1853a.C1854a m4455a(java.lang.String r10, java.lang.String r11, java.util.Date r12) throws com.google.firebase.remoteconfig.FirebaseRemoteConfigException {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.C1853a.m4455a(java.lang.String, java.lang.String, java.util.Date):com.google.firebase.remoteconfig.internal.a$a");
    }

    /* renamed from: b */
    public final Map<String, String> m4454b() {
        HashMap hashMap = new HashMap();
        AbstractC4857a abstractC4857a = this.f7011b.get();
        if (abstractC4857a == null) {
            return hashMap;
        }
        for (Map.Entry<String, Object> entry : abstractC4857a.mo346b(false).entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }
}
