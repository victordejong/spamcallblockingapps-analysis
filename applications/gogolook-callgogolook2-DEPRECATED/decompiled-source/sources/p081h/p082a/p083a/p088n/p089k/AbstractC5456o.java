package p081h.p082a.p083a.p088n.p089k;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
/* renamed from: h.a.a.n.k.o */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/o.class */
public abstract class AbstractC5456o<V, O> implements AbstractC5452m<V, O> {

    /* renamed from: a */
    public final List<C5358a<V>> f13595a;

    /* renamed from: b */
    public final V f13596b;

    public AbstractC5456o(V v) {
        this(Collections.emptyList(), v);
    }

    public AbstractC5456o(List<C5358a<V>> list, V v) {
        this.f13595a = list;
        this.f13596b = v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public O mo25440a(V v) {
        return v;
    }

    /* renamed from: b */
    public O mo25439b() {
        return mo25440a(this.f13596b);
    }

    /* renamed from: c */
    public boolean m25438c() {
        return !this.f13595a.isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("parseInitialValue=");
        sb.append(this.f13596b);
        if (!this.f13595a.isEmpty()) {
            sb.append(", values=");
            sb.append(Arrays.toString(this.f13595a.toArray()));
        }
        return sb.toString();
    }
}
