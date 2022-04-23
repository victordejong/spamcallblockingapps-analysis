package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final Date f32642a = new Date(-1);

    /* renamed from: b  reason: collision with root package name */
    static final Date f32643b = new Date(-1);

    /* renamed from: c  reason: collision with root package name */
    final SharedPreferences f32644c;

    /* renamed from: d  reason: collision with root package name */
    final Object f32645d = new Object();
    private final Object e = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f32646a;

        /* renamed from: b  reason: collision with root package name */
        Date f32647b;

        a(int i, Date date) {
            this.f32646a = i;
            this.f32647b = date;
        }
    }

    public n(SharedPreferences sharedPreferences) {
        this.f32644c = sharedPreferences;
    }

    public final long a() {
        return this.f32644c.getLong("fetch_timeout_in_seconds", 60L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, Date date) {
        synchronized (this.e) {
            this.f32644c.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        synchronized (this.f32645d) {
            this.f32644c.edit().putString("last_fetch_etag", str).apply();
        }
    }

    public final long b() {
        return this.f32644c.getLong("minimum_fetch_interval_in_seconds", g.f32618a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a c() {
        a aVar;
        synchronized (this.e) {
            aVar = new a(this.f32644c.getInt("num_failed_fetches", 0), new Date(this.f32644c.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }
}
