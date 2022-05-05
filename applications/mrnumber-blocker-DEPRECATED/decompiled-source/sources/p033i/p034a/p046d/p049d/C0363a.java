package p033i.p034a.p046d.p049d;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import p033i.p034a.p046d.p047c.AbstractC0359e;
/* renamed from: i.a.d.d.a */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/a.class */
public final class C0363a<V> {

    /* renamed from: a */
    private final ConcurrentMap<AbstractC0359e, V> f885a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Function<AbstractC0359e, V> f886b;

    public C0363a(Function<AbstractC0359e, V> function) {
        this.f886b = function;
    }

    /* renamed from: a */
    public final V m324a(String str, String str2) {
        AbstractC0359e a = AbstractC0359e.m336a(str, str2);
        V v = this.f885a.get(a);
        if (v != null) {
            return v;
        }
        V apply = this.f886b.apply(a);
        V putIfAbsent = this.f885a.putIfAbsent(a, apply);
        if (putIfAbsent != null) {
            apply = putIfAbsent;
        }
        return apply;
    }
}
