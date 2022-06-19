package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8329y;
/* renamed from: com.criteo.publisher.f.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/g.class */
abstract class AbstractC8297g extends AbstractC8329y.AbstractC8331b {

    /* renamed from: a */
    private final String f29902a;

    /* renamed from: b */
    private final Integer f29903b;

    /* renamed from: c */
    private final boolean f29904c;

    public AbstractC8297g(String str, Integer num, boolean z) {
        this.f29902a = str;
        this.f29903b = num;
        this.f29904c = z;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8331b
    /* renamed from: a */
    public final String mo25834a() {
        return this.f29902a;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8331b
    /* renamed from: b */
    public final Integer mo25831b() {
        return this.f29903b;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8331b
    /* renamed from: c */
    public final boolean mo25830c() {
        return this.f29904c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
        if (r3.f29904c == r0.mo25830c()) goto L22;
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
            boolean r0 = r0 instanceof com.criteo.publisher.p246f.AbstractC8329y.AbstractC8331b
            if (r0 == 0) goto L63
            r0 = r4
            com.criteo.publisher.f.y$b r0 = (com.criteo.publisher.p246f.AbstractC8329y.AbstractC8331b) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f29902a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            r0 = r4
            java.lang.String r0 = r0.mo25834a()
            if (r0 != 0) goto L5f
            goto L33
        L28:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo25834a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
        L33:
            r0 = r3
            java.lang.Integer r0 = r0.f29903b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L46
            r0 = r4
            java.lang.Integer r0 = r0.mo25831b()
            if (r0 != 0) goto L5f
            goto L51
        L46:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.mo25831b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
        L51:
            r0 = r3
            boolean r0 = r0.f29904c
            r1 = r4
            boolean r1 = r1.mo25830c()
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
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p246f.AbstractC8297g.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f29902a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        Integer num = this.f29903b;
        if (num != null) {
            i = num.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ (this.f29904c ? 1231 : 1237);
    }

    public String toString() {
        return "MetricRequestSlot{impressionId=" + this.f29902a + ", zoneId=" + this.f29903b + ", cachedBidUsed=" + this.f29904c + "}";
    }
}
