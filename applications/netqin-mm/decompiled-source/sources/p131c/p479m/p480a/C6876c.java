package p131c.p479m.p480a;

import com.squareup.okhttp.HttpUrl;
import p131c.p479m.p480a.C6873b;
/* renamed from: c.m.a.c */
/* loaded from: classes2-dex2jar.jar:c/m/a/c.class */
public final class C6876c {

    /* renamed from: a */
    public final HttpUrl f21065a;

    /* renamed from: b */
    public final String f21066b;

    /* renamed from: c */
    public final C6873b f21067c;

    /* renamed from: d */
    public final Object f21068d;

    /* renamed from: c.m.a.c$b */
    /* loaded from: classes2-dex2jar.jar:c/m/a/c$b.class */
    public static class C6878b {

        /* renamed from: a */
        public HttpUrl f21069a;

        /* renamed from: b */
        public String f21070b = "GET";

        /* renamed from: c */
        public C6873b.C6875b f21071c = new C6873b.C6875b();

        /* renamed from: d */
        public AbstractC6879d f21072d;

        /* renamed from: e */
        public Object f21073e;

        /* renamed from: a */
        public C6878b m19490a(HttpUrl httpUrl) {
            if (httpUrl != null) {
                this.f21069a = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }

        /* renamed from: a */
        public C6878b m19489a(String str, String str2) {
            this.f21071c.m19495c(str, str2);
            return this;
        }

        /* renamed from: a */
        public C6876c m19492a() {
            if (this.f21069a != null) {
                return new C6876c(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public C6876c(C6878b bVar) {
        this.f21065a = bVar.f21069a;
        this.f21066b = bVar.f21070b;
        this.f21067c = bVar.f21071c.m19500a();
        AbstractC6879d unused = bVar.f21072d;
        this.f21068d = bVar.f21073e != null ? bVar.f21073e : this;
    }

    /* renamed from: a */
    public C6873b m19494a() {
        return this.f21067c;
    }

    /* renamed from: b */
    public HttpUrl m19493b() {
        return this.f21065a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f21066b);
        sb.append(", url=");
        sb.append(this.f21065a);
        sb.append(", tag=");
        Object obj = this.f21068d;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
