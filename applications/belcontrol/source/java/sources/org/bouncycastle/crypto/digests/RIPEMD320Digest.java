package org.bouncycastle.crypto.digests;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/RIPEMD320Digest.class */
public class RIPEMD320Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 40;

    /* renamed from: H0 */
    private int f7367H0;

    /* renamed from: H1 */
    private int f7368H1;

    /* renamed from: H2 */
    private int f7369H2;

    /* renamed from: H3 */
    private int f7370H3;

    /* renamed from: H4 */
    private int f7371H4;

    /* renamed from: H5 */
    private int f7372H5;

    /* renamed from: H6 */
    private int f7373H6;

    /* renamed from: H7 */
    private int f7374H7;

    /* renamed from: H8 */
    private int f7375H8;

    /* renamed from: H9 */
    private int f7376H9;

    /* renamed from: X */
    private int[] f7377X;
    private int xOff;

    public RIPEMD320Digest() {
        this.f7377X = new int[16];
        reset();
    }

    public RIPEMD320Digest(RIPEMD320Digest rIPEMD320Digest) {
        super(rIPEMD320Digest);
        int[] iArr = new int[16];
        this.f7377X = iArr;
        this.f7367H0 = rIPEMD320Digest.f7367H0;
        this.f7368H1 = rIPEMD320Digest.f7368H1;
        this.f7369H2 = rIPEMD320Digest.f7369H2;
        this.f7370H3 = rIPEMD320Digest.f7370H3;
        this.f7371H4 = rIPEMD320Digest.f7371H4;
        this.f7372H5 = rIPEMD320Digest.f7372H5;
        this.f7373H6 = rIPEMD320Digest.f7373H6;
        this.f7374H7 = rIPEMD320Digest.f7374H7;
        this.f7375H8 = rIPEMD320Digest.f7375H8;
        this.f7376H9 = rIPEMD320Digest.f7376H9;
        int[] iArr2 = rIPEMD320Digest.f7377X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = rIPEMD320Digest.xOff;
    }

    /* renamed from: RL */
    private int m981RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: f1 */
    private int m980f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: f2 */
    private int m979f2(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: f3 */
    private int m978f3(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: f4 */
    private int m977f4(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: f5 */
    private int m976f5(int i, int i2, int i3) {
        return i ^ (i2 | (i3 ^ (-1)));
    }

    private void unpackWord(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        unpackWord(this.f7367H0, bArr, i);
        unpackWord(this.f7368H1, bArr, i + 4);
        unpackWord(this.f7369H2, bArr, i + 8);
        unpackWord(this.f7370H3, bArr, i + 12);
        unpackWord(this.f7371H4, bArr, i + 16);
        unpackWord(this.f7372H5, bArr, i + 20);
        unpackWord(this.f7373H6, bArr, i + 24);
        unpackWord(this.f7374H7, bArr, i + 28);
        unpackWord(this.f7375H8, bArr, i + 32);
        unpackWord(this.f7376H9, bArr, i + 36);
        reset();
        return 40;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD320";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 40;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i = this.f7367H0;
        int i2 = this.f7368H1;
        int i3 = this.f7369H2;
        int i4 = this.f7370H3;
        int i5 = this.f7371H4;
        int i6 = this.f7372H5;
        int i7 = this.f7373H6;
        int i8 = this.f7374H7;
        int i9 = this.f7375H8;
        int i10 = this.f7376H9;
        int m981RL = m981RL(i + m980f1(i2, i3, i4) + this.f7377X[0], 11) + i5;
        int m981RL2 = m981RL(i3, 10);
        int m981RL3 = m981RL(i5 + m980f1(m981RL, i2, m981RL2) + this.f7377X[1], 14) + i4;
        int m981RL4 = m981RL(i2, 10);
        int m981RL5 = m981RL(i4 + m980f1(m981RL3, m981RL, m981RL4) + this.f7377X[2], 15) + m981RL2;
        int m981RL6 = m981RL(m981RL, 10);
        int m981RL7 = m981RL(m981RL2 + m980f1(m981RL5, m981RL3, m981RL6) + this.f7377X[3], 12) + m981RL4;
        int m981RL8 = m981RL(m981RL3, 10);
        int m981RL9 = m981RL(m981RL4 + m980f1(m981RL7, m981RL5, m981RL8) + this.f7377X[4], 5) + m981RL6;
        int m981RL10 = m981RL(m981RL5, 10);
        int m981RL11 = m981RL(m981RL6 + m980f1(m981RL9, m981RL7, m981RL10) + this.f7377X[5], 8) + m981RL8;
        int m981RL12 = m981RL(m981RL7, 10);
        int m981RL13 = m981RL(m981RL8 + m980f1(m981RL11, m981RL9, m981RL12) + this.f7377X[6], 7) + m981RL10;
        int m981RL14 = m981RL(m981RL9, 10);
        int m981RL15 = m981RL(m981RL10 + m980f1(m981RL13, m981RL11, m981RL14) + this.f7377X[7], 9) + m981RL12;
        int m981RL16 = m981RL(m981RL11, 10);
        int m981RL17 = m981RL(m981RL12 + m980f1(m981RL15, m981RL13, m981RL16) + this.f7377X[8], 11) + m981RL14;
        int m981RL18 = m981RL(m981RL13, 10);
        int m981RL19 = m981RL(m981RL14 + m980f1(m981RL17, m981RL15, m981RL18) + this.f7377X[9], 13) + m981RL16;
        int m981RL20 = m981RL(m981RL15, 10);
        int m981RL21 = m981RL(m981RL16 + m980f1(m981RL19, m981RL17, m981RL20) + this.f7377X[10], 14) + m981RL18;
        int m981RL22 = m981RL(m981RL17, 10);
        int m981RL23 = m981RL(m981RL18 + m980f1(m981RL21, m981RL19, m981RL22) + this.f7377X[11], 15) + m981RL20;
        int m981RL24 = m981RL(m981RL19, 10);
        int m981RL25 = m981RL(m981RL20 + m980f1(m981RL23, m981RL21, m981RL24) + this.f7377X[12], 6) + m981RL22;
        int m981RL26 = m981RL(m981RL21, 10);
        int m981RL27 = m981RL(m981RL22 + m980f1(m981RL25, m981RL23, m981RL26) + this.f7377X[13], 7) + m981RL24;
        int m981RL28 = m981RL(m981RL23, 10);
        int m981RL29 = m981RL(m981RL24 + m980f1(m981RL27, m981RL25, m981RL28) + this.f7377X[14], 9) + m981RL26;
        int m981RL30 = m981RL(m981RL25, 10);
        int m981RL31 = m981RL(m981RL26 + m980f1(m981RL29, m981RL27, m981RL30) + this.f7377X[15], 8) + m981RL28;
        int m981RL32 = m981RL(m981RL27, 10);
        int m981RL33 = m981RL(i6 + m976f5(i7, i8, i9) + this.f7377X[5] + 1352829926, 8) + i10;
        int m981RL34 = m981RL(i8, 10);
        int m981RL35 = m981RL(i10 + m976f5(m981RL33, i7, m981RL34) + this.f7377X[14] + 1352829926, 9) + i9;
        int m981RL36 = m981RL(i7, 10);
        int m981RL37 = m981RL(i9 + m976f5(m981RL35, m981RL33, m981RL36) + this.f7377X[7] + 1352829926, 9) + m981RL34;
        int m981RL38 = m981RL(m981RL33, 10);
        int m981RL39 = m981RL(m981RL34 + m976f5(m981RL37, m981RL35, m981RL38) + this.f7377X[0] + 1352829926, 11) + m981RL36;
        int m981RL40 = m981RL(m981RL35, 10);
        int m981RL41 = m981RL(m981RL36 + m976f5(m981RL39, m981RL37, m981RL40) + this.f7377X[9] + 1352829926, 13) + m981RL38;
        int m981RL42 = m981RL(m981RL37, 10);
        int m981RL43 = m981RL(m981RL38 + m976f5(m981RL41, m981RL39, m981RL42) + this.f7377X[2] + 1352829926, 15) + m981RL40;
        int m981RL44 = m981RL(m981RL39, 10);
        int m981RL45 = m981RL(m981RL40 + m976f5(m981RL43, m981RL41, m981RL44) + this.f7377X[11] + 1352829926, 15) + m981RL42;
        int m981RL46 = m981RL(m981RL41, 10);
        int m981RL47 = m981RL(m981RL42 + m976f5(m981RL45, m981RL43, m981RL46) + this.f7377X[4] + 1352829926, 5) + m981RL44;
        int m981RL48 = m981RL(m981RL43, 10);
        int m981RL49 = m981RL(m981RL44 + m976f5(m981RL47, m981RL45, m981RL48) + this.f7377X[13] + 1352829926, 7) + m981RL46;
        int m981RL50 = m981RL(m981RL45, 10);
        int m981RL51 = m981RL(m981RL46 + m976f5(m981RL49, m981RL47, m981RL50) + this.f7377X[6] + 1352829926, 7) + m981RL48;
        int m981RL52 = m981RL(m981RL47, 10);
        int m981RL53 = m981RL(m981RL48 + m976f5(m981RL51, m981RL49, m981RL52) + this.f7377X[15] + 1352829926, 8) + m981RL50;
        int m981RL54 = m981RL(m981RL49, 10);
        int m981RL55 = m981RL(m981RL50 + m976f5(m981RL53, m981RL51, m981RL54) + this.f7377X[8] + 1352829926, 11) + m981RL52;
        int m981RL56 = m981RL(m981RL51, 10);
        int m981RL57 = m981RL(m981RL52 + m976f5(m981RL55, m981RL53, m981RL56) + this.f7377X[1] + 1352829926, 14) + m981RL54;
        int m981RL58 = m981RL(m981RL53, 10);
        int m981RL59 = m981RL(m981RL54 + m976f5(m981RL57, m981RL55, m981RL58) + this.f7377X[10] + 1352829926, 14) + m981RL56;
        int m981RL60 = m981RL(m981RL55, 10);
        int m981RL61 = m981RL(m981RL56 + m976f5(m981RL59, m981RL57, m981RL60) + this.f7377X[3] + 1352829926, 12) + m981RL58;
        int m981RL62 = m981RL(m981RL57, 10);
        int m981RL63 = m981RL(m981RL58 + m976f5(m981RL61, m981RL59, m981RL62) + this.f7377X[12] + 1352829926, 6) + m981RL60;
        int m981RL64 = m981RL(m981RL59, 10);
        int m981RL65 = m981RL(m981RL28 + m979f2(m981RL63, m981RL29, m981RL32) + this.f7377X[7] + 1518500249, 7) + m981RL30;
        int m981RL66 = m981RL(m981RL29, 10);
        int m981RL67 = m981RL(m981RL30 + m979f2(m981RL65, m981RL63, m981RL66) + this.f7377X[4] + 1518500249, 6) + m981RL32;
        int m981RL68 = m981RL(m981RL63, 10);
        int m981RL69 = m981RL(m981RL32 + m979f2(m981RL67, m981RL65, m981RL68) + this.f7377X[13] + 1518500249, 8) + m981RL66;
        int m981RL70 = m981RL(m981RL65, 10);
        int m981RL71 = m981RL(m981RL66 + m979f2(m981RL69, m981RL67, m981RL70) + this.f7377X[1] + 1518500249, 13) + m981RL68;
        int m981RL72 = m981RL(m981RL67, 10);
        int m981RL73 = m981RL(m981RL68 + m979f2(m981RL71, m981RL69, m981RL72) + this.f7377X[10] + 1518500249, 11) + m981RL70;
        int m981RL74 = m981RL(m981RL69, 10);
        int m981RL75 = m981RL(m981RL70 + m979f2(m981RL73, m981RL71, m981RL74) + this.f7377X[6] + 1518500249, 9) + m981RL72;
        int m981RL76 = m981RL(m981RL71, 10);
        int m981RL77 = m981RL(m981RL72 + m979f2(m981RL75, m981RL73, m981RL76) + this.f7377X[15] + 1518500249, 7) + m981RL74;
        int m981RL78 = m981RL(m981RL73, 10);
        int m981RL79 = m981RL(m981RL74 + m979f2(m981RL77, m981RL75, m981RL78) + this.f7377X[3] + 1518500249, 15) + m981RL76;
        int m981RL80 = m981RL(m981RL75, 10);
        int m981RL81 = m981RL(m981RL76 + m979f2(m981RL79, m981RL77, m981RL80) + this.f7377X[12] + 1518500249, 7) + m981RL78;
        int m981RL82 = m981RL(m981RL77, 10);
        int m981RL83 = m981RL(m981RL78 + m979f2(m981RL81, m981RL79, m981RL82) + this.f7377X[0] + 1518500249, 12) + m981RL80;
        int m981RL84 = m981RL(m981RL79, 10);
        int m981RL85 = m981RL(m981RL80 + m979f2(m981RL83, m981RL81, m981RL84) + this.f7377X[9] + 1518500249, 15) + m981RL82;
        int m981RL86 = m981RL(m981RL81, 10);
        int m981RL87 = m981RL(m981RL82 + m979f2(m981RL85, m981RL83, m981RL86) + this.f7377X[5] + 1518500249, 9) + m981RL84;
        int m981RL88 = m981RL(m981RL83, 10);
        int m981RL89 = m981RL(m981RL84 + m979f2(m981RL87, m981RL85, m981RL88) + this.f7377X[2] + 1518500249, 11) + m981RL86;
        int m981RL90 = m981RL(m981RL85, 10);
        int m981RL91 = m981RL(m981RL86 + m979f2(m981RL89, m981RL87, m981RL90) + this.f7377X[14] + 1518500249, 7) + m981RL88;
        int m981RL92 = m981RL(m981RL87, 10);
        int m981RL93 = m981RL(m981RL88 + m979f2(m981RL91, m981RL89, m981RL92) + this.f7377X[11] + 1518500249, 13) + m981RL90;
        int m981RL94 = m981RL(m981RL89, 10);
        int m981RL95 = m981RL(m981RL90 + m979f2(m981RL93, m981RL91, m981RL94) + this.f7377X[8] + 1518500249, 12) + m981RL92;
        int m981RL96 = m981RL(m981RL91, 10);
        int m981RL97 = m981RL(m981RL60 + m977f4(m981RL31, m981RL61, m981RL64) + this.f7377X[6] + 1548603684, 9) + m981RL62;
        int m981RL98 = m981RL(m981RL61, 10);
        int m981RL99 = m981RL(m981RL62 + m977f4(m981RL97, m981RL31, m981RL98) + this.f7377X[11] + 1548603684, 13) + m981RL64;
        int m981RL100 = m981RL(m981RL31, 10);
        int m981RL101 = m981RL(m981RL64 + m977f4(m981RL99, m981RL97, m981RL100) + this.f7377X[3] + 1548603684, 15) + m981RL98;
        int m981RL102 = m981RL(m981RL97, 10);
        int m981RL103 = m981RL(m981RL98 + m977f4(m981RL101, m981RL99, m981RL102) + this.f7377X[7] + 1548603684, 7) + m981RL100;
        int m981RL104 = m981RL(m981RL99, 10);
        int m981RL105 = m981RL(m981RL100 + m977f4(m981RL103, m981RL101, m981RL104) + this.f7377X[0] + 1548603684, 12) + m981RL102;
        int m981RL106 = m981RL(m981RL101, 10);
        int m981RL107 = m981RL(m981RL102 + m977f4(m981RL105, m981RL103, m981RL106) + this.f7377X[13] + 1548603684, 8) + m981RL104;
        int m981RL108 = m981RL(m981RL103, 10);
        int m981RL109 = m981RL(m981RL104 + m977f4(m981RL107, m981RL105, m981RL108) + this.f7377X[5] + 1548603684, 9) + m981RL106;
        int m981RL110 = m981RL(m981RL105, 10);
        int m981RL111 = m981RL(m981RL106 + m977f4(m981RL109, m981RL107, m981RL110) + this.f7377X[10] + 1548603684, 11) + m981RL108;
        int m981RL112 = m981RL(m981RL107, 10);
        int m981RL113 = m981RL(m981RL108 + m977f4(m981RL111, m981RL109, m981RL112) + this.f7377X[14] + 1548603684, 7) + m981RL110;
        int m981RL114 = m981RL(m981RL109, 10);
        int m981RL115 = m981RL(m981RL110 + m977f4(m981RL113, m981RL111, m981RL114) + this.f7377X[15] + 1548603684, 7) + m981RL112;
        int m981RL116 = m981RL(m981RL111, 10);
        int m981RL117 = m981RL(m981RL112 + m977f4(m981RL115, m981RL113, m981RL116) + this.f7377X[8] + 1548603684, 12) + m981RL114;
        int m981RL118 = m981RL(m981RL113, 10);
        int m981RL119 = m981RL(m981RL114 + m977f4(m981RL117, m981RL115, m981RL118) + this.f7377X[12] + 1548603684, 7) + m981RL116;
        int m981RL120 = m981RL(m981RL115, 10);
        int m981RL121 = m981RL(m981RL116 + m977f4(m981RL119, m981RL117, m981RL120) + this.f7377X[4] + 1548603684, 6) + m981RL118;
        int m981RL122 = m981RL(m981RL117, 10);
        int m981RL123 = m981RL(m981RL118 + m977f4(m981RL121, m981RL119, m981RL122) + this.f7377X[9] + 1548603684, 15) + m981RL120;
        int m981RL124 = m981RL(m981RL119, 10);
        int m981RL125 = m981RL(m981RL120 + m977f4(m981RL123, m981RL121, m981RL124) + this.f7377X[1] + 1548603684, 13) + m981RL122;
        int m981RL126 = m981RL(m981RL121, 10);
        int m981RL127 = m981RL(m981RL122 + m977f4(m981RL125, m981RL123, m981RL126) + this.f7377X[2] + 1548603684, 11) + m981RL124;
        int m981RL128 = m981RL(m981RL123, 10);
        int m981RL129 = m981RL(m981RL92 + m978f3(m981RL95, m981RL93, m981RL128) + this.f7377X[3] + 1859775393, 11) + m981RL94;
        int m981RL130 = m981RL(m981RL93, 10);
        int m981RL131 = m981RL(m981RL94 + m978f3(m981RL129, m981RL95, m981RL130) + this.f7377X[10] + 1859775393, 13) + m981RL128;
        int m981RL132 = m981RL(m981RL95, 10);
        int m981RL133 = m981RL(m981RL128 + m978f3(m981RL131, m981RL129, m981RL132) + this.f7377X[14] + 1859775393, 6) + m981RL130;
        int m981RL134 = m981RL(m981RL129, 10);
        int m981RL135 = m981RL(m981RL130 + m978f3(m981RL133, m981RL131, m981RL134) + this.f7377X[4] + 1859775393, 7) + m981RL132;
        int m981RL136 = m981RL(m981RL131, 10);
        int m981RL137 = m981RL(m981RL132 + m978f3(m981RL135, m981RL133, m981RL136) + this.f7377X[9] + 1859775393, 14) + m981RL134;
        int m981RL138 = m981RL(m981RL133, 10);
        int m981RL139 = m981RL(m981RL134 + m978f3(m981RL137, m981RL135, m981RL138) + this.f7377X[15] + 1859775393, 9) + m981RL136;
        int m981RL140 = m981RL(m981RL135, 10);
        int m981RL141 = m981RL(m981RL136 + m978f3(m981RL139, m981RL137, m981RL140) + this.f7377X[8] + 1859775393, 13) + m981RL138;
        int m981RL142 = m981RL(m981RL137, 10);
        int m981RL143 = m981RL(m981RL138 + m978f3(m981RL141, m981RL139, m981RL142) + this.f7377X[1] + 1859775393, 15) + m981RL140;
        int m981RL144 = m981RL(m981RL139, 10);
        int m981RL145 = m981RL(m981RL140 + m978f3(m981RL143, m981RL141, m981RL144) + this.f7377X[2] + 1859775393, 14) + m981RL142;
        int m981RL146 = m981RL(m981RL141, 10);
        int m981RL147 = m981RL(m981RL142 + m978f3(m981RL145, m981RL143, m981RL146) + this.f7377X[7] + 1859775393, 8) + m981RL144;
        int m981RL148 = m981RL(m981RL143, 10);
        int m981RL149 = m981RL(m981RL144 + m978f3(m981RL147, m981RL145, m981RL148) + this.f7377X[0] + 1859775393, 13) + m981RL146;
        int m981RL150 = m981RL(m981RL145, 10);
        int m981RL151 = m981RL(m981RL146 + m978f3(m981RL149, m981RL147, m981RL150) + this.f7377X[6] + 1859775393, 6) + m981RL148;
        int m981RL152 = m981RL(m981RL147, 10);
        int m981RL153 = m981RL(m981RL148 + m978f3(m981RL151, m981RL149, m981RL152) + this.f7377X[13] + 1859775393, 5) + m981RL150;
        int m981RL154 = m981RL(m981RL149, 10);
        int m981RL155 = m981RL(m981RL150 + m978f3(m981RL153, m981RL151, m981RL154) + this.f7377X[11] + 1859775393, 12) + m981RL152;
        int m981RL156 = m981RL(m981RL151, 10);
        int m981RL157 = m981RL(m981RL152 + m978f3(m981RL155, m981RL153, m981RL156) + this.f7377X[5] + 1859775393, 7) + m981RL154;
        int m981RL158 = m981RL(m981RL153, 10);
        int m981RL159 = m981RL(m981RL154 + m978f3(m981RL157, m981RL155, m981RL158) + this.f7377X[12] + 1859775393, 5) + m981RL156;
        int m981RL160 = m981RL(m981RL155, 10);
        int m981RL161 = m981RL(m981RL124 + m978f3(m981RL127, m981RL125, m981RL96) + this.f7377X[15] + 1836072691, 9) + m981RL126;
        int m981RL162 = m981RL(m981RL125, 10);
        int m981RL163 = m981RL(m981RL126 + m978f3(m981RL161, m981RL127, m981RL162) + this.f7377X[5] + 1836072691, 7) + m981RL96;
        int m981RL164 = m981RL(m981RL127, 10);
        int m981RL165 = m981RL(m981RL96 + m978f3(m981RL163, m981RL161, m981RL164) + this.f7377X[1] + 1836072691, 15) + m981RL162;
        int m981RL166 = m981RL(m981RL161, 10);
        int m981RL167 = m981RL(m981RL162 + m978f3(m981RL165, m981RL163, m981RL166) + this.f7377X[3] + 1836072691, 11) + m981RL164;
        int m981RL168 = m981RL(m981RL163, 10);
        int m981RL169 = m981RL(m981RL164 + m978f3(m981RL167, m981RL165, m981RL168) + this.f7377X[7] + 1836072691, 8) + m981RL166;
        int m981RL170 = m981RL(m981RL165, 10);
        int m981RL171 = m981RL(m981RL166 + m978f3(m981RL169, m981RL167, m981RL170) + this.f7377X[14] + 1836072691, 6) + m981RL168;
        int m981RL172 = m981RL(m981RL167, 10);
        int m981RL173 = m981RL(m981RL168 + m978f3(m981RL171, m981RL169, m981RL172) + this.f7377X[6] + 1836072691, 6) + m981RL170;
        int m981RL174 = m981RL(m981RL169, 10);
        int m981RL175 = m981RL(m981RL170 + m978f3(m981RL173, m981RL171, m981RL174) + this.f7377X[9] + 1836072691, 14) + m981RL172;
        int m981RL176 = m981RL(m981RL171, 10);
        int m981RL177 = m981RL(m981RL172 + m978f3(m981RL175, m981RL173, m981RL176) + this.f7377X[11] + 1836072691, 12) + m981RL174;
        int m981RL178 = m981RL(m981RL173, 10);
        int m981RL179 = m981RL(m981RL174 + m978f3(m981RL177, m981RL175, m981RL178) + this.f7377X[8] + 1836072691, 13) + m981RL176;
        int m981RL180 = m981RL(m981RL175, 10);
        int m981RL181 = m981RL(m981RL176 + m978f3(m981RL179, m981RL177, m981RL180) + this.f7377X[12] + 1836072691, 5) + m981RL178;
        int m981RL182 = m981RL(m981RL177, 10);
        int m981RL183 = m981RL(m981RL178 + m978f3(m981RL181, m981RL179, m981RL182) + this.f7377X[2] + 1836072691, 14) + m981RL180;
        int m981RL184 = m981RL(m981RL179, 10);
        int m981RL185 = m981RL(m981RL180 + m978f3(m981RL183, m981RL181, m981RL184) + this.f7377X[10] + 1836072691, 13) + m981RL182;
        int m981RL186 = m981RL(m981RL181, 10);
        int m981RL187 = m981RL(m981RL182 + m978f3(m981RL185, m981RL183, m981RL186) + this.f7377X[0] + 1836072691, 13) + m981RL184;
        int m981RL188 = m981RL(m981RL183, 10);
        int m981RL189 = m981RL(m981RL184 + m978f3(m981RL187, m981RL185, m981RL188) + this.f7377X[4] + 1836072691, 7) + m981RL186;
        int m981RL190 = m981RL(m981RL185, 10);
        int m981RL191 = m981RL(m981RL186 + m978f3(m981RL189, m981RL187, m981RL190) + this.f7377X[13] + 1836072691, 5) + m981RL188;
        int m981RL192 = m981RL(m981RL187, 10);
        int m981RL193 = m981RL(((m981RL188 + m977f4(m981RL159, m981RL157, m981RL160)) + this.f7377X[1]) - 1894007588, 11) + m981RL158;
        int m981RL194 = m981RL(m981RL157, 10);
        int m981RL195 = m981RL(((m981RL158 + m977f4(m981RL193, m981RL159, m981RL194)) + this.f7377X[9]) - 1894007588, 12) + m981RL160;
        int m981RL196 = m981RL(m981RL159, 10);
        int m981RL197 = m981RL(((m981RL160 + m977f4(m981RL195, m981RL193, m981RL196)) + this.f7377X[11]) - 1894007588, 14) + m981RL194;
        int m981RL198 = m981RL(m981RL193, 10);
        int m981RL199 = m981RL(((m981RL194 + m977f4(m981RL197, m981RL195, m981RL198)) + this.f7377X[10]) - 1894007588, 15) + m981RL196;
        int m981RL200 = m981RL(m981RL195, 10);
        int m981RL201 = m981RL(((m981RL196 + m977f4(m981RL199, m981RL197, m981RL200)) + this.f7377X[0]) - 1894007588, 14) + m981RL198;
        int m981RL202 = m981RL(m981RL197, 10);
        int m981RL203 = m981RL(((m981RL198 + m977f4(m981RL201, m981RL199, m981RL202)) + this.f7377X[8]) - 1894007588, 15) + m981RL200;
        int m981RL204 = m981RL(m981RL199, 10);
        int m981RL205 = m981RL(((m981RL200 + m977f4(m981RL203, m981RL201, m981RL204)) + this.f7377X[12]) - 1894007588, 9) + m981RL202;
        int m981RL206 = m981RL(m981RL201, 10);
        int m981RL207 = m981RL(((m981RL202 + m977f4(m981RL205, m981RL203, m981RL206)) + this.f7377X[4]) - 1894007588, 8) + m981RL204;
        int m981RL208 = m981RL(m981RL203, 10);
        int m981RL209 = m981RL(((m981RL204 + m977f4(m981RL207, m981RL205, m981RL208)) + this.f7377X[13]) - 1894007588, 9) + m981RL206;
        int m981RL210 = m981RL(m981RL205, 10);
        int m981RL211 = m981RL(((m981RL206 + m977f4(m981RL209, m981RL207, m981RL210)) + this.f7377X[3]) - 1894007588, 14) + m981RL208;
        int m981RL212 = m981RL(m981RL207, 10);
        int m981RL213 = m981RL(((m981RL208 + m977f4(m981RL211, m981RL209, m981RL212)) + this.f7377X[7]) - 1894007588, 5) + m981RL210;
        int m981RL214 = m981RL(m981RL209, 10);
        int m981RL215 = m981RL(((m981RL210 + m977f4(m981RL213, m981RL211, m981RL214)) + this.f7377X[15]) - 1894007588, 6) + m981RL212;
        int m981RL216 = m981RL(m981RL211, 10);
        int m981RL217 = m981RL(((m981RL212 + m977f4(m981RL215, m981RL213, m981RL216)) + this.f7377X[14]) - 1894007588, 8) + m981RL214;
        int m981RL218 = m981RL(m981RL213, 10);
        int m981RL219 = m981RL(((m981RL214 + m977f4(m981RL217, m981RL215, m981RL218)) + this.f7377X[5]) - 1894007588, 6) + m981RL216;
        int m981RL220 = m981RL(m981RL215, 10);
        int m981RL221 = m981RL(((m981RL216 + m977f4(m981RL219, m981RL217, m981RL220)) + this.f7377X[6]) - 1894007588, 5) + m981RL218;
        int m981RL222 = m981RL(m981RL217, 10);
        int m981RL223 = m981RL(((m981RL218 + m977f4(m981RL221, m981RL219, m981RL222)) + this.f7377X[2]) - 1894007588, 12) + m981RL220;
        int m981RL224 = m981RL(m981RL219, 10);
        int m981RL225 = m981RL(m981RL156 + m979f2(m981RL191, m981RL189, m981RL192) + this.f7377X[8] + 2053994217, 15) + m981RL190;
        int m981RL226 = m981RL(m981RL189, 10);
        int m981RL227 = m981RL(m981RL190 + m979f2(m981RL225, m981RL191, m981RL226) + this.f7377X[6] + 2053994217, 5) + m981RL192;
        int m981RL228 = m981RL(m981RL191, 10);
        int m981RL229 = m981RL(m981RL192 + m979f2(m981RL227, m981RL225, m981RL228) + this.f7377X[4] + 2053994217, 8) + m981RL226;
        int m981RL230 = m981RL(m981RL225, 10);
        int m981RL231 = m981RL(m981RL226 + m979f2(m981RL229, m981RL227, m981RL230) + this.f7377X[1] + 2053994217, 11) + m981RL228;
        int m981RL232 = m981RL(m981RL227, 10);
        int m981RL233 = m981RL(m981RL228 + m979f2(m981RL231, m981RL229, m981RL232) + this.f7377X[3] + 2053994217, 14) + m981RL230;
        int m981RL234 = m981RL(m981RL229, 10);
        int m981RL235 = m981RL(m981RL230 + m979f2(m981RL233, m981RL231, m981RL234) + this.f7377X[11] + 2053994217, 14) + m981RL232;
        int m981RL236 = m981RL(m981RL231, 10);
        int m981RL237 = m981RL(m981RL232 + m979f2(m981RL235, m981RL233, m981RL236) + this.f7377X[15] + 2053994217, 6) + m981RL234;
        int m981RL238 = m981RL(m981RL233, 10);
        int m981RL239 = m981RL(m981RL234 + m979f2(m981RL237, m981RL235, m981RL238) + this.f7377X[0] + 2053994217, 14) + m981RL236;
        int m981RL240 = m981RL(m981RL235, 10);
        int m981RL241 = m981RL(m981RL236 + m979f2(m981RL239, m981RL237, m981RL240) + this.f7377X[5] + 2053994217, 6) + m981RL238;
        int m981RL242 = m981RL(m981RL237, 10);
        int m981RL243 = m981RL(m981RL238 + m979f2(m981RL241, m981RL239, m981RL242) + this.f7377X[12] + 2053994217, 9) + m981RL240;
        int m981RL244 = m981RL(m981RL239, 10);
        int m981RL245 = m981RL(m981RL240 + m979f2(m981RL243, m981RL241, m981RL244) + this.f7377X[2] + 2053994217, 12) + m981RL242;
        int m981RL246 = m981RL(m981RL241, 10);
        int m981RL247 = m981RL(m981RL242 + m979f2(m981RL245, m981RL243, m981RL246) + this.f7377X[13] + 2053994217, 9) + m981RL244;
        int m981RL248 = m981RL(m981RL243, 10);
        int m981RL249 = m981RL(m981RL244 + m979f2(m981RL247, m981RL245, m981RL248) + this.f7377X[9] + 2053994217, 12) + m981RL246;
        int m981RL250 = m981RL(m981RL245, 10);
        int m981RL251 = m981RL(m981RL246 + m979f2(m981RL249, m981RL247, m981RL250) + this.f7377X[7] + 2053994217, 5) + m981RL248;
        int m981RL252 = m981RL(m981RL247, 10);
        int m981RL253 = m981RL(m981RL248 + m979f2(m981RL251, m981RL249, m981RL252) + this.f7377X[10] + 2053994217, 15) + m981RL250;
        int m981RL254 = m981RL(m981RL249, 10);
        int m981RL255 = m981RL(m981RL250 + m979f2(m981RL253, m981RL251, m981RL254) + this.f7377X[14] + 2053994217, 8) + m981RL252;
        int m981RL256 = m981RL(m981RL251, 10);
        int m981RL257 = m981RL(((m981RL220 + m976f5(m981RL223, m981RL253, m981RL224)) + this.f7377X[4]) - 1454113458, 9) + m981RL222;
        int m981RL258 = m981RL(m981RL253, 10);
        int m981RL259 = m981RL(((m981RL222 + m976f5(m981RL257, m981RL223, m981RL258)) + this.f7377X[0]) - 1454113458, 15) + m981RL224;
        int m981RL260 = m981RL(m981RL223, 10);
        int m981RL261 = m981RL(((m981RL224 + m976f5(m981RL259, m981RL257, m981RL260)) + this.f7377X[5]) - 1454113458, 5) + m981RL258;
        int m981RL262 = m981RL(m981RL257, 10);
        int m981RL263 = m981RL(((m981RL258 + m976f5(m981RL261, m981RL259, m981RL262)) + this.f7377X[9]) - 1454113458, 11) + m981RL260;
        int m981RL264 = m981RL(m981RL259, 10);
        int m981RL265 = m981RL(((m981RL260 + m976f5(m981RL263, m981RL261, m981RL264)) + this.f7377X[7]) - 1454113458, 6) + m981RL262;
        int m981RL266 = m981RL(m981RL261, 10);
        int m981RL267 = m981RL(((m981RL262 + m976f5(m981RL265, m981RL263, m981RL266)) + this.f7377X[12]) - 1454113458, 8) + m981RL264;
        int m981RL268 = m981RL(m981RL263, 10);
        int m981RL269 = m981RL(((m981RL264 + m976f5(m981RL267, m981RL265, m981RL268)) + this.f7377X[2]) - 1454113458, 13) + m981RL266;
        int m981RL270 = m981RL(m981RL265, 10);
        int m981RL271 = m981RL(((m981RL266 + m976f5(m981RL269, m981RL267, m981RL270)) + this.f7377X[10]) - 1454113458, 12) + m981RL268;
        int m981RL272 = m981RL(m981RL267, 10);
        int m981RL273 = m981RL(((m981RL268 + m976f5(m981RL271, m981RL269, m981RL272)) + this.f7377X[14]) - 1454113458, 5) + m981RL270;
        int m981RL274 = m981RL(m981RL269, 10);
        int m981RL275 = m981RL(((m981RL270 + m976f5(m981RL273, m981RL271, m981RL274)) + this.f7377X[1]) - 1454113458, 12) + m981RL272;
        int m981RL276 = m981RL(m981RL271, 10);
        int m981RL277 = m981RL(((m981RL272 + m976f5(m981RL275, m981RL273, m981RL276)) + this.f7377X[3]) - 1454113458, 13) + m981RL274;
        int m981RL278 = m981RL(m981RL273, 10);
        int m981RL279 = m981RL(((m981RL274 + m976f5(m981RL277, m981RL275, m981RL278)) + this.f7377X[8]) - 1454113458, 14) + m981RL276;
        int m981RL280 = m981RL(m981RL275, 10);
        int m981RL281 = m981RL(((m981RL276 + m976f5(m981RL279, m981RL277, m981RL280)) + this.f7377X[11]) - 1454113458, 11) + m981RL278;
        int m981RL282 = m981RL(m981RL277, 10);
        int m981RL283 = m981RL(((m981RL278 + m976f5(m981RL281, m981RL279, m981RL282)) + this.f7377X[6]) - 1454113458, 8) + m981RL280;
        int m981RL284 = m981RL(m981RL279, 10);
        int m981RL285 = m981RL(((m981RL280 + m976f5(m981RL283, m981RL281, m981RL284)) + this.f7377X[15]) - 1454113458, 5) + m981RL282;
        int m981RL286 = m981RL(m981RL281, 10);
        int m981RL287 = m981RL(((m981RL282 + m976f5(m981RL285, m981RL283, m981RL286)) + this.f7377X[13]) - 1454113458, 6);
        int m981RL288 = m981RL(m981RL283, 10);
        int m981RL289 = m981RL(m981RL252 + m980f1(m981RL255, m981RL221, m981RL256) + this.f7377X[12], 8) + m981RL254;
        int m981RL290 = m981RL(m981RL221, 10);
        int m981RL291 = m981RL(m981RL254 + m980f1(m981RL289, m981RL255, m981RL290) + this.f7377X[15], 5) + m981RL256;
        int m981RL292 = m981RL(m981RL255, 10);
        int m981RL293 = m981RL(m981RL256 + m980f1(m981RL291, m981RL289, m981RL292) + this.f7377X[10], 12) + m981RL290;
        int m981RL294 = m981RL(m981RL289, 10);
        int m981RL295 = m981RL(m981RL290 + m980f1(m981RL293, m981RL291, m981RL294) + this.f7377X[4], 9) + m981RL292;
        int m981RL296 = m981RL(m981RL291, 10);
        int m981RL297 = m981RL(m981RL292 + m980f1(m981RL295, m981RL293, m981RL296) + this.f7377X[1], 12) + m981RL294;
        int m981RL298 = m981RL(m981RL293, 10);
        int m981RL299 = m981RL(m981RL294 + m980f1(m981RL297, m981RL295, m981RL298) + this.f7377X[5], 5) + m981RL296;
        int m981RL300 = m981RL(m981RL295, 10);
        int m981RL301 = m981RL(m981RL296 + m980f1(m981RL299, m981RL297, m981RL300) + this.f7377X[8], 14) + m981RL298;
        int m981RL302 = m981RL(m981RL297, 10);
        int m981RL303 = m981RL(m981RL298 + m980f1(m981RL301, m981RL299, m981RL302) + this.f7377X[7], 6) + m981RL300;
        int m981RL304 = m981RL(m981RL299, 10);
        int m981RL305 = m981RL(m981RL300 + m980f1(m981RL303, m981RL301, m981RL304) + this.f7377X[6], 8) + m981RL302;
        int m981RL306 = m981RL(m981RL301, 10);
        int m981RL307 = m981RL(m981RL302 + m980f1(m981RL305, m981RL303, m981RL306) + this.f7377X[2], 13) + m981RL304;
        int m981RL308 = m981RL(m981RL303, 10);
        int m981RL309 = m981RL(m981RL304 + m980f1(m981RL307, m981RL305, m981RL308) + this.f7377X[13], 6) + m981RL306;
        int m981RL310 = m981RL(m981RL305, 10);
        int m981RL311 = m981RL(m981RL306 + m980f1(m981RL309, m981RL307, m981RL310) + this.f7377X[14], 5) + m981RL308;
        int m981RL312 = m981RL(m981RL307, 10);
        int m981RL313 = m981RL(m981RL308 + m980f1(m981RL311, m981RL309, m981RL312) + this.f7377X[0], 15) + m981RL310;
        int m981RL314 = m981RL(m981RL309, 10);
        int m981RL315 = m981RL(m981RL310 + m980f1(m981RL313, m981RL311, m981RL314) + this.f7377X[3], 13) + m981RL312;
        int m981RL316 = m981RL(m981RL311, 10);
        int m981RL317 = m981RL(m981RL312 + m980f1(m981RL315, m981RL313, m981RL316) + this.f7377X[9], 11) + m981RL314;
        int m981RL318 = m981RL(m981RL313, 10);
        int m981RL319 = m981RL(m981RL314 + m980f1(m981RL317, m981RL315, m981RL318) + this.f7377X[11], 11);
        int m981RL320 = m981RL(m981RL315, 10);
        this.f7367H0 += m981RL284;
        this.f7368H1 += m981RL287 + m981RL284;
        this.f7369H2 += m981RL285;
        this.f7370H3 += m981RL288;
        this.f7371H4 += m981RL318;
        this.f7372H5 += m981RL316;
        this.f7373H6 += m981RL319 + m981RL316;
        this.f7374H7 += m981RL317;
        this.f7375H8 += m981RL320;
        this.f7376H9 += m981RL286;
        this.xOff = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f7377X;
            if (i11 != iArr.length) {
                iArr[i11] = 0;
                i11++;
            } else {
                return;
            }
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f7377X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        int[] iArr = this.f7377X;
        int i2 = this.xOff;
        int i3 = i2 + 1;
        this.xOff = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f7367H0 = 1732584193;
        this.f7368H1 = -271733879;
        this.f7369H2 = -1732584194;
        this.f7370H3 = 271733878;
        this.f7371H4 = -1009589776;
        this.f7372H5 = 1985229328;
        this.f7373H6 = -19088744;
        this.f7374H7 = -1985229329;
        this.f7375H8 = 19088743;
        this.f7376H9 = 1009589775;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7377X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
