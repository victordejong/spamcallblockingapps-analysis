package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ArrayBlockingQueue;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
/* renamed from: e.k.a.c.d0.z.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/a.class */
public class C23538a extends C23557h {
    public C23538a(AbstractC23698i abstractC23698i, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23491w abstractC23491w) {
        super(abstractC23698i, abstractC23700j, abstractC23709e, abstractC23491w);
    }

    public C23538a(AbstractC23698i abstractC23698i, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23491w abstractC23491w, AbstractC23700j<Object> abstractC23700j2, AbstractC23484r abstractC23484r, Boolean bool) {
        super(abstractC23698i, abstractC23700j, abstractC23709e, abstractC23491w, abstractC23700j2, abstractC23484r, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23557h, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6207c(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23557h
    /* renamed from: o0 */
    public Collection<Object> mo6589o0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Collection<Object> collection) throws IOException {
        ArrayList arrayList = collection;
        if (collection == null) {
            arrayList = new ArrayList();
        }
        Collection<Object> mo6589o0 = super.mo6589o0(abstractC23376j, abstractC23632g, arrayList);
        return mo6589o0.isEmpty() ? new ArrayBlockingQueue(1, false) : new ArrayBlockingQueue(mo6589o0.size(), false, mo6589o0);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23557h
    /* renamed from: p0 */
    public Collection<Object> mo6588p0(AbstractC23632g abstractC23632g) throws IOException {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23557h
    /* renamed from: r0 */
    public C23557h mo6586r0(AbstractC23700j abstractC23700j, AbstractC23700j abstractC23700j2, AbstractC23709e abstractC23709e, AbstractC23484r abstractC23484r, Boolean bool) {
        return new C23538a(this.f65361d, abstractC23700j2, abstractC23709e, this.f65351j, abstractC23700j, abstractC23484r, bool);
    }
}
