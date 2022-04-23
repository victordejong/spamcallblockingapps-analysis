package com.criteo.publisher.p027t;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.criteo.publisher.p027t.AbstractC2138t;
/* renamed from: com.criteo.publisher.t.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/d.class */
public abstract class AbstractC2104d extends AbstractC2138t.AbstractC2140b {

    /* renamed from: a */
    public final String f2371a;

    /* renamed from: b */
    public final boolean f2372b;

    public AbstractC2104d(@Nullable String str, boolean z) {
        this.f2371a = str;
        this.f2372b = z;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2140b
    /* renamed from: a */
    public boolean mo35623a() {
        return this.f2372b;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2140b
    @Nullable
    /* renamed from: b */
    public String mo35620b() {
        return this.f2371a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (r3.f2372b == r0.mo35623a()) goto L_0x0043;
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
            boolean r0 = r0 instanceof com.criteo.publisher.p027t.AbstractC2138t.AbstractC2140b
            if (r0 == 0) goto L_0x0045
            r0 = r4
            com.criteo.publisher.t.t$b r0 = (com.criteo.publisher.p027t.AbstractC2138t.AbstractC2140b) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f2371a
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0028
            r0 = r6
            java.lang.String r0 = r0.mo35620b()
            if (r0 != 0) goto L_0x0041
            goto L_0x0033
        L_0x0028:
            r0 = r4
            r1 = r6
            java.lang.String r1 = r1.mo35620b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0041
        L_0x0033:
            r0 = r3
            boolean r0 = r0.f2372b
            r1 = r6
            boolean r1 = r1.mo35623a()
            if (r0 != r1) goto L_0x0041
            goto L_0x0043
        L_0x0041:
            r0 = 0
            r5 = r0
        L_0x0043:
            r0 = r5
            return r0
        L_0x0045:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p027t.AbstractC2104d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f2371a;
        return (((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ (this.f2372b ? 1231 : 1237);
    }

    public String toString() {
        return "MetricRequestSlot{impressionId=" + this.f2371a + ", cachedBidUsed=" + this.f2372b + CssParser.BLOCK_END;
    }
}
