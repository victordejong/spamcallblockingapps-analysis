package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.KeySpec;
import org.spongycastle.pqc.crypto.rainbow.Layer;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec.class */
public class RainbowPrivateKeySpec implements KeySpec {
    private short[][] A1inv;
    private short[][] A2inv;

    /* renamed from: b1 */
    private short[] f1794b1;

    /* renamed from: b2 */
    private short[] f1795b2;
    private Layer[] layers;

    /* renamed from: vi */
    private int[] f1796vi;

    public RainbowPrivateKeySpec(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.A1inv = sArr;
        this.f1794b1 = sArr2;
        this.A2inv = sArr3;
        this.f1795b2 = sArr4;
        this.f1796vi = iArr;
        this.layers = layerArr;
    }

    public short[] getB1() {
        return this.f1794b1;
    }

    public short[] getB2() {
        return this.f1795b2;
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
        return this.f1796vi;
    }
}
