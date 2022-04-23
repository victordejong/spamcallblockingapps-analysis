package p459j.p460a.p474c0.p499h.p500x0;

import java.util.HashMap;
import java.util.Map;
/* renamed from: j.a.c0.h.x0.i */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/i.class */
public class C12237i {

    /* renamed from: d */
    public static final int[] f27583d = {0, 1, 2, 3, 4};

    /* renamed from: a */
    public final int f27584a;

    /* renamed from: b */
    public final Map<Short, C12236h> f27585b = new HashMap();

    /* renamed from: c */
    public int f27586c = 0;

    public C12237i(int i) {
        this.f27584a = i;
    }

    /* renamed from: e */
    public static int[] m6573e() {
        return f27583d;
    }

    /* renamed from: a */
    public C12236h m6579a(C12236h hVar) {
        hVar.m6592e(this.f27584a);
        return this.f27585b.put(Short.valueOf(hVar.m6587h()), hVar);
    }

    /* renamed from: a */
    public C12236h m6578a(short s) {
        return this.f27585b.get(Short.valueOf(s));
    }

    /* renamed from: a */
    public void m6580a(int i) {
        this.f27586c = i;
    }

    /* renamed from: a */
    public C12236h[] m6581a() {
        return (C12236h[]) this.f27585b.values().toArray(new C12236h[this.f27585b.size()]);
    }

    /* renamed from: b */
    public int m6577b() {
        return this.f27584a;
    }

    /* renamed from: b */
    public void m6576b(short s) {
        this.f27585b.remove(Short.valueOf(s));
    }

    /* renamed from: c */
    public int m6575c() {
        return this.f27586c;
    }

    /* renamed from: d */
    public int m6574d() {
        return this.f27585b.size();
    }

    public boolean equals(Object obj) {
        C12236h[] a;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C12237i)) {
            return false;
        }
        C12237i iVar = (C12237i) obj;
        if (!(iVar.m6577b() == this.f27584a && iVar.m6574d() == m6574d())) {
            return false;
        }
        for (C12236h hVar : iVar.m6581a()) {
            if (!C12227c.m6679a(hVar.m6587h()) && !hVar.equals(this.f27585b.get(Short.valueOf(hVar.m6587h())))) {
                return false;
            }
        }
        return true;
    }
}
