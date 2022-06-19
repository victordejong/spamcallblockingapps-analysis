package p193e.p1411b.p1412a.p1420y.p1421j;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p193e.p1411b.p1412a.p1415c0.C21907a;
/* renamed from: e.b.a.y.j.n */
/* loaded from: classes-dex2jar.jar:e/b/a/y/j/n.class */
public abstract class AbstractC21985n<V, O> implements AbstractC21984m<V, O> {

    /* renamed from: a */
    public final List<C21907a<V>> f61049a;

    public AbstractC21985n(V v) {
        this.f61049a = Collections.singletonList(new C21907a(v));
    }

    public AbstractC21985n(List<C21907a<V>> list) {
        this.f61049a = list;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0031, code lost:
        if (r3.f61049a.get(0).m8911d() != false) goto L8;
     */
    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8839e() {
        /*
            r3 = this;
            r0 = r3
            java.util.List<e.b.a.c0.a<V>> r0 = r0.f61049a
            boolean r0 = r0.isEmpty()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L34
            r0 = r5
            r4 = r0
            r0 = r3
            java.util.List<e.b.a.c0.a<V>> r0 = r0.f61049a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L36
            r0 = r5
            r4 = r0
            r0 = r3
            java.util.List<e.b.a.c0.a<V>> r0 = r0.f61049a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            e.b.a.c0.a r0 = (p193e.p1411b.p1412a.p1415c0.C21907a) r0
            boolean r0 = r0.m8911d()
            if (r0 == 0) goto L36
        L34:
            r0 = 1
            r4 = r0
        L36:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21985n.mo8839e():boolean");
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: g */
    public List<C21907a<V>> mo8838g() {
        return this.f61049a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f61049a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.f61049a.toArray()));
        }
        return sb.toString();
    }
}
