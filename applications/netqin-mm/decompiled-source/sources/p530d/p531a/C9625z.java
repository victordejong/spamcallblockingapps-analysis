package p530d.p531a;

import java.util.concurrent.atomic.AtomicLong;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.z */
/* loaded from: classes2-dex2jar.jar:d/a/z.class */
public final class C9625z {

    /* renamed from: d */
    public static final AtomicLong f36700d = new AtomicLong();

    /* renamed from: a */
    public final String f36701a;

    /* renamed from: b */
    public final String f36702b;

    /* renamed from: c */
    public final long f36703c;

    public C9625z(String str, String str2, long j) {
        C4933n.m24794a(str, "typeName");
        C4933n.m24790a(!str.isEmpty(), "empty type");
        this.f36701a = str;
        this.f36702b = str2;
        this.f36703c = j;
    }

    /* renamed from: a */
    public static C9625z m2159a(Class<?> cls, String str) {
        return m2158a(m2160a(cls), str);
    }

    /* renamed from: a */
    public static C9625z m2158a(String str, String str2) {
        return new C9625z(str, str2, m2156c());
    }

    /* renamed from: a */
    public static String m2160a(Class<?> cls) {
        C4933n.m24794a(cls, "type");
        String simpleName = cls.getSimpleName();
        return !simpleName.isEmpty() ? simpleName : cls.getName().substring(cls.getPackage().getName().length() + 1);
    }

    /* renamed from: c */
    public static long m2156c() {
        return f36700d.incrementAndGet();
    }

    /* renamed from: a */
    public long m2161a() {
        return this.f36703c;
    }

    /* renamed from: b */
    public String m2157b() {
        return this.f36701a + "<" + this.f36703c + ">";
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(m2157b());
        if (this.f36702b != null) {
            sb.append(": (");
            sb.append(this.f36702b);
            sb.append(')');
        }
        return sb.toString();
    }
}
