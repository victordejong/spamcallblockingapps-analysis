package p131c.p161d.p170b.p173b.p176i;

import p131c.p161d.p170b.p173b.AbstractC2494c;
import p131c.p161d.p170b.p173b.AbstractC2495d;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p176i.AbstractC2569l;
/* renamed from: c.d.b.b.i.b */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/b.class */
public final class C2549b extends AbstractC2569l {

    /* renamed from: a */
    public final AbstractC2571m f9584a;

    /* renamed from: b */
    public final String f9585b;

    /* renamed from: c */
    public final AbstractC2494c<?> f9586c;

    /* renamed from: d */
    public final AbstractC2495d<?, byte[]> f9587d;

    /* renamed from: e */
    public final C2493b f9588e;

    /* renamed from: c.d.b.b.i.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/b$b.class */
    public static final class C2551b extends AbstractC2569l.AbstractC2570a {

        /* renamed from: a */
        public AbstractC2571m f9589a;

        /* renamed from: b */
        public String f9590b;

        /* renamed from: c */
        public AbstractC2494c<?> f9591c;

        /* renamed from: d */
        public AbstractC2495d<?, byte[]> f9592d;

        /* renamed from: e */
        public C2493b f9593e;

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l.AbstractC2570a
        /* renamed from: a */
        public AbstractC2569l.AbstractC2570a mo29511a(C2493b bVar) {
            if (bVar != null) {
                this.f9593e = bVar;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l.AbstractC2570a
        /* renamed from: a */
        public AbstractC2569l.AbstractC2570a mo29510a(AbstractC2494c<?> cVar) {
            if (cVar != null) {
                this.f9591c = cVar;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l.AbstractC2570a
        /* renamed from: a */
        public AbstractC2569l.AbstractC2570a mo29509a(AbstractC2495d<?, byte[]> dVar) {
            if (dVar != null) {
                this.f9592d = dVar;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l.AbstractC2570a
        /* renamed from: a */
        public AbstractC2569l.AbstractC2570a mo29508a(AbstractC2571m mVar) {
            if (mVar != null) {
                this.f9589a = mVar;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l.AbstractC2570a
        /* renamed from: a */
        public AbstractC2569l.AbstractC2570a mo29507a(String str) {
            if (str != null) {
                this.f9590b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l.AbstractC2570a
        /* renamed from: a */
        public AbstractC2569l mo29512a() {
            String str = "";
            if (this.f9589a == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.f9590b == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.f9591c == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.f9592d == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.f9593e == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new C2549b(this.f9589a, this.f9590b, this.f9591c, this.f9592d, this.f9593e);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }
    }

    public C2549b(AbstractC2571m mVar, String str, AbstractC2494c<?> cVar, AbstractC2495d<?, byte[]> dVar, C2493b bVar) {
        this.f9584a = mVar;
        this.f9585b = str;
        this.f9586c = cVar;
        this.f9587d = dVar;
        this.f9588e = bVar;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l
    /* renamed from: a */
    public C2493b mo29519a() {
        return this.f9588e;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l
    /* renamed from: b */
    public AbstractC2494c<?> mo29518b() {
        return this.f9586c;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l
    /* renamed from: d */
    public AbstractC2495d<?, byte[]> mo29516d() {
        return this.f9587d;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l
    /* renamed from: e */
    public AbstractC2571m mo29515e() {
        return this.f9584a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2569l)) {
            return false;
        }
        AbstractC2569l lVar = (AbstractC2569l) obj;
        if (!this.f9584a.equals(lVar.mo29515e()) || !this.f9585b.equals(lVar.mo29514f()) || !this.f9586c.equals(lVar.mo29518b()) || !this.f9587d.equals(lVar.mo29516d()) || !this.f9588e.equals(lVar.mo29519a())) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2569l
    /* renamed from: f */
    public String mo29514f() {
        return this.f9585b;
    }

    public int hashCode() {
        return ((((((((this.f9584a.hashCode() ^ 1000003) * 1000003) ^ this.f9585b.hashCode()) * 1000003) ^ this.f9586c.hashCode()) * 1000003) ^ this.f9587d.hashCode()) * 1000003) ^ this.f9588e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f9584a + ", transportName=" + this.f9585b + ", event=" + this.f9586c + ", transformer=" + this.f9587d + ", encoding=" + this.f9588e + "}";
    }
}
