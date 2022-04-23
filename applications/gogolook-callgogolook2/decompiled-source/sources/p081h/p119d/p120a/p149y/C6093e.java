package p081h.p119d.p120a.p149y;

import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: h.d.a.y.e */
/* loaded from: classes-dex2jar.jar:h/d/a/y/e.class */
public class C6093e<T, Y> {

    /* renamed from: b */
    public int f15149b;

    /* renamed from: a */
    public final LinkedHashMap<T, Y> f15148a = new LinkedHashMap<>(100, 0.75f, true);

    /* renamed from: c */
    public int f15150c = 0;

    public C6093e(int i) {
        this.f15149b = i;
    }

    /* renamed from: a */
    public Y m23876a(T t) {
        return this.f15148a.get(t);
    }

    /* renamed from: a */
    public void m23877a() {
        m23873b(0);
    }

    /* renamed from: a */
    public void mo23875a(T t, Y y) {
    }

    /* renamed from: b */
    public int mo23872b(Y y) {
        return 1;
    }

    /* renamed from: b */
    public Y m23871b(T t, Y y) {
        if (mo23872b((C6093e<T, Y>) y) >= this.f15149b) {
            mo23875a(t, y);
            return null;
        }
        Y put = this.f15148a.put(t, y);
        if (y != null) {
            this.f15150c += mo23872b((C6093e<T, Y>) y);
        }
        if (put != null) {
            this.f15150c -= mo23872b((C6093e<T, Y>) put);
        }
        m23874b();
        return put;
    }

    /* renamed from: b */
    public final void m23874b() {
        m23873b(this.f15149b);
    }

    /* renamed from: b */
    public void m23873b(int i) {
        while (this.f15150c > i) {
            Map.Entry<T, Y> next = this.f15148a.entrySet().iterator().next();
            Y value = next.getValue();
            this.f15150c -= mo23872b((C6093e<T, Y>) value);
            T key = next.getKey();
            this.f15148a.remove(key);
            mo23875a(key, value);
        }
    }

    /* renamed from: c */
    public int m23870c() {
        return this.f15150c;
    }

    /* renamed from: c */
    public Y m23869c(T t) {
        Y remove = this.f15148a.remove(t);
        if (remove != null) {
            this.f15150c -= mo23872b((C6093e<T, Y>) remove);
        }
        return remove;
    }
}
