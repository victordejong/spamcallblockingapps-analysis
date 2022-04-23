package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.a.c.f;
import com.bytedance.sdk.a.b.r;
import java.net.URL;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    final s f8167a;

    /* renamed from: b  reason: collision with root package name */
    final String f8168b;

    /* renamed from: c  reason: collision with root package name */
    final r f8169c;

    /* renamed from: d  reason: collision with root package name */
    final z f8170d;
    final Object e;
    private volatile d f;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/y$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        s f8171a;

        /* renamed from: b  reason: collision with root package name */
        String f8172b;

        /* renamed from: c  reason: collision with root package name */
        r.a f8173c;

        /* renamed from: d  reason: collision with root package name */
        z f8174d;
        Object e;

        public a() {
            this.f8172b = "GET";
            this.f8173c = new r.a();
        }

        a(y yVar) {
            this.f8171a = yVar.f8167a;
            this.f8172b = yVar.f8168b;
            this.f8174d = yVar.f8170d;
            this.e = yVar.e;
            this.f8173c = yVar.f8169c.c();
        }

        public a a() {
            return a("GET", (z) null);
        }

        public a a(r rVar) {
            this.f8173c = rVar.c();
            return this;
        }

        public a a(s sVar) {
            Objects.requireNonNull(sVar, "url == null");
            this.f8171a = sVar;
            return this;
        }

        public a a(z zVar) {
            return a("POST", zVar);
        }

        public a a(String str) {
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
            s e = s.e(str2);
            if (e != null) {
                return a(e);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str2)));
        }

        public a a(String str, z zVar) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            } else if (zVar != null && !f.c(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (zVar != null || !f.b(str)) {
                this.f8172b = str;
                this.f8174d = zVar;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
        }

        public a a(String str, String str2) {
            this.f8173c.c(str, str2);
            return this;
        }

        public a a(URL url) {
            Objects.requireNonNull(url, "url == null");
            s a2 = s.a(url);
            if (a2 != null) {
                return a(a2);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(url)));
        }

        public a b() {
            return a("HEAD", (z) null);
        }

        public a b(z zVar) {
            return a("DELETE", zVar);
        }

        public a b(String str) {
            this.f8173c.b(str);
            return this;
        }

        public a b(String str, String str2) {
            this.f8173c.a(str, str2);
            return this;
        }

        public a c() {
            return b(c.f7881d);
        }

        public a c(z zVar) {
            return a("PUT", zVar);
        }

        public a d(z zVar) {
            return a("PATCH", zVar);
        }

        public y d() {
            if (this.f8171a != null) {
                return new y(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    y(a aVar) {
        this.f8167a = aVar.f8171a;
        this.f8168b = aVar.f8172b;
        this.f8169c = aVar.f8173c.a();
        this.f8170d = aVar.f8174d;
        this.e = aVar.e != null ? aVar.e : this;
    }

    public final s a() {
        return this.f8167a;
    }

    public final String a(String str) {
        return this.f8169c.a(str);
    }

    public final String b() {
        return this.f8168b;
    }

    public final r c() {
        return this.f8169c;
    }

    public final z d() {
        return this.f8170d;
    }

    public final a e() {
        return new a(this);
    }

    public final d f() {
        d dVar = this.f;
        if (dVar != null) {
            return dVar;
        }
        d a2 = d.a(this.f8169c);
        this.f = a2;
        return a2;
    }

    public final boolean g() {
        return this.f8167a.c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.f8168b);
        sb.append(", url=");
        sb.append(this.f8167a);
        sb.append(", tag=");
        Object obj = this.e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
