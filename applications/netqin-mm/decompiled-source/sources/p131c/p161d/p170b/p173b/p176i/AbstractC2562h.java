package p131c.p161d.p170b.p173b.p176i;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p173b.p176i.C2538a;
/* renamed from: c.d.b.b.i.h */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/h.class */
public abstract class AbstractC2562h {

    /* renamed from: c.d.b.b.i.h$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/h$a.class */
    public static abstract class AbstractC2563a {
        /* renamed from: a */
        public abstract AbstractC2563a mo29533a(long j);

        /* renamed from: a */
        public abstract AbstractC2563a mo29532a(C2561g gVar);

        /* renamed from: a */
        public abstract AbstractC2563a mo29531a(Integer num);

        /* renamed from: a */
        public abstract AbstractC2563a mo29530a(String str);

        /* renamed from: a */
        public final AbstractC2563a m29529a(String str, int i) {
            mo29525b().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: a */
        public final AbstractC2563a m29528a(String str, long j) {
            mo29525b().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: a */
        public final AbstractC2563a m29527a(String str, String str2) {
            mo29525b().put(str, str2);
            return this;
        }

        /* renamed from: a */
        public abstract AbstractC2563a mo29526a(Map<String, String> map);

        /* renamed from: a */
        public abstract AbstractC2562h mo29534a();

        /* renamed from: b */
        public abstract AbstractC2563a mo29524b(long j);

        /* renamed from: b */
        public abstract Map<String, String> mo29525b();
    }

    /* renamed from: i */
    public static AbstractC2563a m29535i() {
        C2538a.C2540b bVar = new C2538a.C2540b();
        bVar.mo29526a(new HashMap());
        return bVar;
    }

    /* renamed from: a */
    public final String m29545a(String str) {
        String str2 = mo29546a().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: a */
    public abstract Map<String, String> mo29546a();

    /* renamed from: b */
    public final int m29543b(String str) {
        String str2 = mo29546a().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    /* renamed from: b */
    public abstract Integer mo29544b();

    /* renamed from: c */
    public final long m29541c(String str) {
        String str2 = mo29546a().get(str);
        return str2 == null ? 0L : Long.valueOf(str2).longValue();
    }

    /* renamed from: c */
    public abstract C2561g mo29542c();

    /* renamed from: d */
    public abstract long mo29540d();

    /* renamed from: e */
    public final Map<String, String> m29539e() {
        return Collections.unmodifiableMap(mo29546a());
    }

    /* renamed from: f */
    public abstract String mo29538f();

    /* renamed from: g */
    public abstract long mo29537g();

    /* renamed from: h */
    public AbstractC2563a m29536h() {
        C2538a.C2540b bVar = new C2538a.C2540b();
        bVar.mo29530a(mo29538f());
        bVar.mo29531a(mo29544b());
        bVar.mo29532a(mo29542c());
        bVar.mo29533a(mo29540d());
        bVar.mo29524b(mo29537g());
        bVar.mo29526a(new HashMap(mo29546a()));
        return bVar;
    }
}
