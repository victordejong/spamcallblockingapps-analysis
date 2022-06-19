package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;
/* renamed from: com.google.firebase.remoteconfig.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/internal/b.class */
public class C1855b {

    /* renamed from: d */
    public static final Date f7022d = new Date(-1);

    /* renamed from: e */
    public static final Date f7023e = new Date(-1);

    /* renamed from: a */
    public final SharedPreferences f7024a;

    /* renamed from: b */
    public final Object f7025b = new Object();

    /* renamed from: c */
    public final Object f7026c = new Object();

    /* renamed from: com.google.firebase.remoteconfig.internal.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/internal/b$a.class */
    public static class C1856a {

        /* renamed from: a */
        public int f7027a;

        /* renamed from: b */
        public Date f7028b;

        public C1856a(int i, Date date) {
            this.f7027a = i;
            this.f7028b = date;
        }
    }

    public C1855b(SharedPreferences sharedPreferences) {
        this.f7024a = sharedPreferences;
    }

    /* renamed from: a */
    public C1856a m4453a() {
        C1856a c1856a;
        synchronized (this.f7026c) {
            c1856a = new C1856a(this.f7024a.getInt("num_failed_fetches", 0), new Date(this.f7024a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return c1856a;
    }

    /* renamed from: b */
    public void m4452b(int i, Date date) {
        synchronized (this.f7026c) {
            this.f7024a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }
}
