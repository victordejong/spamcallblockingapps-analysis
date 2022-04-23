package p131c.p161d.p170b.p224d.p252g.p253a;

import java.security.InvalidKeyException;
/* renamed from: c.d.b.d.g.a.g60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g60.class */
public final class g60 extends f60 {
    public g60(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f60
    /* renamed from: a */
    public final int mo26690a() {
        return 12;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f60
    /* renamed from: a */
    public final int[] mo26689a(int[] iArr, int i) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            f60.m27016a(iArr2, this.f12883a);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
