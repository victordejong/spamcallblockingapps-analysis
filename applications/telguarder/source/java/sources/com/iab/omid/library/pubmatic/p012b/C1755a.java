package com.iab.omid.library.pubmatic.p012b;

import com.iab.omid.library.pubmatic.adsession.C1753a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.iab.omid.library.pubmatic.b.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b/a.class */
public class C1755a {

    /* renamed from: a */
    private static C1755a f230a = new C1755a();

    /* renamed from: b */
    private final ArrayList<C1753a> f231b = new ArrayList<>();

    /* renamed from: c */
    private final ArrayList<C1753a> f232c = new ArrayList<>();

    private C1755a() {
    }

    /* renamed from: a */
    public static C1755a m1306a() {
        return f230a;
    }

    /* renamed from: a */
    public void m1305a(C1753a c1753a) {
        this.f231b.add(c1753a);
    }

    /* renamed from: b */
    public Collection<C1753a> m1304b() {
        return Collections.unmodifiableCollection(this.f231b);
    }

    /* renamed from: b */
    public void m1303b(C1753a c1753a) {
        boolean m1300d = m1300d();
        this.f232c.add(c1753a);
        if (!m1300d) {
            C1762f.m1268a().m1265b();
        }
    }

    /* renamed from: c */
    public Collection<C1753a> m1302c() {
        return Collections.unmodifiableCollection(this.f232c);
    }

    /* renamed from: c */
    public void m1301c(C1753a c1753a) {
        boolean m1300d = m1300d();
        this.f231b.remove(c1753a);
        this.f232c.remove(c1753a);
        if (!m1300d || m1300d()) {
            return;
        }
        C1762f.m1268a().m1264c();
    }

    /* renamed from: d */
    public boolean m1300d() {
        return this.f232c.size() > 0;
    }
}
