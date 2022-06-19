package p261v2;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import p250u2.AbstractC4463f;
/* renamed from: v2.a */
/* loaded from: classes-dex2jar.jar:v2/a.class */
public final class C4587a extends AbstractC4593f {

    /* renamed from: a */
    public final Iterable<AbstractC4463f> f14176a;

    /* renamed from: b */
    public final byte[] f14177b;

    public C4587a(Iterable iterable, byte[] bArr, C4588a c4588a) {
        this.f14176a = iterable;
        this.f14177b = bArr;
    }

    @Override // p261v2.AbstractC4593f
    /* renamed from: a */
    public Iterable<AbstractC4463f> mo750a() {
        return this.f14176a;
    }

    @Override // p261v2.AbstractC4593f
    /* renamed from: b */
    public byte[] mo749b() {
        return this.f14177b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f14177b, r0 instanceof p261v2.C4587a ? ((p261v2.C4587a) r0).f14177b : r0.mo749b()) != false) goto L16;
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
            boolean r0 = r0 instanceof p261v2.AbstractC4593f
            if (r0 == 0) goto L4e
            r0 = r4
            v2.f r0 = (p261v2.AbstractC4593f) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<u2.f> r0 = r0.f14176a
            r1 = r4
            java.lang.Iterable r1 = r1.mo750a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.f14177b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p261v2.C4587a
            if (r0 == 0) goto L3a
            r0 = r4
            v2.a r0 = (p261v2.C4587a) r0
            byte[] r0 = r0.f14177b
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.mo749b()
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
        throw new UnsupportedOperationException("Method not decompiled: p261v2.C4587a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f14176a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14177b);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("BackendRequest{events=");
        m8752j.append(this.f14176a);
        m8752j.append(", extras=");
        m8752j.append(Arrays.toString(this.f14177b));
        m8752j.append("}");
        return m8752j.toString();
    }
}
