package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4025f;
import java.net.URL;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.b.y */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/y.class */
public final class C4146y {

    /* renamed from: a */
    final C4134s f15214a;

    /* renamed from: b */
    final String f15215b;

    /* renamed from: c */
    final C4132r f15216c;

    /* renamed from: d */
    final AbstractC4148z f15217d;

    /* renamed from: e */
    final Object f15218e;

    /* renamed from: f */
    private volatile C4107d f15219f;

    /* renamed from: com.bytedance.sdk.a.b.y$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/y$a.class */
    public static class C4147a {

        /* renamed from: a */
        C4134s f15220a;

        /* renamed from: b */
        String f15221b;

        /* renamed from: c */
        C4132r.C4133a f15222c;

        /* renamed from: d */
        AbstractC4148z f15223d;

        /* renamed from: e */
        Object f15224e;

        public C4147a() {
            this.f15221b = "GET";
            this.f15222c = new C4132r.C4133a();
        }

        C4147a(C4146y c4146y) {
            this.f15220a = c4146y.f15214a;
            this.f15221b = c4146y.f15215b;
            this.f15223d = c4146y.f15217d;
            this.f15224e = c4146y.f15218e;
            this.f15222c = c4146y.f15216c.m36464c();
        }

        /* renamed from: a */
        public C4147a m36333a() {
            return m36328a("GET", (AbstractC4148z) null);
        }

        /* renamed from: a */
        public C4147a m36332a(C4132r c4132r) {
            this.f15222c = c4132r.m36464c();
            return this;
        }

        /* renamed from: a */
        public C4147a m36331a(C4134s c4134s) {
            Objects.requireNonNull(c4134s, "url == null");
            this.f15220a = c4134s;
            return this;
        }

        /* renamed from: a */
        public C4147a m36330a(AbstractC4148z abstractC4148z) {
            return m36328a("POST", abstractC4148z);
        }

        /* renamed from: a */
        public C4147a m36329a(String str) {
            String str2;
            Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str2 = "http:" + str.substring(3);
            } else {
                str2 = str;
                if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str2 = "https:" + str.substring(4);
                }
            }
            C4134s m36436e = C4134s.m36436e(str2);
            if (m36436e != null) {
                return m36331a(m36436e);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str2)));
        }

        /* renamed from: a */
        public C4147a m36328a(String str, AbstractC4148z abstractC4148z) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() != 0) {
                if (abstractC4148z != null && !C4025f.m36872c(str)) {
                    throw new IllegalArgumentException("method " + str + " must not have a request body.");
                } else if (abstractC4148z != null || !C4025f.m36873b(str)) {
                    this.f15221b = str;
                    this.f15223d = abstractC4148z;
                    return this;
                } else {
                    throw new IllegalArgumentException("method " + str + " must have a request body.");
                }
            }
            throw new IllegalArgumentException("method.length() == 0");
        }

        /* renamed from: a */
        public C4147a m36327a(String str, String str2) {
            this.f15222c.m36458c(str, str2);
            return this;
        }

        /* renamed from: a */
        public C4147a m36326a(URL url) {
            Objects.requireNonNull(url, "url == null");
            C4134s m36446a = C4134s.m36446a(url);
            if (m36446a != null) {
                return m36331a(m36446a);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(url)));
        }

        /* renamed from: b */
        public C4147a m36325b() {
            return m36328a("HEAD", (AbstractC4148z) null);
        }

        /* renamed from: b */
        public C4147a m36324b(AbstractC4148z abstractC4148z) {
            return m36328a("DELETE", abstractC4148z);
        }

        /* renamed from: b */
        public C4147a m36323b(String str) {
            this.f15222c.m36460b(str);
            return this;
        }

        /* renamed from: b */
        public C4147a m36322b(String str, String str2) {
            this.f15222c.m36461a(str, str2);
            return this;
        }

        /* renamed from: c */
        public C4147a m36321c() {
            return m36324b(C4015c.f14577d);
        }

        /* renamed from: c */
        public C4147a m36320c(AbstractC4148z abstractC4148z) {
            return m36328a("PUT", abstractC4148z);
        }

        /* renamed from: d */
        public C4147a m36318d(AbstractC4148z abstractC4148z) {
            return m36328a("PATCH", abstractC4148z);
        }

        /* renamed from: d */
        public C4146y m36319d() {
            if (this.f15220a != null) {
                return new C4146y(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    C4146y(C4147a c4147a) {
        this.f15214a = c4147a.f15220a;
        this.f15215b = c4147a.f15221b;
        this.f15216c = c4147a.f15222c.m36463a();
        this.f15217d = c4147a.f15223d;
        this.f15218e = c4147a.f15224e != null ? c4147a.f15224e : this;
    }

    /* renamed from: a */
    public final C4134s m36341a() {
        return this.f15214a;
    }

    /* renamed from: a */
    public final String m36340a(String str) {
        return this.f15216c.m36469a(str);
    }

    /* renamed from: b */
    public final String m36339b() {
        return this.f15215b;
    }

    /* renamed from: c */
    public final C4132r m36338c() {
        return this.f15216c;
    }

    /* renamed from: d */
    public final AbstractC4148z m36337d() {
        return this.f15217d;
    }

    /* renamed from: e */
    public final C4147a m36336e() {
        return new C4147a(this);
    }

    /* renamed from: f */
    public final C4107d m36335f() {
        C4107d c4107d = this.f15219f;
        if (c4107d != null) {
            return c4107d;
        }
        C4107d m36567a = C4107d.m36567a(this.f15216c);
        this.f15219f = m36567a;
        return m36567a;
    }

    /* renamed from: g */
    public final boolean m36334g() {
        return this.f15214a.m36441c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.f15215b);
        sb.append(", url=");
        sb.append(this.f15214a);
        sb.append(", tag=");
        Object obj = this.f15218e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
