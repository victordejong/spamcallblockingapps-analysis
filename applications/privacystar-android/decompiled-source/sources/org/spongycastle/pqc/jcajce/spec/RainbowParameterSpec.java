package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/spec/RainbowParameterSpec.class */
public class RainbowParameterSpec implements AlgorithmParameterSpec {
    private static final int[] DEFAULT_VI = {6, 12, 17, 22, 33};

    /* renamed from: vi */
    private int[] f1793vi;

    public RainbowParameterSpec() {
        this.f1793vi = DEFAULT_VI;
    }

    public RainbowParameterSpec(int[] iArr) {
        this.f1793vi = iArr;
        checkParams();
    }

    private void checkParams() {
        if (this.f1793vi == null) {
            throw new IllegalArgumentException("no layers defined.");
        } else if (this.f1793vi.length > 1) {
            int i = 0;
            while (i < this.f1793vi.length - 1) {
                int i2 = this.f1793vi[i];
                int i3 = i + 1;
                i = i3;
                if (i2 >= this.f1793vi[i3]) {
                    throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
                }
            }
        } else {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
    }

    public int getDocumentLength() {
        return this.f1793vi[this.f1793vi.length - 1] - this.f1793vi[0];
    }

    public int getNumOfLayers() {
        return this.f1793vi.length - 1;
    }

    public int[] getVi() {
        return Arrays.clone(this.f1793vi);
    }
}
