package p103g5;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import p103g5.AbstractC2878v;
/* renamed from: g5.e */
/* loaded from: classes-dex2jar.jar:g5/e.class */
public final class C2840e extends AbstractC2878v.AbstractC2881c.AbstractC2882a {

    /* renamed from: a */
    public final String f9680a;

    /* renamed from: b */
    public final byte[] f9681b;

    public C2840e(String str, byte[] bArr, C2841a c2841a) {
        this.f9680a = str;
        this.f9681b = bArr;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2881c.AbstractC2882a
    /* renamed from: a */
    public byte[] mo2947a() {
        return this.f9681b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2881c.AbstractC2882a
    /* renamed from: b */
    public String mo2946b() {
        return this.f9680a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f9681b, r0 instanceof p103g5.C2840e ? ((p103g5.C2840e) r0).f9681b : r0.mo2947a()) != false) goto L16;
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
            boolean r0 = r0 instanceof p103g5.AbstractC2878v.AbstractC2881c.AbstractC2882a
            if (r0 == 0) goto L4e
            r0 = r4
            g5.v$c$a r0 = (p103g5.AbstractC2878v.AbstractC2881c.AbstractC2882a) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f9680a
            r1 = r4
            java.lang.String r1 = r1.mo2946b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.f9681b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p103g5.C2840e
            if (r0 == 0) goto L3a
            r0 = r4
            g5.e r0 = (p103g5.C2840e) r0
            byte[] r0 = r0.f9681b
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.mo2947a()
            r4 = r0
        L3f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = 0
            r5 = r0
        L4c:
            r0 = r5
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p103g5.C2840e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f9680a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f9681b);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("File{filename=");
        m8752j.append(this.f9680a);
        m8752j.append(", contents=");
        m8752j.append(Arrays.toString(this.f9681b));
        m8752j.append("}");
        return m8752j.toString();
    }
}
