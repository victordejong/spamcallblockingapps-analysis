package p131c.p135b.p136a.p148e.p153y;
/* renamed from: c.b.a.e.y.k */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/k.class */
public class C2418k {

    /* renamed from: a */
    public final StringBuilder f9330a = new StringBuilder();

    /* renamed from: a */
    public C2418k m29878a() {
        this.f9330a.append("\n========================================");
        return this;
    }

    /* renamed from: a */
    public C2418k m29877a(String str) {
        StringBuilder sb = this.f9330a;
        sb.append("\n");
        sb.append(str);
        return this;
    }

    /* renamed from: a */
    public C2418k m29876a(String str, Object obj) {
        m29875a(str, obj, "");
        return this;
    }

    /* renamed from: a */
    public C2418k m29875a(String str, Object obj, String str2) {
        StringBuilder sb = this.f9330a;
        sb.append("\n");
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append(str2);
        return this;
    }

    public String toString() {
        return this.f9330a.toString();
    }
}
