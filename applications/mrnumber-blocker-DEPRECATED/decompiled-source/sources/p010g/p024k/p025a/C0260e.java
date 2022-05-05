package p010g.p024k.p025a;

import p010g.p024k.p025a.C0253b;
/* renamed from: g.k.a.e */
/* loaded from: classes2-dex2jar.jar:g/k/a/e.class */
public final class C0260e {

    /* renamed from: a */
    private final C0256c f527a;

    /* renamed from: b */
    private final String f528b;

    /* renamed from: c */
    private final C0253b f529c;

    /* renamed from: d */
    private final Object f530d;

    /* renamed from: g.k.a.e$b */
    /* loaded from: classes2-dex2jar.jar:g/k/a/e$b.class */
    public static class C0262b {

        /* renamed from: a */
        private C0256c f531a;

        /* renamed from: b */
        private String f532b = "GET";

        /* renamed from: c */
        private C0253b.C0255b f533c = new C0253b.C0255b();

        /* renamed from: d */
        private AbstractC0263f f534d;

        /* renamed from: e */
        private Object f535e;

        /* renamed from: f */
        public C0260e m521f() {
            if (this.f531a != null) {
                return new C0260e(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: g */
        public C0262b m520g(String str, String str2) {
            this.f533c.m550f(str, str2);
            return this;
        }

        /* renamed from: h */
        public C0262b m519h(C0256c cVar) {
            if (cVar != null) {
                this.f531a = cVar;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }
    }

    private C0260e(C0262b bVar) {
        this.f527a = bVar.f531a;
        this.f528b = bVar.f532b;
        this.f529c = bVar.f533c.m553c();
        AbstractC0263f unused = bVar.f534d;
        this.f530d = bVar.f535e != null ? bVar.f535e : this;
    }

    /* renamed from: a */
    public C0253b m528a() {
        return this.f529c;
    }

    /* renamed from: b */
    public C0256c m527b() {
        return this.f527a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f528b);
        sb.append(", url=");
        sb.append(this.f527a);
        sb.append(", tag=");
        Object obj = this.f530d;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
