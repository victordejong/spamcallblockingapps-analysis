package p1727n3.p1758e.p1767b.p1768j1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
/* renamed from: n3.e.b.j1.p1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/p1.class */
public final class C25999p1 {

    /* renamed from: a */
    public final String f72652a;

    /* renamed from: b */
    public final Map<String, C26001b> f72653b = new HashMap();

    /* renamed from: n3.e.b.j1.p1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/p1$a.class */
    public interface AbstractC26000a {
        /* renamed from: a */
        boolean mo2798a(C26001b c26001b);
    }

    /* renamed from: n3.e.b.j1.p1$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/p1$b.class */
    public static final class C26001b {

        /* renamed from: a */
        public final C25972j1 f72654a;

        /* renamed from: b */
        public boolean f72655b = false;

        /* renamed from: c */
        public boolean f72656c = false;

        public C26001b(C25972j1 c25972j1) {
            this.f72654a = c25972j1;
        }
    }

    public C25999p1(String str) {
        this.f72652a = str;
    }

    /* renamed from: a */
    public C25972j1.C25978f m2806a() {
        C25972j1.C25978f c25978f = new C25972j1.C25978f();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, C26001b> entry : this.f72653b.entrySet()) {
            C26001b value = entry.getValue();
            if (value.f72655b) {
                c25978f.m2835a(value.f72654a);
                arrayList.add(entry.getKey());
            }
        }
        C26103y0.m2724a("UseCaseAttachState", "All use case: " + arrayList + " for camera: " + this.f72652a, null);
        return c25978f;
    }

    /* renamed from: b */
    public Collection<C25972j1> m2805b() {
        return Collections.unmodifiableCollection(m2804c(C25967j.f72590a));
    }

    /* renamed from: c */
    public final Collection<C25972j1> m2804c(AbstractC26000a abstractC26000a) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, C26001b> entry : this.f72653b.entrySet()) {
            if (abstractC26000a.mo2798a(entry.getValue())) {
                arrayList.add(entry.getValue().f72654a);
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public boolean m2803d(String str) {
        if (!this.f72653b.containsKey(str)) {
            return false;
        }
        return this.f72653b.get(str).f72655b;
    }

    /* renamed from: e */
    public void m2802e(String str, C25972j1 c25972j1) {
        C26001b c26001b = this.f72653b.get(str);
        C26001b c26001b2 = c26001b;
        if (c26001b == null) {
            c26001b2 = new C26001b(c25972j1);
            this.f72653b.put(str, c26001b2);
        }
        c26001b2.f72656c = true;
    }

    /* renamed from: f */
    public void m2801f(String str, C25972j1 c25972j1) {
        C26001b c26001b = this.f72653b.get(str);
        C26001b c26001b2 = c26001b;
        if (c26001b == null) {
            c26001b2 = new C26001b(c25972j1);
            this.f72653b.put(str, c26001b2);
        }
        c26001b2.f72655b = true;
    }

    /* renamed from: g */
    public void m2800g(String str) {
        if (!this.f72653b.containsKey(str)) {
            return;
        }
        C26001b c26001b = this.f72653b.get(str);
        c26001b.f72656c = false;
        if (c26001b.f72655b) {
            return;
        }
        this.f72653b.remove(str);
    }

    /* renamed from: h */
    public void m2799h(String str, C25972j1 c25972j1) {
        if (!this.f72653b.containsKey(str)) {
            return;
        }
        C26001b c26001b = new C26001b(c25972j1);
        C26001b c26001b2 = this.f72653b.get(str);
        c26001b.f72655b = c26001b2.f72655b;
        c26001b.f72656c = c26001b2.f72656c;
        this.f72653b.put(str, c26001b);
    }
}
