package org.spongycastle.pqc.crypto.rainbow;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters.class */
public class RainbowPrivateKeyParameters extends RainbowKeyParameters {
    private short[][] A1inv;
    private short[][] A2inv;

    /* renamed from: b1 */
    private short[] f1775b1;

    /* renamed from: b2 */
    private short[] f1776b2;
    private Layer[] layers;

    /* renamed from: vi */
    private int[] f1777vi;

    public RainbowPrivateKeyParameters(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        super(true, iArr[iArr.length - 1] - iArr[0]);
        this.A1inv = sArr;
        this.f1775b1 = sArr2;
        this.A2inv = sArr3;
        this.f1776b2 = sArr4;
        this.f1777vi = iArr;
        this.layers = layerArr;
    }

    public short[] getB1() {
        return this.f1775b1;
    }

    public short[] getB2() {
        return this.f1776b2;
    }

    public short[][] getInvA1() {
        return this.A1inv;
    }

    public short[][] getInvA2() {
        return this.A2inv;
    }

    public Layer[] getLayers() {
        return this.layers;
    }

    public int[] getVi() {
        return this.f1777vi;
    }
}
