package com.iab.omid.library.mopub.p125b;

import com.iab.omid.library.mopub.adsession.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.iab.omid.library.mopub.b.a */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/b/a.class */
public class C2601a {

    /* renamed from: a */
    private static C2601a f8343a = new C2601a();

    /* renamed from: b */
    private final ArrayList<a> f8344b = new ArrayList<>();

    /* renamed from: c */
    private final ArrayList<a> f8345c = new ArrayList<>();

    private C2601a() {
    }

    /* renamed from: a */
    public static C2601a m36478a() {
        return f8343a;
    }

    /* renamed from: a */
    public void m36477a(a aVar) {
        this.f8344b.add(aVar);
    }

    /* renamed from: b */
    public Collection<a> m36476b() {
        return Collections.unmodifiableCollection(this.f8344b);
    }

    /* renamed from: b */
    public void m36475b(a aVar) {
        boolean m36472d = m36472d();
        this.f8345c.add(aVar);
        if (!m36472d) {
            f.a().b();
        }
    }

    /* renamed from: c */
    public Collection<a> m36474c() {
        return Collections.unmodifiableCollection(this.f8345c);
    }

    /* renamed from: c */
    public void m36473c(a aVar) {
        boolean m36472d = m36472d();
        this.f8344b.remove(aVar);
        this.f8345c.remove(aVar);
        if (!m36472d || m36472d()) {
            return;
        }
        f.a().c();
    }

    /* renamed from: d */
    public boolean m36472d() {
        return this.f8345c.size() > 0;
    }
}
