package p193e.p1545k.p1546a.p1556c.p1570l0;

import java.util.Map;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23857t;
/* renamed from: e.k.a.c.l0.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/a.class */
public class C23758a {

    /* renamed from: a */
    public final AbstractC23462d f65828a;

    /* renamed from: b */
    public final AbstractC23663i f65829b;

    /* renamed from: c */
    public AbstractC23890n<Object> f65830c;

    /* renamed from: d */
    public C23857t f65831d;

    public C23758a(AbstractC23462d abstractC23462d, AbstractC23663i abstractC23663i, AbstractC23890n<?> abstractC23890n) {
        this.f65829b = abstractC23663i;
        this.f65828a = abstractC23462d;
        this.f65830c = abstractC23890n;
        if (abstractC23890n instanceof C23857t) {
            this.f65831d = (C23857t) abstractC23890n;
        }
    }

    /* renamed from: a */
    public void m6113a(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        Object mo6374j = this.f65829b.mo6374j(obj);
        if (mo6374j == null) {
            return;
        }
        if (!(mo6374j instanceof Map)) {
            abstractC23425a0.mo6466m(this.f65828a.getType(), String.format("Value returned by 'any-getter' %s() not java.util.Map but %s", this.f65829b.getName(), mo6374j.getClass().getName()));
            throw null;
        }
        C23857t c23857t = this.f65831d;
        if (c23857t != null) {
            c23857t.m5996t((Map) mo6374j, abstractC23372g, abstractC23425a0);
        } else {
            this.f65830c.mo5894f(mo6374j, abstractC23372g, abstractC23425a0);
        }
    }
}
