package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import java.util.Arrays;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23366b;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/d.class */
public class C23738d extends AbstractC23756v {

    /* renamed from: b */
    public static final C23738d f65789b = new C23738d(new byte[0]);

    /* renamed from: a */
    public final byte[] f65790a;

    public C23738d(byte[] bArr) {
        this.f65790a = bArr;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_EMBEDDED_OBJECT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k {
        C23344a c23344a = abstractC23425a0.f64991a.f65071b.f65032k;
        byte[] bArr = this.f65790a;
        abstractC23372g.mo5870S(c23344a, bArr, 0, bArr.length);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23738d)) {
            return false;
        }
        return Arrays.equals(((C23738d) obj).f65790a, this.f65790a);
    }

    public int hashCode() {
        byte[] bArr = this.f65790a;
        return bArr == null ? -1 : bArr.length;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        return C23366b.f64606b.m7262g(this.f65790a, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: v */
    public EnumC23747m mo6118v() {
        return EnumC23747m.BINARY;
    }
}
