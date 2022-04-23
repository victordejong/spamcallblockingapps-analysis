package p131c.p161d.p170b.p224d.p252g.p253a;

import java.security.InvalidKeyException;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.a.m60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/m60.class */
public final class m60 extends f60 {
    public m60(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f60
    /* renamed from: a */
    public final int mo26690a() {
        return 24;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f60
    /* renamed from: a */
    public final int[] mo26689a(int[] iArr, int i) {
        if (iArr.length == 6) {
            int[] iArr2 = new int[16];
            f60.m27016a(r0, this.f12883a);
            int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr[0], iArr[1], iArr[2], iArr[3]};
            f60.m27018a(iArr3);
            f60.m27016a(iArr2, Arrays.copyOf(iArr3, 8));
            iArr2[12] = i;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
