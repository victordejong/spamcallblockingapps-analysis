package org.bouncycastle.util.p013io.pem;
/* renamed from: org.bouncycastle.util.io.pem.PemHeader */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/io/pem/PemHeader.class */
public class PemHeader {
    private String name;
    private String value;

    public PemHeader(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    private int getHashCode(String str) {
        if (str == null) {
            return 1;
        }
        return str.hashCode();
    }

    private boolean isEqual(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str != null && str2 != null) {
            return str.equals(str2);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        if (isEqual(r4.value, r0.value) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r5
            boolean r0 = r0 instanceof org.bouncycastle.util.p013io.pem.PemHeader
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto Ld
            r0 = 0
            return r0
        Ld:
            r0 = r5
            org.bouncycastle.util.io.pem.PemHeader r0 = (org.bouncycastle.util.p013io.pem.PemHeader) r0
            r5 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L39
            r0 = r7
            r6 = r0
            r0 = r4
            r1 = r4
            java.lang.String r1 = r1.name
            r2 = r5
            java.lang.String r2 = r2.name
            boolean r0 = r0.isEqual(r1, r2)
            if (r0 == 0) goto L3b
            r0 = r7
            r6 = r0
            r0 = r4
            r1 = r4
            java.lang.String r1 = r1.value
            r2 = r5
            java.lang.String r2 = r2.value
            boolean r0 = r0.isEqual(r1, r2)
            if (r0 == 0) goto L3b
        L39:
            r0 = 1
            r6 = r0
        L3b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.util.p013io.pem.PemHeader.equals(java.lang.Object):boolean");
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return getHashCode(this.name) + (getHashCode(this.value) * 31);
    }
}
