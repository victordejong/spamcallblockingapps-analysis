package org.spongycastle.pqc.crypto.gmss;

import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSignature;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters.class */
public class GMSSPrivateKeyParameters extends GMSSKeyParameters {

    /* renamed from: K */
    private int[] f1677K;
    private byte[][][] currentAuthPaths;
    private Vector[][] currentRetain;
    private byte[][] currentRootSig;
    private byte[][] currentSeeds;
    private Vector[] currentStack;
    private Treehash[][] currentTreehash;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private int[] index;
    private byte[][][] keep;
    private int mdLength;
    private Digest messDigestTrees;
    private int[] minTreehash;
    private byte[][][] nextAuthPaths;
    private GMSSLeaf[] nextNextLeaf;
    private GMSSRootCalc[] nextNextRoot;
    private byte[][] nextNextSeeds;
    private Vector[][] nextRetain;
    private byte[][] nextRoot;
    private GMSSRootSig[] nextRootSig;
    private Vector[] nextStack;
    private Treehash[][] nextTreehash;
    private int numLayer;
    private int[] numLeafs;
    private int[] otsIndex;
    private GMSSLeaf[] upperLeaf;
    private GMSSLeaf[] upperTreehashLeaf;
    private boolean used;

    private GMSSPrivateKeyParameters(GMSSPrivateKeyParameters gMSSPrivateKeyParameters) {
        super(true, gMSSPrivateKeyParameters.getParameters());
        this.used = false;
        this.index = Arrays.clone(gMSSPrivateKeyParameters.index);
        this.currentSeeds = Arrays.clone(gMSSPrivateKeyParameters.currentSeeds);
        this.nextNextSeeds = Arrays.clone(gMSSPrivateKeyParameters.nextNextSeeds);
        this.currentAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.currentAuthPaths);
        this.nextAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.nextAuthPaths);
        this.currentTreehash = gMSSPrivateKeyParameters.currentTreehash;
        this.nextTreehash = gMSSPrivateKeyParameters.nextTreehash;
        this.currentStack = gMSSPrivateKeyParameters.currentStack;
        this.nextStack = gMSSPrivateKeyParameters.nextStack;
        this.currentRetain = gMSSPrivateKeyParameters.currentRetain;
        this.nextRetain = gMSSPrivateKeyParameters.nextRetain;
        this.keep = Arrays.clone(gMSSPrivateKeyParameters.keep);
        this.nextNextLeaf = gMSSPrivateKeyParameters.nextNextLeaf;
        this.upperLeaf = gMSSPrivateKeyParameters.upperLeaf;
        this.upperTreehashLeaf = gMSSPrivateKeyParameters.upperTreehashLeaf;
        this.minTreehash = gMSSPrivateKeyParameters.minTreehash;
        this.gmssPS = gMSSPrivateKeyParameters.gmssPS;
        this.nextRoot = Arrays.clone(gMSSPrivateKeyParameters.nextRoot);
        this.nextNextRoot = gMSSPrivateKeyParameters.nextNextRoot;
        this.currentRootSig = gMSSPrivateKeyParameters.currentRootSig;
        this.nextRootSig = gMSSPrivateKeyParameters.nextRootSig;
        this.digestProvider = gMSSPrivateKeyParameters.digestProvider;
        this.heightOfTrees = gMSSPrivateKeyParameters.heightOfTrees;
        this.otsIndex = gMSSPrivateKeyParameters.otsIndex;
        this.f1677K = gMSSPrivateKeyParameters.f1677K;
        this.numLayer = gMSSPrivateKeyParameters.numLayer;
        this.messDigestTrees = gMSSPrivateKeyParameters.messDigestTrees;
        this.mdLength = gMSSPrivateKeyParameters.mdLength;
        this.gmssRandom = gMSSPrivateKeyParameters.gmssRandom;
        this.numLeafs = gMSSPrivateKeyParameters.numLeafs;
    }

    /* JADX WARN: Type inference failed for: r1v125, types: [byte[][], byte[][][]] */
    public GMSSPrivateKeyParameters(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        super(true, gMSSParameters);
        this.used = false;
        this.messDigestTrees = gMSSDigestProvider.get();
        this.mdLength = this.messDigestTrees.getDigestSize();
        this.gmssPS = gMSSParameters;
        this.otsIndex = gMSSParameters.getWinternitzParameter();
        this.f1677K = gMSSParameters.getK();
        this.heightOfTrees = gMSSParameters.getHeightOfTrees();
        this.numLayer = this.gmssPS.getNumOfLayers();
        if (iArr == null) {
            this.index = new int[this.numLayer];
            for (int i = 0; i < this.numLayer; i++) {
                this.index[i] = 0;
            }
        } else {
            this.index = iArr;
        }
        this.currentSeeds = bArr;
        this.nextNextSeeds = bArr2;
        this.currentAuthPaths = bArr3;
        this.nextAuthPaths = bArr4;
        if (bArr5 == null) {
            this.keep = new byte[this.numLayer];
            for (int i2 = 0; i2 < this.numLayer; i2++) {
                this.keep[i2] = new byte[(int) Math.floor(this.heightOfTrees[i2] / 2)][this.mdLength];
            }
        } else {
            this.keep = bArr5;
        }
        if (vectorArr == null) {
            this.currentStack = new Vector[this.numLayer];
            for (int i3 = 0; i3 < this.numLayer; i3++) {
                this.currentStack[i3] = new Vector();
            }
        } else {
            this.currentStack = vectorArr;
        }
        if (vectorArr2 == null) {
            this.nextStack = new Vector[this.numLayer - 1];
            for (int i4 = 0; i4 < this.numLayer - 1; i4++) {
                this.nextStack[i4] = new Vector();
            }
        } else {
            this.nextStack = vectorArr2;
        }
        this.currentTreehash = treehashArr;
        this.nextTreehash = treehashArr2;
        this.currentRetain = vectorArr3;
        this.nextRetain = vectorArr4;
        this.nextRoot = bArr6;
        this.digestProvider = gMSSDigestProvider;
        if (gMSSRootCalcArr == null) {
            this.nextNextRoot = new GMSSRootCalc[this.numLayer - 1];
            int i5 = 0;
            while (i5 < this.numLayer - 1) {
                int i6 = i5 + 1;
                this.nextNextRoot[i5] = new GMSSRootCalc(this.heightOfTrees[i6], this.f1677K[i6], this.digestProvider);
                i5 = i6;
            }
        } else {
            this.nextNextRoot = gMSSRootCalcArr;
        }
        this.currentRootSig = bArr7;
        this.numLeafs = new int[this.numLayer];
        for (int i7 = 0; i7 < this.numLayer; i7++) {
            this.numLeafs[i7] = 1 << this.heightOfTrees[i7];
        }
        this.gmssRandom = new GMSSRandom(this.messDigestTrees);
        if (this.numLayer <= 1) {
            this.nextNextLeaf = new GMSSLeaf[0];
        } else if (gMSSLeafArr == null) {
            this.nextNextLeaf = new GMSSLeaf[this.numLayer - 2];
            int i8 = 0;
            while (i8 < this.numLayer - 2) {
                int i9 = i8 + 1;
                this.nextNextLeaf[i8] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i9], this.numLeafs[i8 + 2], this.nextNextSeeds[i8]);
                i8 = i9;
            }
        } else {
            this.nextNextLeaf = gMSSLeafArr;
        }
        if (gMSSLeafArr2 == null) {
            this.upperLeaf = new GMSSLeaf[this.numLayer - 1];
            int i10 = 0;
            while (i10 < this.numLayer - 1) {
                GMSSLeaf[] gMSSLeafArr4 = this.upperLeaf;
                Digest digest = gMSSDigestProvider.get();
                int i11 = this.otsIndex[i10];
                int i12 = i10 + 1;
                gMSSLeafArr4[i10] = new GMSSLeaf(digest, i11, this.numLeafs[i12], this.currentSeeds[i10]);
                i10 = i12;
            }
        } else {
            this.upperLeaf = gMSSLeafArr2;
        }
        if (gMSSLeafArr3 == null) {
            this.upperTreehashLeaf = new GMSSLeaf[this.numLayer - 1];
            int i13 = 0;
            while (i13 < this.numLayer - 1) {
                GMSSLeaf[] gMSSLeafArr5 = this.upperTreehashLeaf;
                Digest digest2 = gMSSDigestProvider.get();
                int i14 = this.otsIndex[i13];
                int i15 = i13 + 1;
                gMSSLeafArr5[i13] = new GMSSLeaf(digest2, i14, this.numLeafs[i15]);
                i13 = i15;
            }
        } else {
            this.upperTreehashLeaf = gMSSLeafArr3;
        }
        if (iArr2 == null) {
            this.minTreehash = new int[this.numLayer - 1];
            for (int i16 = 0; i16 < this.numLayer - 1; i16++) {
                this.minTreehash[i16] = -1;
            }
        } else {
            this.minTreehash = iArr2;
        }
        byte[] bArr8 = new byte[this.mdLength];
        byte[] bArr9 = new byte[this.mdLength];
        if (gMSSRootSigArr == null) {
            this.nextRootSig = new GMSSRootSig[this.numLayer - 1];
            int i17 = 0;
            while (i17 < this.numLayer - 1) {
                System.arraycopy(bArr[i17], 0, bArr8, 0, this.mdLength);
                this.gmssRandom.nextSeed(bArr8);
                byte[] nextSeed = this.gmssRandom.nextSeed(bArr8);
                GMSSRootSig[] gMSSRootSigArr2 = this.nextRootSig;
                Digest digest3 = gMSSDigestProvider.get();
                int i18 = this.otsIndex[i17];
                int i19 = i17 + 1;
                gMSSRootSigArr2[i17] = new GMSSRootSig(digest3, i18, this.heightOfTrees[i19]);
                this.nextRootSig[i17].initSign(nextSeed, bArr6[i17]);
                i17 = i19;
            }
            return;
        }
        this.nextRootSig = gMSSRootSigArr;
    }

    public GMSSPrivateKeyParameters(byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][] bArr5, byte[][] bArr6, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        this(null, bArr, bArr2, bArr3, bArr4, null, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, null, null, null, null, bArr5, null, bArr6, null, gMSSParameters, gMSSDigestProvider);
    }

    private void computeAuthPaths(int i) {
        int i2;
        int i3;
        byte[] bArr;
        int i4 = this.index[i];
        int i5 = this.heightOfTrees[i];
        int i6 = this.f1677K[i];
        int i7 = 0;
        while (true) {
            i2 = i5 - i6;
            if (i7 >= i2) {
                break;
            }
            this.currentTreehash[i][i7].updateNextSeed(this.gmssRandom);
            i7++;
        }
        int heightOfPhi = heightOfPhi(i4);
        byte[] bArr2 = new byte[this.mdLength];
        byte[] nextSeed = this.gmssRandom.nextSeed(this.currentSeeds[i]);
        int i8 = (i4 >>> (heightOfPhi + 1)) & 1;
        byte[] bArr3 = new byte[this.mdLength];
        int i9 = i5 - 1;
        if (heightOfPhi < i9 && i8 == 0) {
            System.arraycopy(this.currentAuthPaths[i][heightOfPhi], 0, bArr3, 0, this.mdLength);
        }
        byte[] bArr4 = new byte[this.mdLength];
        if (heightOfPhi == 0) {
            if (i == this.numLayer - 1) {
                bArr = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i]).getPublicKey();
            } else {
                byte[] bArr5 = new byte[this.mdLength];
                System.arraycopy(this.currentSeeds[i], 0, bArr5, 0, this.mdLength);
                this.gmssRandom.nextSeed(bArr5);
                bArr = this.upperLeaf[i].getLeaf();
                this.upperLeaf[i].initLeafCalc(bArr5);
            }
            System.arraycopy(bArr, 0, this.currentAuthPaths[i][0], 0, this.mdLength);
        } else {
            byte[] bArr6 = new byte[this.mdLength << 1];
            System.arraycopy(this.currentAuthPaths[i][heightOfPhi - 1], 0, bArr6, 0, this.mdLength);
            System.arraycopy(this.keep[i][(int) Math.floor(i3 / 2)], 0, bArr6, this.mdLength, this.mdLength);
            this.messDigestTrees.update(bArr6, 0, bArr6.length);
            this.currentAuthPaths[i][heightOfPhi] = new byte[this.messDigestTrees.getDigestSize()];
            this.messDigestTrees.doFinal(this.currentAuthPaths[i][heightOfPhi], 0);
            for (int i10 = 0; i10 < heightOfPhi; i10++) {
                if (i10 < i2) {
                    if (this.currentTreehash[i][i10].wasFinished()) {
                        System.arraycopy(this.currentTreehash[i][i10].getFirstNode(), 0, this.currentAuthPaths[i][i10], 0, this.mdLength);
                        this.currentTreehash[i][i10].destroy();
                    } else {
                        System.err.println("Treehash (" + i + "," + i10 + ") not finished when needed in AuthPathComputation");
                    }
                }
                if (i10 < i9 && i10 >= i2) {
                    int i11 = i10 - i2;
                    if (this.currentRetain[i][i11].size() > 0) {
                        System.arraycopy(this.currentRetain[i][i11].lastElement(), 0, this.currentAuthPaths[i][i10], 0, this.mdLength);
                        this.currentRetain[i][i11].removeElementAt(this.currentRetain[i][i11].size() - 1);
                    }
                }
                if (i10 < i2 && ((1 << i10) * 3) + i4 < this.numLeafs[i]) {
                    this.currentTreehash[i][i10].initialize();
                }
            }
        }
        if (heightOfPhi < i9 && i8 == 0) {
            System.arraycopy(bArr3, 0, this.keep[i][(int) Math.floor(heightOfPhi / 2)], 0, this.mdLength);
        }
        if (i == this.numLayer - 1) {
            for (int i12 = 1; i12 <= i2 / 2; i12++) {
                int minTreehashIndex = getMinTreehashIndex(i);
                if (minTreehashIndex >= 0) {
                    try {
                        byte[] bArr7 = new byte[this.mdLength];
                        System.arraycopy(this.currentTreehash[i][minTreehashIndex].getSeedActive(), 0, bArr7, 0, this.mdLength);
                        this.currentTreehash[i][minTreehashIndex].update(this.gmssRandom, new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr7), this.digestProvider.get(), this.otsIndex[i]).getPublicKey());
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
            }
            return;
        }
        this.minTreehash[i] = getMinTreehashIndex(i);
    }

    private int getMinTreehashIndex(int i) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.heightOfTrees[i] - this.f1677K[i]; i3++) {
            i2 = i2;
            if (this.currentTreehash[i][i3].wasInitialized()) {
                i2 = i2;
                if (!this.currentTreehash[i][i3].wasFinished()) {
                    if (i2 != -1) {
                        i2 = i2;
                        if (this.currentTreehash[i][i3].getLowestNodeHeight() >= this.currentTreehash[i][i2].getLowestNodeHeight()) {
                        }
                    }
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    private int heightOfPhi(int i) {
        if (i == 0) {
            return -1;
        }
        int i2 = 1;
        int i3 = 0;
        while (i % i2 == 0) {
            i2 *= 2;
            i3++;
        }
        return i3 - 1;
    }

    private void nextKey(int i) {
        if (i == this.numLayer - 1) {
            int[] iArr = this.index;
            iArr[i] = iArr[i] + 1;
        }
        if (this.index[i] != this.numLeafs[i]) {
            updateKey(i);
        } else if (this.numLayer != 1) {
            nextTree(i);
            this.index[i] = 0;
        }
    }

    private void nextTree(int i) {
        int i2;
        if (i > 0) {
            int[] iArr = this.index;
            int i3 = i - 1;
            iArr[i3] = iArr[i3] + 1;
            int i4 = i;
            boolean z = true;
            do {
                i2 = i4 - 1;
                if (this.index[i2] < this.numLeafs[i2]) {
                    z = false;
                }
                if (!z) {
                    break;
                }
                i4 = i2;
                z = z;
            } while (i2 > 0);
            if (!z) {
                this.gmssRandom.nextSeed(this.currentSeeds[i]);
                this.nextRootSig[i3].updateSign();
                if (i > 1) {
                    int i5 = i3 - 1;
                    this.nextNextLeaf[i5] = this.nextNextLeaf[i5].nextLeaf();
                }
                this.upperLeaf[i3] = this.upperLeaf[i3].nextLeaf();
                if (this.minTreehash[i3] >= 0) {
                    this.upperTreehashLeaf[i3] = this.upperTreehashLeaf[i3].nextLeaf();
                    try {
                        this.currentTreehash[i3][this.minTreehash[i3]].update(this.gmssRandom, this.upperTreehashLeaf[i3].getLeaf());
                        this.currentTreehash[i3][this.minTreehash[i3]].wasFinished();
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
                updateNextNextAuthRoot(i);
                this.currentRootSig[i3] = this.nextRootSig[i3].getSig();
                for (int i6 = 0; i6 < this.heightOfTrees[i] - this.f1677K[i]; i6++) {
                    this.currentTreehash[i][i6] = this.nextTreehash[i3][i6];
                    this.nextTreehash[i3][i6] = this.nextNextRoot[i3].getTreehash()[i6];
                }
                for (int i7 = 0; i7 < this.heightOfTrees[i]; i7++) {
                    System.arraycopy(this.nextAuthPaths[i3][i7], 0, this.currentAuthPaths[i][i7], 0, this.mdLength);
                    System.arraycopy(this.nextNextRoot[i3].getAuthPath()[i7], 0, this.nextAuthPaths[i3][i7], 0, this.mdLength);
                }
                for (int i8 = 0; i8 < this.f1677K[i] - 1; i8++) {
                    this.currentRetain[i][i8] = this.nextRetain[i3][i8];
                    this.nextRetain[i3][i8] = this.nextNextRoot[i3].getRetain()[i8];
                }
                this.currentStack[i] = this.nextStack[i3];
                this.nextStack[i3] = this.nextNextRoot[i3].getStack();
                this.nextRoot[i3] = this.nextNextRoot[i3].getRoot();
                byte[] bArr = new byte[this.mdLength];
                byte[] bArr2 = new byte[this.mdLength];
                System.arraycopy(this.currentSeeds[i3], 0, bArr2, 0, this.mdLength);
                this.gmssRandom.nextSeed(bArr2);
                this.gmssRandom.nextSeed(bArr2);
                this.nextRootSig[i3].initSign(this.gmssRandom.nextSeed(bArr2), this.nextRoot[i3]);
                nextKey(i3);
            }
        }
    }

    private void updateKey(int i) {
        computeAuthPaths(i);
        if (i > 0) {
            if (i > 1) {
                int i2 = (i - 1) - 1;
                this.nextNextLeaf[i2] = this.nextNextLeaf[i2].nextLeaf();
            }
            int i3 = i - 1;
            this.upperLeaf[i3] = this.upperLeaf[i3].nextLeaf();
            int floor = (int) Math.floor((getNumLeafs(i) * 2) / (this.heightOfTrees[i3] - this.f1677K[i3]));
            if (this.index[i] % floor == 1) {
                if (this.index[i] > 1 && this.minTreehash[i3] >= 0) {
                    try {
                        this.currentTreehash[i3][this.minTreehash[i3]].update(this.gmssRandom, this.upperTreehashLeaf[i3].getLeaf());
                        this.currentTreehash[i3][this.minTreehash[i3]].wasFinished();
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
                this.minTreehash[i3] = getMinTreehashIndex(i3);
                if (this.minTreehash[i3] >= 0) {
                    this.upperTreehashLeaf[i3] = new GMSSLeaf(this.digestProvider.get(), this.otsIndex[i3], floor, this.currentTreehash[i3][this.minTreehash[i3]].getSeedActive());
                    this.upperTreehashLeaf[i3] = this.upperTreehashLeaf[i3].nextLeaf();
                }
            } else if (this.minTreehash[i3] >= 0) {
                this.upperTreehashLeaf[i3] = this.upperTreehashLeaf[i3].nextLeaf();
            }
            this.nextRootSig[i3].updateSign();
            if (this.index[i] == 1) {
                this.nextNextRoot[i3].initialize(new Vector());
            }
            updateNextNextAuthRoot(i);
        }
    }

    private void updateNextNextAuthRoot(int i) {
        byte[] bArr = new byte[this.mdLength];
        int i2 = i - 1;
        byte[] nextSeed = this.gmssRandom.nextSeed(this.nextNextSeeds[i2]);
        if (i == this.numLayer - 1) {
            this.nextNextRoot[i2].update(this.nextNextSeeds[i2], new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i]).getPublicKey());
            return;
        }
        this.nextNextRoot[i2].update(this.nextNextSeeds[i2], this.nextNextLeaf[i2].getLeaf());
        this.nextNextLeaf[i2].initLeafCalc(this.nextNextSeeds[i2]);
    }

    public byte[][][] getCurrentAuthPaths() {
        return Arrays.clone(this.currentAuthPaths);
    }

    public byte[][] getCurrentSeeds() {
        return Arrays.clone(this.currentSeeds);
    }

    public int getIndex(int i) {
        return this.index[i];
    }

    public int[] getIndex() {
        return this.index;
    }

    public GMSSDigestProvider getName() {
        return this.digestProvider;
    }

    public int getNumLeafs(int i) {
        return this.numLeafs[i];
    }

    public byte[] getSubtreeRootSig(int i) {
        return this.currentRootSig[i];
    }

    public boolean isUsed() {
        return this.used;
    }

    public void markUsed() {
        this.used = true;
    }

    public GMSSPrivateKeyParameters nextKey() {
        GMSSPrivateKeyParameters gMSSPrivateKeyParameters = new GMSSPrivateKeyParameters(this);
        gMSSPrivateKeyParameters.nextKey(this.gmssPS.getNumOfLayers() - 1);
        return gMSSPrivateKeyParameters;
    }
}
