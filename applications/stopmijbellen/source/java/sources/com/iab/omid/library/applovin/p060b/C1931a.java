package com.iab.omid.library.applovin.p060b;

import com.iab.omid.library.applovin.adsession.C1929a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.iab.omid.library.applovin.b.a */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/a.class */
public class C1931a {

    /* renamed from: a */
    private static C1931a f7162a = new C1931a();

    /* renamed from: b */
    private final ArrayList<C1929a> f7163b = new ArrayList<>();

    /* renamed from: c */
    private final ArrayList<C1929a> f7164c = new ArrayList<>();

    private C1931a() {
    }

    /* renamed from: a */
    public static C1931a m4171a() {
        return f7162a;
    }

    /* renamed from: a */
    public void m4170a(C1929a c1929a) {
        this.f7163b.add(c1929a);
    }

    /* renamed from: b */
    public Collection<C1929a> m4169b() {
        return Collections.unmodifiableCollection(this.f7163b);
    }

    /* renamed from: b */
    public void m4168b(C1929a c1929a) {
        boolean m4165d = m4165d();
        this.f7164c.add(c1929a);
        if (!m4165d) {
            C1938f.m4132a().m4128b();
        }
    }

    /* renamed from: c */
    public Collection<C1929a> m4167c() {
        return Collections.unmodifiableCollection(this.f7164c);
    }

    /* renamed from: c */
    public void m4166c(C1929a c1929a) {
        boolean m4165d = m4165d();
        this.f7163b.remove(c1929a);
        this.f7164c.remove(c1929a);
        if (!m4165d || m4165d()) {
            return;
        }
        C1938f.m4132a().m4127c();
    }

    /* renamed from: d */
    public boolean m4165d() {
        return this.f7164c.size() > 0;
    }
}
