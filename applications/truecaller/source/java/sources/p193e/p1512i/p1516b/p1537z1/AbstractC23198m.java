package p193e.p1512i.p1516b.p1537z1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1537z1.AbstractC23177d0;
/* renamed from: e.i.b.z1.m */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/m.class */
public abstract class AbstractC23198m extends AbstractC23177d0.AbstractC23179b {

    /* renamed from: a */
    public final String f64212a;

    /* renamed from: b */
    public final Integer f64213b;

    /* renamed from: c */
    public final boolean f64214c;

    public AbstractC23198m(String str, Integer num, boolean z) {
        this.f64212a = str;
        this.f64213b = num;
        this.f64214c = z;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23179b
    /* renamed from: a */
    public boolean mo7396a() {
        return this.f64214c;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23179b
    /* renamed from: b */
    public String mo7395b() {
        return this.f64212a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23179b
    /* renamed from: c */
    public Integer mo7394c() {
        return this.f64213b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
        if (r3.f64214c == r0.mo7396a()) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23179b
            if (r0 == 0) goto L63
            r0 = r4
            e.i.b.z1.d0$b r0 = (p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23179b) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f64212a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            r0 = r4
            java.lang.String r0 = r0.mo7395b()
            if (r0 != 0) goto L5f
            goto L33
        L28:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo7395b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
        L33:
            r0 = r3
            java.lang.Integer r0 = r0.f64213b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L46
            r0 = r4
            java.lang.Integer r0 = r0.mo7394c()
            if (r0 != 0) goto L5f
            goto L51
        L46:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.mo7394c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
        L51:
            r0 = r3
            boolean r0 = r0.f64214c
            r1 = r4
            boolean r1 = r1.mo7396a()
            if (r0 != r1) goto L5f
            goto L61
        L5f:
            r0 = 0
            r5 = r0
        L61:
            r0 = r5
            return r0
        L63:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1537z1.AbstractC23198m.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f64212a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        Integer num = this.f64213b;
        if (num != null) {
            i = num.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ (this.f64214c ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MetricRequestSlot{impressionId=");
        m8728C.append(this.f64212a);
        m8728C.append(", zoneId=");
        m8728C.append(this.f64213b);
        m8728C.append(", cachedBidUsed=");
        return C22128a.m8590o(m8728C, this.f64214c, "}");
    }
}
