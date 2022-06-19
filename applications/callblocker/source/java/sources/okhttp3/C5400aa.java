package okhttp3;

import javax.annotation.Nullable;
import okhttp3.C5539s;
import okhttp3.internal.p193b.C5442f;
/* renamed from: okhttp3.aa */
/* loaded from: classes-dex2jar.jar:okhttp3/aa.class */
public final class C5400aa {

    /* renamed from: a */
    final C5541t f22476a;

    /* renamed from: b */
    final String f22477b;

    /* renamed from: c */
    final C5539s f22478c;
    @Nullable

    /* renamed from: d */
    final AbstractC5402ab f22479d;

    /* renamed from: e */
    final Object f22480e;

    /* renamed from: f */
    private volatile C5413d f22481f;

    /* renamed from: okhttp3.aa$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/aa$a.class */
    public static class C5401a {

        /* renamed from: a */
        C5541t f22482a;

        /* renamed from: b */
        String f22483b;

        /* renamed from: c */
        C5539s.C5540a f22484c;

        /* renamed from: d */
        AbstractC5402ab f22485d;

        /* renamed from: e */
        Object f22486e;

        public C5401a() {
            this.f22483b = "GET";
            this.f22484c = new C5539s.C5540a();
        }

        C5401a(C5400aa c5400aa) {
            this.f22482a = c5400aa.f22476a;
            this.f22483b = c5400aa.f22477b;
            this.f22485d = c5400aa.f22479d;
            this.f22486e = c5400aa.f22480e;
            this.f22484c = c5400aa.f22478c.m279b();
        }

        /* renamed from: a */
        public C5401a m818a(String str) {
            this.f22484c.m273b(str);
            return this;
        }

        /* renamed from: a */
        public C5401a m817a(String str, String str2) {
            this.f22484c.m271c(str, str2);
            return this;
        }

        /* renamed from: a */
        public C5401a m816a(String str, @Nullable AbstractC5402ab abstractC5402ab) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (abstractC5402ab != null && !C5442f.m699c(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (abstractC5402ab == null && C5442f.m700b(str)) {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
            this.f22483b = str;
            this.f22485d = abstractC5402ab;
            return this;
        }

        /* renamed from: a */
        public C5401a m815a(C5539s c5539s) {
            this.f22484c = c5539s.m279b();
            return this;
        }

        /* renamed from: a */
        public C5401a m814a(C5541t c5541t) {
            if (c5541t == null) {
                throw new NullPointerException("url == null");
            }
            this.f22482a = c5541t;
            return this;
        }

        /* renamed from: a */
        public C5400aa m819a() {
            if (this.f22482a == null) {
                throw new IllegalStateException("url == null");
            }
            return new C5400aa(this);
        }

        /* renamed from: b */
        public C5401a m813b(String str, String str2) {
            this.f22484c.m274a(str, str2);
            return this;
        }
    }

    C5400aa(C5401a c5401a) {
        this.f22476a = c5401a.f22482a;
        this.f22477b = c5401a.f22483b;
        this.f22478c = c5401a.f22484c.m276a();
        this.f22479d = c5401a.f22485d;
        this.f22480e = c5401a.f22486e != null ? c5401a.f22486e : this;
    }

    @Nullable
    /* renamed from: a */
    public String m826a(String str) {
        return this.f22478c.m282a(str);
    }

    /* renamed from: a */
    public C5541t m827a() {
        return this.f22476a;
    }

    /* renamed from: b */
    public String m825b() {
        return this.f22477b;
    }

    /* renamed from: c */
    public C5539s m824c() {
        return this.f22478c;
    }

    @Nullable
    /* renamed from: d */
    public AbstractC5402ab m823d() {
        return this.f22479d;
    }

    /* renamed from: e */
    public C5401a m822e() {
        return new C5401a(this);
    }

    /* renamed from: f */
    public C5413d m821f() {
        C5413d c5413d = this.f22481f;
        if (c5413d == null) {
            c5413d = C5413d.m769a(this.f22478c);
            this.f22481f = c5413d;
        }
        return c5413d;
    }

    /* renamed from: g */
    public boolean m820g() {
        return this.f22476a.m254c();
    }

    public String toString() {
        return "Request{method=" + this.f22477b + ", url=" + this.f22476a + ", tag=" + (this.f22480e != this ? this.f22480e : null) + '}';
    }
}
