package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier.class */
public class BasicGCMMultiplier implements GCMMultiplier {

    /* renamed from: H */
    private byte[] f7554H;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        this.f7554H = Arrays.clone(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        GCMUtil.multiply(bArr, this.f7554H);
    }
}
