package com.google.firebase.installations.p167a;

import com.google.firebase.installations.p167a.C5004a;
import com.google.firebase.installations.p167a.C5008c;
/* renamed from: com.google.firebase.installations.a.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/d.class */
public abstract class AbstractC5010d {

    /* renamed from: a */
    public static AbstractC5010d f21235a = m1849p().mo1848a();

    /* renamed from: com.google.firebase.installations.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/d$a.class */
    public static abstract class AbstractC5011a {
        /* renamed from: a */
        public abstract AbstractC5011a mo1847a(long j);

        /* renamed from: a */
        public abstract AbstractC5011a mo1846a(C5008c.EnumC5009a enumC5009a);

        /* renamed from: a */
        public abstract AbstractC5011a mo1845a(String str);

        /* renamed from: a */
        public abstract AbstractC5010d mo1848a();

        /* renamed from: b */
        public abstract AbstractC5011a mo1844b(long j);

        /* renamed from: b */
        public abstract AbstractC5011a mo1843b(String str);

        /* renamed from: c */
        public abstract AbstractC5011a mo1842c(String str);

        /* renamed from: d */
        public abstract AbstractC5011a mo1841d(String str);
    }

    /* renamed from: p */
    public static AbstractC5011a m1849p() {
        return new C5004a.C5006a().mo1844b(0L).mo1846a(C5008c.EnumC5009a.ATTEMPT_MIGRATION).mo1847a(0L);
    }

    /* renamed from: a */
    public AbstractC5010d m1867a(String str) {
        return mo1857h().mo1845a(str).mo1846a(C5008c.EnumC5009a.UNREGISTERED).mo1848a();
    }

    /* renamed from: a */
    public AbstractC5010d m1866a(String str, long j, long j2) {
        return mo1857h().mo1843b(str).mo1847a(j).mo1844b(j2).mo1848a();
    }

    /* renamed from: a */
    public AbstractC5010d m1865a(String str, String str2, long j, String str3, long j2) {
        return mo1857h().mo1845a(str).mo1846a(C5008c.EnumC5009a.REGISTERED).mo1843b(str3).mo1842c(str2).mo1847a(j2).mo1844b(j).mo1848a();
    }

    /* renamed from: a */
    public abstract String mo1868a();

    /* renamed from: b */
    public abstract C5008c.EnumC5009a mo1864b();

    /* renamed from: b */
    public AbstractC5010d m1863b(String str) {
        return mo1857h().mo1841d(str).mo1846a(C5008c.EnumC5009a.REGISTER_ERROR).mo1848a();
    }

    /* renamed from: c */
    public abstract String mo1862c();

    /* renamed from: d */
    public abstract String mo1861d();

    /* renamed from: e */
    public abstract long mo1860e();

    /* renamed from: f */
    public abstract long mo1859f();

    /* renamed from: g */
    public abstract String mo1858g();

    /* renamed from: h */
    public abstract AbstractC5011a mo1857h();

    /* renamed from: i */
    public boolean m1856i() {
        return mo1864b() == C5008c.EnumC5009a.REGISTERED;
    }

    /* renamed from: j */
    public boolean m1855j() {
        return mo1864b() == C5008c.EnumC5009a.REGISTER_ERROR;
    }

    /* renamed from: k */
    public boolean m1854k() {
        return mo1864b() == C5008c.EnumC5009a.UNREGISTERED;
    }

    /* renamed from: l */
    public boolean m1853l() {
        return mo1864b() == C5008c.EnumC5009a.NOT_GENERATED || mo1864b() == C5008c.EnumC5009a.ATTEMPT_MIGRATION;
    }

    /* renamed from: m */
    public boolean m1852m() {
        return mo1864b() == C5008c.EnumC5009a.ATTEMPT_MIGRATION;
    }

    /* renamed from: n */
    public AbstractC5010d m1851n() {
        return mo1857h().mo1846a(C5008c.EnumC5009a.NOT_GENERATED).mo1848a();
    }

    /* renamed from: o */
    public AbstractC5010d m1850o() {
        return mo1857h().mo1843b((String) null).mo1848a();
    }
}
