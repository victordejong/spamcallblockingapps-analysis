package com.criteo.publisher.f;

import com.criteo.publisher.f.y;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/g.class */
abstract class g extends y.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f17267a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f17268b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f17269c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(String str, Integer num, boolean z) {
        this.f17267a = str;
        this.f17268b = num;
        this.f17269c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.b
    public final String a() {
        return this.f17267a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.b
    public final Integer b() {
        return this.f17268b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.b
    public final boolean c() {
        return this.f17269c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
        if (r3.f17269c == r0.c()) goto L_0x0061;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.criteo.publisher.f.y.b
            if (r0 == 0) goto L_0x0063
            r0 = r4
            com.criteo.publisher.f.y$b r0 = (com.criteo.publisher.f.y.b) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f17267a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.String r0 = r0.a()
            if (r0 != 0) goto L_0x005f
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005f
        L_0x0033:
            r0 = r3
            java.lang.Integer r0 = r0.f17268b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0046
            r0 = r4
            java.lang.Integer r0 = r0.b()
            if (r0 != 0) goto L_0x005f
            goto L_0x0051
        L_0x0046:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005f
        L_0x0051:
            r0 = r3
            boolean r0 = r0.f17269c
            r1 = r4
            boolean r1 = r1.c()
            if (r0 != r1) goto L_0x005f
            goto L_0x0061
        L_0x005f:
            r0 = 0
            r5 = r0
        L_0x0061:
            r0 = r5
            return r0
        L_0x0063:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.f.g.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f17267a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        Integer num = this.f17268b;
        if (num != null) {
            i = num.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ (this.f17269c ? 1231 : 1237);
    }

    public String toString() {
        return "MetricRequestSlot{impressionId=" + this.f17267a + ", zoneId=" + this.f17268b + ", cachedBidUsed=" + this.f17269c + "}";
    }
}
