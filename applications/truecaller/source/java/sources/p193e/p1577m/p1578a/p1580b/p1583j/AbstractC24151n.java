package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.HashMap;
import java.util.Map;
import p193e.p1577m.p1578a.p1580b.p1583j.C24141i;
/* renamed from: e.m.a.b.j.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/n.class */
public abstract class AbstractC24151n {

    /* renamed from: e.m.a.b.j.n$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/n$a.class */
    public static abstract class AbstractC24152a {
        /* renamed from: a */
        public final AbstractC24152a m5535a(String str, String str2) {
            mo5533c().put(str, str2);
            return this;
        }

        /* renamed from: b */
        public abstract AbstractC24151n mo5534b();

        /* renamed from: c */
        public abstract Map<String, String> mo5533c();

        /* renamed from: d */
        public abstract AbstractC24152a mo5532d(C24150m c24150m);

        /* renamed from: e */
        public abstract AbstractC24152a mo5531e(long j);

        /* renamed from: f */
        public abstract AbstractC24152a mo5530f(String str);

        /* renamed from: g */
        public abstract AbstractC24152a mo5529g(long j);
    }

    /* renamed from: a */
    public static AbstractC24152a m5545a() {
        C24141i.C24143b c24143b = new C24141i.C24143b();
        c24143b.f66859f = new HashMap();
        return c24143b;
    }

    /* renamed from: b */
    public final String m5544b(String str) {
        String str2 = mo5543c().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: c */
    public abstract Map<String, String> mo5543c();

    /* renamed from: d */
    public abstract Integer mo5542d();

    /* renamed from: e */
    public abstract C24150m mo5541e();

    /* renamed from: f */
    public abstract long mo5540f();

    /* renamed from: g */
    public final int m5539g(String str) {
        String str2 = mo5543c().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    /* renamed from: h */
    public abstract String mo5538h();

    /* renamed from: i */
    public abstract long mo5537i();

    /* renamed from: j */
    public AbstractC24152a m5536j() {
        C24141i.C24143b c24143b = new C24141i.C24143b();
        c24143b.mo5530f(mo5538h());
        c24143b.f66855b = mo5542d();
        c24143b.mo5532d(mo5541e());
        c24143b.mo5531e(mo5540f());
        c24143b.mo5529g(mo5537i());
        c24143b.f66859f = new HashMap(mo5543c());
        return c24143b;
    }
}
