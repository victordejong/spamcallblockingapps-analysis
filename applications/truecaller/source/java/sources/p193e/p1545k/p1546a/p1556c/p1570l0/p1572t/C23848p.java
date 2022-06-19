package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.net.InetAddress;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
/* renamed from: e.k.a.c.l0.t.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/p.class */
public class C23848p extends AbstractC23849p0<InetAddress> implements AbstractC23766i {

    /* renamed from: c */
    public final boolean f65982c;

    public C23848p() {
        super(InetAddress.class);
        this.f65982c = false;
    }

    public C23848p(boolean z) {
        super(InetAddress.class);
        this.f65982c = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23890n<?> mo5992b(p193e.p1545k.p1546a.p1556c.AbstractC23425a0 r6, p193e.p1545k.p1546a.p1556c.AbstractC23462d r7) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r5
            java.lang.Class<T> r3 = r3.f65984a
            e.k.a.a.k$d r0 = r0.m6014l(r1, r2, r3)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L27
            r0 = r6
            e.k.a.a.k$c r0 = r0.f64499b
            r6 = r0
            r0 = r6
            boolean r0 = r0.m7288a()
            if (r0 != 0) goto L22
            r0 = r6
            e.k.a.a.k$c r1 = p193e.p1545k.p1546a.p1547a.AbstractC23311k.EnumC23314c.ARRAY
            if (r0 != r1) goto L27
        L22:
            r0 = 1
            r8 = r0
            goto L29
        L27:
            r0 = 0
            r8 = r0
        L29:
            r0 = r8
            r1 = r5
            boolean r1 = r1.f65982c
            if (r0 == r1) goto L3a
            e.k.a.c.l0.t.p r0 = new e.k.a.c.l0.t.p
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            return r0
        L3a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23848p.mo5992b(e.k.a.c.a0, e.k.a.c.d):e.k.a.c.n");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public /* bridge */ /* synthetic */ void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        m6018p((InetAddress) obj, abstractC23372g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23849p0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        InetAddress inetAddress = (InetAddress) obj;
        C23422b m6216d = abstractC23712h.m6216d(inetAddress, EnumC23381m.VALUE_STRING);
        m6216d.f64977b = InetAddress.class;
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, m6216d);
        m6018p(inetAddress, abstractC23372g);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    /* renamed from: p */
    public void m6018p(InetAddress inetAddress, AbstractC23372g abstractC23372g) throws IOException {
        String str;
        if (this.f65982c) {
            str = inetAddress.getHostAddress();
        } else {
            String trim = inetAddress.toString().trim();
            int indexOf = trim.indexOf(47);
            str = trim;
            if (indexOf >= 0) {
                str = indexOf == 0 ? trim.substring(1) : trim.substring(0, indexOf);
            }
        }
        abstractC23372g.mo5868T1(str);
    }
}
