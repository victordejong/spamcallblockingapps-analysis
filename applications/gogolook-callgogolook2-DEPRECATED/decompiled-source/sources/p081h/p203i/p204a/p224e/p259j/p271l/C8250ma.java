package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
/* renamed from: h.i.a.e.j.l.ma */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ma.class */
public final class C8250ma<K, V> {

    /* renamed from: a */
    public final C8303pa<K, V> f19089a;

    /* renamed from: a */
    public static <K, V> int m18275a(C8303pa<K, V> paVar, K k, V v) {
        return C8087e9.m18576a(paVar.f19252a, 1, k) + C8087e9.m18576a(paVar.f19253b, 2, v);
    }

    /* renamed from: a */
    public static <K, V> void m18274a(AbstractC8447x8 x8Var, C8303pa<K, V> paVar, K k, V v) throws IOException {
        C8087e9.m18574a(x8Var, paVar.f19252a, 1, k);
        C8087e9.m18574a(x8Var, paVar.f19253b, 2, v);
    }

    /* renamed from: a */
    public final int m18276a(int i, K k, V v) {
        return AbstractC8447x8.m18046e(i) + AbstractC8447x8.m18024l(m18275a(this.f19089a, k, v));
    }

    /* renamed from: a */
    public final C8303pa<K, V> m18277a() {
        return this.f19089a;
    }
}
