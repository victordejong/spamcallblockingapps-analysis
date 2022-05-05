package p081h.p203i.p325c.p327b0.p328p;

import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.Date;
import p081h.p203i.p325c.p327b0.C9405k;
/* renamed from: h.i.c.b0.p.n */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/n.class */
public class C9430n {

    /* renamed from: d */
    public static final Date f21524d = new Date(-1);
    @VisibleForTesting

    /* renamed from: e */
    public static final Date f21525e = new Date(-1);

    /* renamed from: a */
    public final SharedPreferences f21526a;

    /* renamed from: b */
    public final Object f21527b = new Object();

    /* renamed from: c */
    public final Object f21528c = new Object();

    /* renamed from: h.i.c.b0.p.n$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/n$a.class */
    public static class C9431a {

        /* renamed from: a */
        public int f21529a;

        /* renamed from: b */
        public Date f21530b;

        public C9431a(int i, Date date) {
            this.f21529a = i;
            this.f21530b = date;
        }

        /* renamed from: a */
        public Date m15192a() {
            return this.f21530b;
        }

        /* renamed from: b */
        public int m15191b() {
            return this.f21529a;
        }
    }

    public C9430n(SharedPreferences sharedPreferences) {
        this.f21526a = sharedPreferences;
    }

    /* renamed from: a */
    public C9431a m15203a() {
        C9431a aVar;
        synchronized (this.f21528c) {
            aVar = new C9431a(this.f21526a.getInt("num_failed_fetches", 0), new Date(this.f21526a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    /* renamed from: a */
    public void m15202a(int i, Date date) {
        synchronized (this.f21528c) {
            this.f21526a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public void m15201a(C9405k kVar) {
        synchronized (this.f21527b) {
            this.f21526a.edit().putLong("fetch_timeout_in_seconds", kVar.m15294a()).putLong("minimum_fetch_interval_in_seconds", kVar.m15293b()).commit();
        }
    }

    /* renamed from: a */
    public void m15200a(String str) {
        synchronized (this.f21527b) {
            this.f21526a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* renamed from: a */
    public void m15199a(Date date) {
        synchronized (this.f21527b) {
            this.f21526a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: b */
    public long m15198b() {
        return this.f21526a.getLong("fetch_timeout_in_seconds", 60L);
    }

    @Nullable
    /* renamed from: c */
    public String m15197c() {
        return this.f21526a.getString("last_fetch_etag", null);
    }

    /* renamed from: d */
    public Date m15196d() {
        return new Date(this.f21526a.getLong("last_fetch_time_in_millis", -1L));
    }

    /* renamed from: e */
    public void m15195e() {
        m15202a(0, f21525e);
    }

    /* renamed from: f */
    public void m15194f() {
        synchronized (this.f21527b) {
            this.f21526a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* renamed from: g */
    public void m15193g() {
        synchronized (this.f21527b) {
            this.f21526a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
