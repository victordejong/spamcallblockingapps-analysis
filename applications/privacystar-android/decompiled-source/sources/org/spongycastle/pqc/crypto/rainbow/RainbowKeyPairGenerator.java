package org.spongycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.rainbow.util.ComputeInField;
import org.spongycastle.pqc.crypto.rainbow.util.GF2Field;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator.class */
public class RainbowKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: A1 */
    private short[][] f1768A1;
    private short[][] A1inv;

    /* renamed from: A2 */
    private short[][] f1769A2;
    private short[][] A2inv;

    /* renamed from: b1 */
    private short[] f1770b1;

    /* renamed from: b2 */
    private short[] f1771b2;
    private boolean initialized = false;
    private Layer[] layers;
    private int numOfLayers;
    private short[][] pub_quadratic;
    private short[] pub_scalar;
    private short[][] pub_singular;
    private RainbowKeyGenerationParameters rainbowParams;

    /* renamed from: sr */
    private SecureRandom f1772sr;

    /* renamed from: vi */
    private int[] f1773vi;

    private void compactPublicKey(short[][][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        this.pub_quadratic = new short[length][((length2 + 1) * length2) / 2];
        for (int i = 0; i < length; i++) {
            int i2 = 0;
            for (int i3 = 0; i3 < length2; i3++) {
                for (int i4 = i3; i4 < length2; i4++) {
                    if (i4 == i3) {
                        this.pub_quadratic[i][i2] = sArr[i][i3][i4];
                    } else {
                        this.pub_quadratic[i][i2] = GF2Field.addElem(sArr[i][i3][i4], sArr[i][i4][i3]);
                    }
                    i2++;
                }
            }
        }
    }

    private void computePublicKey() {
        ComputeInField computeInField = new ComputeInField();
        int i = this.f1773vi[this.f1773vi.length - 1] - this.f1773vi[0];
        int i2 = this.f1773vi[this.f1773vi.length - 1];
        short[][][] sArr = new short[i][i2][i2];
        this.pub_singular = new short[i][i2];
        this.pub_scalar = new short[i];
        short[] sArr2 = new short[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.layers.length; i4++) {
            short[][][] coeffAlpha = this.layers[i4].getCoeffAlpha();
            short[][][] coeffBeta = this.layers[i4].getCoeffBeta();
            short[][] coeffGamma = this.layers[i4].getCoeffGamma();
            short[] coeffEta = this.layers[i4].getCoeffEta();
            int length = coeffAlpha[0].length;
            int length2 = coeffBeta[0].length;
            for (int i5 = 0; i5 < length; i5++) {
                int i6 = 0;
                while (true) {
                    if (i6 >= length) {
                        break;
                    }
                    for (int i7 = 0; i7 < length2; i7++) {
                        short s = coeffAlpha[i5][i6][i7];
                        int i8 = i6 + length2;
                        short[] multVect = computeInField.multVect(s, this.f1769A2[i8]);
                        int i9 = i3 + i5;
                        sArr[i9] = computeInField.addSquareMatrix(sArr[i9], computeInField.multVects(multVect, this.f1769A2[i7]));
                        this.pub_singular[i9] = computeInField.addVect(computeInField.multVect(this.f1771b2[i7], multVect), this.pub_singular[i9]);
                        this.pub_singular[i9] = computeInField.addVect(computeInField.multVect(this.f1771b2[i8], computeInField.multVect(coeffAlpha[i5][i6][i7], this.f1769A2[i7])), this.pub_singular[i9]);
                        this.pub_scalar[i9] = GF2Field.addElem(this.pub_scalar[i9], GF2Field.multElem(GF2Field.multElem(coeffAlpha[i5][i6][i7], this.f1771b2[i8]), this.f1771b2[i7]));
                    }
                    i6++;
                }
                for (int i10 = 0; i10 < length2; i10++) {
                    for (int i11 = 0; i11 < length2; i11++) {
                        short[] multVect2 = computeInField.multVect(coeffBeta[i5][i10][i11], this.f1769A2[i10]);
                        int i12 = i3 + i5;
                        sArr[i12] = computeInField.addSquareMatrix(sArr[i12], computeInField.multVects(multVect2, this.f1769A2[i11]));
                        this.pub_singular[i12] = computeInField.addVect(computeInField.multVect(this.f1771b2[i11], multVect2), this.pub_singular[i12]);
                        this.pub_singular[i12] = computeInField.addVect(computeInField.multVect(this.f1771b2[i10], computeInField.multVect(coeffBeta[i5][i10][i11], this.f1769A2[i11])), this.pub_singular[i12]);
                        this.pub_scalar[i12] = GF2Field.addElem(this.pub_scalar[i12], GF2Field.multElem(GF2Field.multElem(coeffBeta[i5][i10][i11], this.f1771b2[i10]), this.f1771b2[i11]));
                    }
                }
                for (int i13 = 0; i13 < length2 + length; i13++) {
                    short[] multVect3 = computeInField.multVect(coeffGamma[i5][i13], this.f1769A2[i13]);
                    int i14 = i3 + i5;
                    this.pub_singular[i14] = computeInField.addVect(multVect3, this.pub_singular[i14]);
                    this.pub_scalar[i14] = GF2Field.addElem(this.pub_scalar[i14], GF2Field.multElem(coeffGamma[i5][i13], this.f1771b2[i13]));
                }
                int i15 = i3 + i5;
                this.pub_scalar[i15] = GF2Field.addElem(this.pub_scalar[i15], coeffEta[i5]);
            }
            i3 += length;
        }
        short[][][] sArr3 = new short[i][i2][i2];
        short[][] sArr4 = new short[i][i2];
        short[] sArr5 = new short[i];
        for (int i16 = 0; i16 < i; i16++) {
            for (int i17 = 0; i17 < this.f1768A1.length; i17++) {
                sArr3[i16] = computeInField.addSquareMatrix(sArr3[i16], computeInField.multMatrix(this.f1768A1[i16][i17], sArr[i17]));
                sArr4[i16] = computeInField.addVect(sArr4[i16], computeInField.multVect(this.f1768A1[i16][i17], this.pub_singular[i17]));
                sArr5[i16] = GF2Field.addElem(sArr5[i16], GF2Field.multElem(this.f1768A1[i16][i17], this.pub_scalar[i17]));
            }
            sArr5[i16] = GF2Field.addElem(sArr5[i16], this.f1770b1[i16]);
        }
        this.pub_singular = sArr4;
        this.pub_scalar = sArr5;
        compactPublicKey(sArr3);
    }

    private void generateF() {
        this.layers = new Layer[this.numOfLayers];
        int i = 0;
        while (i < this.numOfLayers) {
            Layer[] layerArr = this.layers;
            int i2 = this.f1773vi[i];
            int i3 = i + 1;
            layerArr[i] = new Layer(i2, this.f1773vi[i3], this.f1772sr);
            i = i3;
        }
    }

    private void generateL1() {
        int i = this.f1773vi[this.f1773vi.length - 1] - this.f1773vi[0];
        this.f1768A1 = new short[i][i];
        this.A1inv = null;
        ComputeInField computeInField = new ComputeInField();
        while (this.A1inv == null) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < i; i3++) {
                    this.f1768A1[i2][i3] = (short) (this.f1772sr.nextInt() & 255);
                }
            }
            this.A1inv = computeInField.inverse(this.f1768A1);
        }
        this.f1770b1 = new short[i];
        for (int i4 = 0; i4 < i; i4++) {
            this.f1770b1[i4] = (short) (this.f1772sr.nextInt() & 255);
        }
    }

    private void generateL2() {
        int i;
        int i2 = this.f1773vi[this.f1773vi.length - 1];
        this.f1769A2 = new short[i2][i2];
        this.A2inv = null;
        ComputeInField computeInField = new ComputeInField();
        while (true) {
            if (this.A2inv != null) {
                break;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    this.f1769A2[i3][i4] = (short) (this.f1772sr.nextInt() & 255);
                }
            }
            this.A2inv = computeInField.inverse(this.f1769A2);
        }
        this.f1771b2 = new short[i2];
        for (i = 0; i < i2; i++) {
            this.f1771b2[i] = (short) (this.f1772sr.nextInt() & 255);
        }
    }

    private void initializeDefault() {
        initialize(new RainbowKeyGenerationParameters(new SecureRandom(), new RainbowParameters()));
    }

    private void keygen() {
        generateL1();
        generateL2();
        generateF();
        computePublicKey();
    }

    public AsymmetricCipherKeyPair genKeyPair() {
        if (!this.initialized) {
            initializeDefault();
        }
        keygen();
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new RainbowPublicKeyParameters(this.f1773vi[this.f1773vi.length - 1] - this.f1773vi[0], this.pub_quadratic, this.pub_singular, this.pub_scalar), (AsymmetricKeyParameter) new RainbowPrivateKeyParameters(this.A1inv, this.f1770b1, this.A2inv, this.f1771b2, this.f1773vi, this.layers));
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        this.rainbowParams = (RainbowKeyGenerationParameters) keyGenerationParameters;
        this.f1772sr = this.rainbowParams.getRandom();
        this.f1773vi = this.rainbowParams.getParameters().getVi();
        this.numOfLayers = this.rainbowParams.getParameters().getNumOfLayers();
        this.initialized = true;
    }
}
