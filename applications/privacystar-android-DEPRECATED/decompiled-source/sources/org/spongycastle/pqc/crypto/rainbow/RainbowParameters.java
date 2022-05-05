package org.spongycastle.pqc.crypto.rainbow;

import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/rainbow/RainbowParameters.class */
public class RainbowParameters implements CipherParameters {
    private final int[] DEFAULT_VI;

    /* renamed from: vi */
    private int[] f1774vi;

    public RainbowParameters() {
        this.DEFAULT_VI = new int[]{6, 12, 17, 22, 33};
        this.f1774vi = this.DEFAULT_VI;
    }

    public RainbowParameters(int[] iArr) {
        this.DEFAULT_VI = new int[]{6, 12, 17, 22, 33};
        this.f1774vi = iArr;
        try {
            checkParams();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void checkParams() throws Exception {
        if (this.f1774vi == null) {
            throw new Exception("no layers defined.");
        } else if (this.f1774vi.length > 1) {
            int i = 0;
            while (i < this.f1774vi.length - 1) {
                int i2 = this.f1774vi[i];
                int i3 = i + 1;
                i = i3;
                if (i2 >= this.f1774vi[i3]) {
                    throw new Exception("v[i] has to be smaller than v[i+1]");
                }
            }
        } else {
            throw new Exception("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
    }

    public int getDocLength() {
        return this.f1774vi[this.f1774vi.length - 1] - this.f1774vi[0];
    }

    public int getNumOfLayers() {
        return this.f1774vi.length - 1;
    }

    public int[] getVi() {
        return this.f1774vi;
    }
}
