package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;
/* renamed from: com.google.firebase.remoteconfig.internal.n */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/n.class */
public final class C15929n {

    /* renamed from: a */
    static final Date f56553a = new Date(-1);

    /* renamed from: b */
    static final Date f56554b = new Date(-1);

    /* renamed from: c */
    final SharedPreferences f56555c;

    /* renamed from: d */
    final Object f56556d = new Object();

    /* renamed from: e */
    private final Object f56557e = new Object();

    /* renamed from: com.google.firebase.remoteconfig.internal.n$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/n$a.class */
    public static final class C15930a {

        /* renamed from: a */
        int f56558a;

        /* renamed from: b */
        Date f56559b;

        C15930a(int i, Date date) {
            this.f56558a = i;
            this.f56559b = date;
        }
    }

    public C15929n(SharedPreferences sharedPreferences) {
        this.f56555c = sharedPreferences;
    }

    /* renamed from: a */
    public final long m8045a() {
        return this.f56555c.getLong("fetch_timeout_in_seconds", 60L);
    }

    /* renamed from: a */
    public final void m8044a(int i, Date date) {
        synchronized (this.f56557e) {
            this.f56555c.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: a */
    public final void m8043a(String str) {
        synchronized (this.f56556d) {
            this.f56555c.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* renamed from: b */
    public final long m8042b() {
        return this.f56555c.getLong("minimum_fetch_interval_in_seconds", C15921g.f56519a);
    }

    /* renamed from: c */
    public final C15930a m8041c() {
        C15930a c15930a;
        synchronized (this.f56557e) {
            c15930a = new C15930a(this.f56555c.getInt("num_failed_fetches", 0), new Date(this.f56555c.getLong("backoff_end_time_in_millis", -1L)));
        }
        return c15930a;
    }
}
