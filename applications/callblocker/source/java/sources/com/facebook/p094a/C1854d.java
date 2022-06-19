package com.facebook.p094a;

import android.content.Context;
import com.facebook.C2095j;
import com.facebook.internal.C1994a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.facebook.a.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d.class */
public class C1854d {

    /* renamed from: a */
    private final HashMap<C1806a, C1931o> f5639a = new HashMap<>();

    /* renamed from: b */
    private C1931o m16090b(C1806a c1806a) {
        C1931o c1931o;
        synchronized (this) {
            C1931o c1931o2 = this.f5639a.get(c1806a);
            c1931o = c1931o2;
            if (c1931o2 == null) {
                Context m15360h = C2095j.m15360h();
                c1931o = new C1931o(C1994a.m15694b(m15360h), C1904g.m15929b(m15360h));
            }
            this.f5639a.put(c1806a, c1931o);
        }
        return c1931o;
    }

    /* renamed from: a */
    public C1931o m16094a(C1806a c1806a) {
        C1931o c1931o;
        synchronized (this) {
            c1931o = this.f5639a.get(c1806a);
        }
        return c1931o;
    }

    /* renamed from: a */
    public Set<C1806a> m16095a() {
        Set<C1806a> keySet;
        synchronized (this) {
            keySet = this.f5639a.keySet();
        }
        return keySet;
    }

    /* renamed from: a */
    public void m16093a(C1806a c1806a, C1848c c1848c) {
        synchronized (this) {
            m16090b(c1806a).m15843a(c1848c);
        }
    }

    /* renamed from: a */
    public void m16092a(C1928n c1928n) {
        synchronized (this) {
            if (c1928n != null) {
                for (C1806a c1806a : c1928n.m15848a()) {
                    C1931o m16090b = m16090b(c1806a);
                    for (C1848c c1848c : c1928n.m15847a(c1806a)) {
                        m16090b.m15843a(c1848c);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public int m16091b() {
        int i;
        synchronized (this) {
            Iterator<C1931o> it = this.f5639a.values().iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (it.hasNext()) {
                    i2 = it.next().m15844a() + i;
                }
            }
        }
        return i;
    }
}
