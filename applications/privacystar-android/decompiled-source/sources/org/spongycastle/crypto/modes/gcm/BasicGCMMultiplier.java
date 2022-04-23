package org.spongycastle.crypto.modes.gcm;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/gcm/BasicGCMMultiplier.class */
public class BasicGCMMultiplier implements GCMMultiplier {

    /* renamed from: H */
    private int[] f1374H;

    @Override // org.spongycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        this.f1374H = GCMUtil.asInts(bArr);
    }

    @Override // org.spongycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        int[] asInts = GCMUtil.asInts(bArr);
        GCMUtil.multiply(asInts, this.f1374H);
        GCMUtil.asBytes(asInts, bArr);
    }
}
