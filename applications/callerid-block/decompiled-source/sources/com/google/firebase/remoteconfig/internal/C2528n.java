package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import com.google.firebase.remoteconfig.AbstractC2504f;
import com.google.firebase.remoteconfig.C2505g;
import com.google.firebase.remoteconfig.internal.C2530p;
import java.util.Date;
/* renamed from: com.google.firebase.remoteconfig.internal.n */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/n.class */
public class C2528n {

    /* renamed from: d */
    static final Date f10842d = new Date(-1);

    /* renamed from: e */
    static final Date f10843e = new Date(-1);

    /* renamed from: a */
    private final SharedPreferences f10844a;

    /* renamed from: b */
    private final Object f10845b = new Object();

    /* renamed from: c */
    private final Object f10846c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.remoteconfig.internal.n$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/n$a.class */
    public static class C2529a {

        /* renamed from: a */
        private int f10847a;

        /* renamed from: b */
        private Date f10848b;

        C2529a(int i, Date date) {
            this.f10847a = i;
            this.f10848b = date;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public Date m3194a() {
            return this.f10848b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public int m3193b() {
            return this.f10847a;
        }
    }

    public C2528n(SharedPreferences sharedPreferences) {
        this.f10844a = sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2529a m3206a() {
        C2529a aVar;
        synchronized (this.f10846c) {
            aVar = new C2529a(this.f10844a.getInt("num_failed_fetches", 0), new Date(this.f10844a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    /* renamed from: b */
    public long m3205b() {
        return this.f10844a.getLong("fetch_timeout_in_seconds", 60L);
    }

    /* renamed from: c */
    public AbstractC2504f m3204c() {
        C2530p a;
        synchronized (this.f10845b) {
            long j = this.f10844a.getLong("last_fetch_time_in_millis", -1L);
            int i = this.f10844a.getInt("last_fetch_status", 0);
            C2505g.C2507b bVar = new C2505g.C2507b();
            bVar.m3294d(this.f10844a.getLong("fetch_timeout_in_seconds", 60L));
            bVar.m3293e(this.f10844a.getLong("minimum_fetch_interval_in_seconds", C2524k.f10819j));
            C2505g c = bVar.m3295c();
            C2530p.C2532b b = C2530p.m3191b();
            b.m3188c(i);
            b.m3187d(j);
            b.m3189b(c);
            a = b.m3190a();
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m3203d() {
        return this.f10844a.getString("last_fetch_etag", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public Date m3202e() {
        return new Date(this.f10844a.getLong("last_fetch_time_in_millis", -1L));
    }

    /* renamed from: f */
    public long m3201f() {
        return this.f10844a.getLong("minimum_fetch_interval_in_seconds", C2524k.f10819j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m3200g() {
        m3199h(0, f10843e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m3199h(int i, Date date) {
        synchronized (this.f10846c) {
            this.f10844a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m3198i(String str) {
        synchronized (this.f10845b) {
            this.f10844a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m3197j() {
        synchronized (this.f10845b) {
            this.f10844a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m3196k(Date date) {
        synchronized (this.f10845b) {
            this.f10844a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m3195l() {
        synchronized (this.f10845b) {
            this.f10844a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
