package org.mistergroup.shouldianswer.model;

import androidx.p014c.C0374a;
import java.util.ArrayList;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.t */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/t.class */
public final class C2454t {

    /* renamed from: a */
    public static final C2454t f7186a = new C2454t();

    /* renamed from: b */
    private static C2455a f7187b;

    /* renamed from: org.mistergroup.shouldianswer.model.t$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/t$a.class */
    public static final class C2455a {

        /* renamed from: a */
        private final String f7188a;

        /* renamed from: b */
        private final String f7189b;

        public C2455a(String str, String str2) {
            C1694h.m3117b(str, "shortName");
            C1694h.m3117b(str2, "rootUrl");
            this.f7188a = str;
            this.f7189b = str2;
        }

        /* renamed from: a */
        public final String m982a() {
            return this.f7188a;
        }

        /* renamed from: b */
        public final String m981b() {
            return this.f7189b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C2455a)) {
                    return false;
                }
                C2455a c2455a = (C2455a) obj;
                return C1694h.m3123a((Object) this.f7188a, (Object) c2455a.f7188a) && C1694h.m3123a((Object) this.f7189b, (Object) c2455a.f7189b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f7188a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f7189b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "Country(shortName=" + this.f7188a + ", rootUrl=" + this.f7189b + ")";
        }
    }

    private C2454t() {
    }

    /* renamed from: b */
    private final C0374a<String, C2455a> m983b() {
        ArrayList<C2455a> arrayList = new ArrayList();
        arrayList.add(new C2455a("AR", "https://ar.shouldianswer.net"));
        arrayList.add(new C2455a("AU", "https://au.shouldianswer.net"));
        arrayList.add(new C2455a("AT", "https://at.shouldianswer.net"));
        arrayList.add(new C2455a("BE", "https://be.shouldianswer.net"));
        arrayList.add(new C2455a("BR", "https://br.shouldianswer.net"));
        arrayList.add(new C2455a("CO", "https://co.shouldianswer.net"));
        arrayList.add(new C2455a("CZ", "https://www.muzutozvednout.cz"));
        arrayList.add(new C2455a("CL", "https://cl.shouldianswer.net"));
        arrayList.add(new C2455a("CN", "https://cn.shouldianswer.net"));
        arrayList.add(new C2455a("DE", "https://www.sollichannehmen.de"));
        arrayList.add(new C2455a("DK", "https://dk.shouldianswer.net"));
        arrayList.add(new C2455a("FI", "https://fi.shouldianswer.net"));
        arrayList.add(new C2455a("FR", "https://www.doisjerepondre.fr"));
        arrayList.add(new C2455a("GB", "https://www.shouldianswer.co.uk"));
        arrayList.add(new C2455a("HK", "https://hk.shouldianswer.net"));
        arrayList.add(new C2455a("HU", "https://hu.shouldianswer.net"));
        arrayList.add(new C2455a("IN", "https://in.shouldianswer.net"));
        arrayList.add(new C2455a("ID", "https://id.shouldianswer.net"));
        arrayList.add(new C2455a("IT", "https://www.chistachiamando.it"));
        arrayList.add(new C2455a("CI", "https://ci.shouldianswer.net"));
        arrayList.add(new C2455a("JP", "https://jp.shouldianswer.net"));
        arrayList.add(new C2455a("KE", "https://ke.shouldianswer.net"));
        arrayList.add(new C2455a("KR", "https://kr.shouldianswer.net"));
        arrayList.add(new C2455a("CD", "https://cd.shouldianswer.net"));
        arrayList.add(new C2455a("MX", "https://mx.shouldianswer.net"));
        arrayList.add(new C2455a("MZ", "https://mz.shouldianswer.net"));
        arrayList.add(new C2455a("NL", "https://nl.shouldianswer.net"));
        arrayList.add(new C2455a("NZ", "https://nz.shouldianswer.net"));
        arrayList.add(new C2455a("NG", "https://ng.shouldianswer.net"));
        arrayList.add(new C2455a("NO", "https://no.shouldianswer.net"));
        arrayList.add(new C2455a("PE", "https://pe.shouldianswer.net"));
        arrayList.add(new C2455a("PL", "https://www.odebractelefon.pl"));
        arrayList.add(new C2455a("PT", "https://pt.shouldianswer.net"));
        arrayList.add(new C2455a("RU", "https://www.neberitrubku.ru"));
        arrayList.add(new C2455a("SK", "https://www.mozemtozdvihnut.sk"));
        arrayList.add(new C2455a("ES", "https://www.responderono.es"));
        arrayList.add(new C2455a("SE", "https://se.shouldianswer.net"));
        arrayList.add(new C2455a("CH", "https://ch.shouldianswer.net"));
        arrayList.add(new C2455a("ZA", "https://za.shouldianswer.net"));
        arrayList.add(new C2455a("US", "https://www.shouldianswer.com"));
        arrayList.add(new C2455a("VE", "https://ve.shouldianswer.net"));
        C0374a<String, C2455a> c0374a = new C0374a<>();
        for (C2455a c2455a : arrayList) {
            c0374a.put(c2455a.m982a(), c2455a);
        }
        return c0374a;
    }

    /* renamed from: a */
    public final C2455a m984a() {
        C2455a c2455a = f7187b;
        if (c2455a != null) {
            return c2455a;
        }
        C2455a c2455a2 = new C2455a("WW", "https://www.shouldianswer.net");
        C0374a<String, C2455a> m983b = m983b();
        String m177a = C3099f.f9116a.m177a();
        C2455a c2455a3 = m983b.get(m177a);
        if (c2455a3 != null) {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "Countries.getCountry Set worldwide url to =" + c2455a3.m981b(), (String) null, 2, (Object) null);
            c2455a2 = new C2455a("WW", c2455a3.m981b());
        }
        m983b.put(c2455a2.m982a(), c2455a2);
        String str = !m983b.containsKey(m177a) ? "WW" : m177a;
        C3104j c3104j2 = C3104j.f9124a;
        C3104j.m157a(c3104j2, "Countries.getCountry countryActive=" + str, (String) null, 2, (Object) null);
        C3104j.f9124a.m160a("countryActive", str);
        f7187b = m983b.get(str);
        C2455a c2455a4 = f7187b;
        if (c2455a4 == null) {
            C1694h.m3124a();
        }
        return c2455a4;
    }
}
