package org.bouncycastle.crypto.digests;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/RIPEMD160Digest.class */
public class RIPEMD160Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 20;

    /* renamed from: H0 */
    private int f7352H0;

    /* renamed from: H1 */
    private int f7353H1;

    /* renamed from: H2 */
    private int f7354H2;

    /* renamed from: H3 */
    private int f7355H3;

    /* renamed from: H4 */
    private int f7356H4;

    /* renamed from: X */
    private int[] f7357X;
    private int xOff;

    public RIPEMD160Digest() {
        this.f7357X = new int[16];
        reset();
    }

    public RIPEMD160Digest(RIPEMD160Digest rIPEMD160Digest) {
        super(rIPEMD160Digest);
        int[] iArr = new int[16];
        this.f7357X = iArr;
        this.f7352H0 = rIPEMD160Digest.f7352H0;
        this.f7353H1 = rIPEMD160Digest.f7353H1;
        this.f7354H2 = rIPEMD160Digest.f7354H2;
        this.f7355H3 = rIPEMD160Digest.f7355H3;
        this.f7356H4 = rIPEMD160Digest.f7356H4;
        int[] iArr2 = rIPEMD160Digest.f7357X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = rIPEMD160Digest.xOff;
    }

    /* renamed from: RL */
    private int m996RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: f1 */
    private int m995f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: f2 */
    private int m994f2(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: f3 */
    private int m993f3(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: f4 */
    private int m992f4(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: f5 */
    private int m991f5(int i, int i2, int i3) {
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
        unpackWord(this.f7352H0, bArr, i);
        unpackWord(this.f7353H1, bArr, i + 4);
        unpackWord(this.f7354H2, bArr, i + 8);
        unpackWord(this.f7355H3, bArr, i + 12);
        unpackWord(this.f7356H4, bArr, i + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD160";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i = this.f7352H0;
        int i2 = this.f7353H1;
        int i3 = this.f7354H2;
        int i4 = this.f7355H3;
        int i5 = this.f7356H4;
        int m996RL = m996RL(m995f1(i2, i3, i4) + i + this.f7357X[0], 11) + i5;
        int m996RL2 = m996RL(i3, 10);
        int m996RL3 = m996RL(m995f1(m996RL, i2, m996RL2) + i5 + this.f7357X[1], 14) + i4;
        int m996RL4 = m996RL(i2, 10);
        int m996RL5 = m996RL(m995f1(m996RL3, m996RL, m996RL4) + i4 + this.f7357X[2], 15) + m996RL2;
        int m996RL6 = m996RL(m996RL, 10);
        int m996RL7 = m996RL(m996RL2 + m995f1(m996RL5, m996RL3, m996RL6) + this.f7357X[3], 12) + m996RL4;
        int m996RL8 = m996RL(m996RL3, 10);
        int m996RL9 = m996RL(m996RL4 + m995f1(m996RL7, m996RL5, m996RL8) + this.f7357X[4], 5) + m996RL6;
        int m996RL10 = m996RL(m996RL5, 10);
        int m996RL11 = m996RL(m996RL6 + m995f1(m996RL9, m996RL7, m996RL10) + this.f7357X[5], 8) + m996RL8;
        int m996RL12 = m996RL(m996RL7, 10);
        int m996RL13 = m996RL(m996RL8 + m995f1(m996RL11, m996RL9, m996RL12) + this.f7357X[6], 7) + m996RL10;
        int m996RL14 = m996RL(m996RL9, 10);
        int m996RL15 = m996RL(m996RL10 + m995f1(m996RL13, m996RL11, m996RL14) + this.f7357X[7], 9) + m996RL12;
        int m996RL16 = m996RL(m996RL11, 10);
        int m996RL17 = m996RL(m996RL12 + m995f1(m996RL15, m996RL13, m996RL16) + this.f7357X[8], 11) + m996RL14;
        int m996RL18 = m996RL(m996RL13, 10);
        int m996RL19 = m996RL(m996RL14 + m995f1(m996RL17, m996RL15, m996RL18) + this.f7357X[9], 13) + m996RL16;
        int m996RL20 = m996RL(m996RL15, 10);
        int m996RL21 = m996RL(m996RL16 + m995f1(m996RL19, m996RL17, m996RL20) + this.f7357X[10], 14) + m996RL18;
        int m996RL22 = m996RL(m996RL17, 10);
        int m996RL23 = m996RL(m996RL18 + m995f1(m996RL21, m996RL19, m996RL22) + this.f7357X[11], 15) + m996RL20;
        int m996RL24 = m996RL(m996RL19, 10);
        int m996RL25 = m996RL(m996RL20 + m995f1(m996RL23, m996RL21, m996RL24) + this.f7357X[12], 6) + m996RL22;
        int m996RL26 = m996RL(m996RL21, 10);
        int m996RL27 = m996RL(m996RL22 + m995f1(m996RL25, m996RL23, m996RL26) + this.f7357X[13], 7) + m996RL24;
        int m996RL28 = m996RL(m996RL23, 10);
        int m996RL29 = m996RL(m996RL24 + m995f1(m996RL27, m996RL25, m996RL28) + this.f7357X[14], 9) + m996RL26;
        int m996RL30 = m996RL(m996RL25, 10);
        int m996RL31 = m996RL(m996RL26 + m995f1(m996RL29, m996RL27, m996RL30) + this.f7357X[15], 8) + m996RL28;
        int m996RL32 = m996RL(m996RL27, 10);
        int m996RL33 = m996RL(i + m991f5(i2, i3, i4) + this.f7357X[5] + 1352829926, 8) + i5;
        int m996RL34 = m996RL(i3, 10);
        int m996RL35 = m996RL(i5 + m991f5(m996RL33, i2, m996RL34) + this.f7357X[14] + 1352829926, 9) + i4;
        int m996RL36 = m996RL(i2, 10);
        int m996RL37 = m996RL(i4 + m991f5(m996RL35, m996RL33, m996RL36) + this.f7357X[7] + 1352829926, 9) + m996RL34;
        int m996RL38 = m996RL(m996RL33, 10);
        int m996RL39 = m996RL(m996RL34 + m991f5(m996RL37, m996RL35, m996RL38) + this.f7357X[0] + 1352829926, 11) + m996RL36;
        int m996RL40 = m996RL(m996RL35, 10);
        int m996RL41 = m996RL(m996RL36 + m991f5(m996RL39, m996RL37, m996RL40) + this.f7357X[9] + 1352829926, 13) + m996RL38;
        int m996RL42 = m996RL(m996RL37, 10);
        int m996RL43 = m996RL(m996RL38 + m991f5(m996RL41, m996RL39, m996RL42) + this.f7357X[2] + 1352829926, 15) + m996RL40;
        int m996RL44 = m996RL(m996RL39, 10);
        int m996RL45 = m996RL(m996RL40 + m991f5(m996RL43, m996RL41, m996RL44) + this.f7357X[11] + 1352829926, 15) + m996RL42;
        int m996RL46 = m996RL(m996RL41, 10);
        int m996RL47 = m996RL(m996RL42 + m991f5(m996RL45, m996RL43, m996RL46) + this.f7357X[4] + 1352829926, 5) + m996RL44;
        int m996RL48 = m996RL(m996RL43, 10);
        int m996RL49 = m996RL(m996RL44 + m991f5(m996RL47, m996RL45, m996RL48) + this.f7357X[13] + 1352829926, 7) + m996RL46;
        int m996RL50 = m996RL(m996RL45, 10);
        int m996RL51 = m996RL(m996RL46 + m991f5(m996RL49, m996RL47, m996RL50) + this.f7357X[6] + 1352829926, 7) + m996RL48;
        int m996RL52 = m996RL(m996RL47, 10);
        int m996RL53 = m996RL(m996RL48 + m991f5(m996RL51, m996RL49, m996RL52) + this.f7357X[15] + 1352829926, 8) + m996RL50;
        int m996RL54 = m996RL(m996RL49, 10);
        int m996RL55 = m996RL(m996RL50 + m991f5(m996RL53, m996RL51, m996RL54) + this.f7357X[8] + 1352829926, 11) + m996RL52;
        int m996RL56 = m996RL(m996RL51, 10);
        int m996RL57 = m996RL(m996RL52 + m991f5(m996RL55, m996RL53, m996RL56) + this.f7357X[1] + 1352829926, 14) + m996RL54;
        int m996RL58 = m996RL(m996RL53, 10);
        int m996RL59 = m996RL(m996RL54 + m991f5(m996RL57, m996RL55, m996RL58) + this.f7357X[10] + 1352829926, 14) + m996RL56;
        int m996RL60 = m996RL(m996RL55, 10);
        int m996RL61 = m996RL(m996RL56 + m991f5(m996RL59, m996RL57, m996RL60) + this.f7357X[3] + 1352829926, 12) + m996RL58;
        int m996RL62 = m996RL(m996RL57, 10);
        int m996RL63 = m996RL(m996RL58 + m991f5(m996RL61, m996RL59, m996RL62) + this.f7357X[12] + 1352829926, 6) + m996RL60;
        int m996RL64 = m996RL(m996RL59, 10);
        int m996RL65 = m996RL(m996RL28 + m994f2(m996RL31, m996RL29, m996RL32) + this.f7357X[7] + 1518500249, 7) + m996RL30;
        int m996RL66 = m996RL(m996RL29, 10);
        int m996RL67 = m996RL(m996RL30 + m994f2(m996RL65, m996RL31, m996RL66) + this.f7357X[4] + 1518500249, 6) + m996RL32;
        int m996RL68 = m996RL(m996RL31, 10);
        int m996RL69 = m996RL(m996RL32 + m994f2(m996RL67, m996RL65, m996RL68) + this.f7357X[13] + 1518500249, 8) + m996RL66;
        int m996RL70 = m996RL(m996RL65, 10);
        int m996RL71 = m996RL(m996RL66 + m994f2(m996RL69, m996RL67, m996RL70) + this.f7357X[1] + 1518500249, 13) + m996RL68;
        int m996RL72 = m996RL(m996RL67, 10);
        int m996RL73 = m996RL(m996RL68 + m994f2(m996RL71, m996RL69, m996RL72) + this.f7357X[10] + 1518500249, 11) + m996RL70;
        int m996RL74 = m996RL(m996RL69, 10);
        int m996RL75 = m996RL(m996RL70 + m994f2(m996RL73, m996RL71, m996RL74) + this.f7357X[6] + 1518500249, 9) + m996RL72;
        int m996RL76 = m996RL(m996RL71, 10);
        int m996RL77 = m996RL(m996RL72 + m994f2(m996RL75, m996RL73, m996RL76) + this.f7357X[15] + 1518500249, 7) + m996RL74;
        int m996RL78 = m996RL(m996RL73, 10);
        int m996RL79 = m996RL(m996RL74 + m994f2(m996RL77, m996RL75, m996RL78) + this.f7357X[3] + 1518500249, 15) + m996RL76;
        int m996RL80 = m996RL(m996RL75, 10);
        int m996RL81 = m996RL(m996RL76 + m994f2(m996RL79, m996RL77, m996RL80) + this.f7357X[12] + 1518500249, 7) + m996RL78;
        int m996RL82 = m996RL(m996RL77, 10);
        int m996RL83 = m996RL(m996RL78 + m994f2(m996RL81, m996RL79, m996RL82) + this.f7357X[0] + 1518500249, 12) + m996RL80;
        int m996RL84 = m996RL(m996RL79, 10);
        int m996RL85 = m996RL(m996RL80 + m994f2(m996RL83, m996RL81, m996RL84) + this.f7357X[9] + 1518500249, 15) + m996RL82;
        int m996RL86 = m996RL(m996RL81, 10);
        int m996RL87 = m996RL(m996RL82 + m994f2(m996RL85, m996RL83, m996RL86) + this.f7357X[5] + 1518500249, 9) + m996RL84;
        int m996RL88 = m996RL(m996RL83, 10);
        int m996RL89 = m996RL(m996RL84 + m994f2(m996RL87, m996RL85, m996RL88) + this.f7357X[2] + 1518500249, 11) + m996RL86;
        int m996RL90 = m996RL(m996RL85, 10);
        int m996RL91 = m996RL(m996RL86 + m994f2(m996RL89, m996RL87, m996RL90) + this.f7357X[14] + 1518500249, 7) + m996RL88;
        int m996RL92 = m996RL(m996RL87, 10);
        int m996RL93 = m996RL(m996RL88 + m994f2(m996RL91, m996RL89, m996RL92) + this.f7357X[11] + 1518500249, 13) + m996RL90;
        int m996RL94 = m996RL(m996RL89, 10);
        int m996RL95 = m996RL(m996RL90 + m994f2(m996RL93, m996RL91, m996RL94) + this.f7357X[8] + 1518500249, 12) + m996RL92;
        int m996RL96 = m996RL(m996RL91, 10);
        int m996RL97 = m996RL(m996RL60 + m992f4(m996RL63, m996RL61, m996RL64) + this.f7357X[6] + 1548603684, 9) + m996RL62;
        int m996RL98 = m996RL(m996RL61, 10);
        int m996RL99 = m996RL(m996RL62 + m992f4(m996RL97, m996RL63, m996RL98) + this.f7357X[11] + 1548603684, 13) + m996RL64;
        int m996RL100 = m996RL(m996RL63, 10);
        int m996RL101 = m996RL(m996RL64 + m992f4(m996RL99, m996RL97, m996RL100) + this.f7357X[3] + 1548603684, 15) + m996RL98;
        int m996RL102 = m996RL(m996RL97, 10);
        int m996RL103 = m996RL(m996RL98 + m992f4(m996RL101, m996RL99, m996RL102) + this.f7357X[7] + 1548603684, 7) + m996RL100;
        int m996RL104 = m996RL(m996RL99, 10);
        int m996RL105 = m996RL(m996RL100 + m992f4(m996RL103, m996RL101, m996RL104) + this.f7357X[0] + 1548603684, 12) + m996RL102;
        int m996RL106 = m996RL(m996RL101, 10);
        int m996RL107 = m996RL(m996RL102 + m992f4(m996RL105, m996RL103, m996RL106) + this.f7357X[13] + 1548603684, 8) + m996RL104;
        int m996RL108 = m996RL(m996RL103, 10);
        int m996RL109 = m996RL(m996RL104 + m992f4(m996RL107, m996RL105, m996RL108) + this.f7357X[5] + 1548603684, 9) + m996RL106;
        int m996RL110 = m996RL(m996RL105, 10);
        int m996RL111 = m996RL(m996RL106 + m992f4(m996RL109, m996RL107, m996RL110) + this.f7357X[10] + 1548603684, 11) + m996RL108;
        int m996RL112 = m996RL(m996RL107, 10);
        int m996RL113 = m996RL(m996RL108 + m992f4(m996RL111, m996RL109, m996RL112) + this.f7357X[14] + 1548603684, 7) + m996RL110;
        int m996RL114 = m996RL(m996RL109, 10);
        int m996RL115 = m996RL(m996RL110 + m992f4(m996RL113, m996RL111, m996RL114) + this.f7357X[15] + 1548603684, 7) + m996RL112;
        int m996RL116 = m996RL(m996RL111, 10);
        int m996RL117 = m996RL(m996RL112 + m992f4(m996RL115, m996RL113, m996RL116) + this.f7357X[8] + 1548603684, 12) + m996RL114;
        int m996RL118 = m996RL(m996RL113, 10);
        int m996RL119 = m996RL(m996RL114 + m992f4(m996RL117, m996RL115, m996RL118) + this.f7357X[12] + 1548603684, 7) + m996RL116;
        int m996RL120 = m996RL(m996RL115, 10);
        int m996RL121 = m996RL(m996RL116 + m992f4(m996RL119, m996RL117, m996RL120) + this.f7357X[4] + 1548603684, 6) + m996RL118;
        int m996RL122 = m996RL(m996RL117, 10);
        int m996RL123 = m996RL(m996RL118 + m992f4(m996RL121, m996RL119, m996RL122) + this.f7357X[9] + 1548603684, 15) + m996RL120;
        int m996RL124 = m996RL(m996RL119, 10);
        int m996RL125 = m996RL(m996RL120 + m992f4(m996RL123, m996RL121, m996RL124) + this.f7357X[1] + 1548603684, 13) + m996RL122;
        int m996RL126 = m996RL(m996RL121, 10);
        int m996RL127 = m996RL(m996RL122 + m992f4(m996RL125, m996RL123, m996RL126) + this.f7357X[2] + 1548603684, 11) + m996RL124;
        int m996RL128 = m996RL(m996RL123, 10);
        int m996RL129 = m996RL(m996RL92 + m993f3(m996RL95, m996RL93, m996RL96) + this.f7357X[3] + 1859775393, 11) + m996RL94;
        int m996RL130 = m996RL(m996RL93, 10);
        int m996RL131 = m996RL(m996RL94 + m993f3(m996RL129, m996RL95, m996RL130) + this.f7357X[10] + 1859775393, 13) + m996RL96;
        int m996RL132 = m996RL(m996RL95, 10);
        int m996RL133 = m996RL(m996RL96 + m993f3(m996RL131, m996RL129, m996RL132) + this.f7357X[14] + 1859775393, 6) + m996RL130;
        int m996RL134 = m996RL(m996RL129, 10);
        int m996RL135 = m996RL(m996RL130 + m993f3(m996RL133, m996RL131, m996RL134) + this.f7357X[4] + 1859775393, 7) + m996RL132;
        int m996RL136 = m996RL(m996RL131, 10);
        int m996RL137 = m996RL(m996RL132 + m993f3(m996RL135, m996RL133, m996RL136) + this.f7357X[9] + 1859775393, 14) + m996RL134;
        int m996RL138 = m996RL(m996RL133, 10);
        int m996RL139 = m996RL(m996RL134 + m993f3(m996RL137, m996RL135, m996RL138) + this.f7357X[15] + 1859775393, 9) + m996RL136;
        int m996RL140 = m996RL(m996RL135, 10);
        int m996RL141 = m996RL(m996RL136 + m993f3(m996RL139, m996RL137, m996RL140) + this.f7357X[8] + 1859775393, 13) + m996RL138;
        int m996RL142 = m996RL(m996RL137, 10);
        int m996RL143 = m996RL(m996RL138 + m993f3(m996RL141, m996RL139, m996RL142) + this.f7357X[1] + 1859775393, 15) + m996RL140;
        int m996RL144 = m996RL(m996RL139, 10);
        int m996RL145 = m996RL(m996RL140 + m993f3(m996RL143, m996RL141, m996RL144) + this.f7357X[2] + 1859775393, 14) + m996RL142;
        int m996RL146 = m996RL(m996RL141, 10);
        int m996RL147 = m996RL(m996RL142 + m993f3(m996RL145, m996RL143, m996RL146) + this.f7357X[7] + 1859775393, 8) + m996RL144;
        int m996RL148 = m996RL(m996RL143, 10);
        int m996RL149 = m996RL(m996RL144 + m993f3(m996RL147, m996RL145, m996RL148) + this.f7357X[0] + 1859775393, 13) + m996RL146;
        int m996RL150 = m996RL(m996RL145, 10);
        int m996RL151 = m996RL(m996RL146 + m993f3(m996RL149, m996RL147, m996RL150) + this.f7357X[6] + 1859775393, 6) + m996RL148;
        int m996RL152 = m996RL(m996RL147, 10);
        int m996RL153 = m996RL(m996RL148 + m993f3(m996RL151, m996RL149, m996RL152) + this.f7357X[13] + 1859775393, 5) + m996RL150;
        int m996RL154 = m996RL(m996RL149, 10);
        int m996RL155 = m996RL(m996RL150 + m993f3(m996RL153, m996RL151, m996RL154) + this.f7357X[11] + 1859775393, 12) + m996RL152;
        int m996RL156 = m996RL(m996RL151, 10);
        int m996RL157 = m996RL(m996RL152 + m993f3(m996RL155, m996RL153, m996RL156) + this.f7357X[5] + 1859775393, 7) + m996RL154;
        int m996RL158 = m996RL(m996RL153, 10);
        int m996RL159 = m996RL(m996RL154 + m993f3(m996RL157, m996RL155, m996RL158) + this.f7357X[12] + 1859775393, 5) + m996RL156;
        int m996RL160 = m996RL(m996RL155, 10);
        int m996RL161 = m996RL(m996RL124 + m993f3(m996RL127, m996RL125, m996RL128) + this.f7357X[15] + 1836072691, 9) + m996RL126;
        int m996RL162 = m996RL(m996RL125, 10);
        int m996RL163 = m996RL(m996RL126 + m993f3(m996RL161, m996RL127, m996RL162) + this.f7357X[5] + 1836072691, 7) + m996RL128;
        int m996RL164 = m996RL(m996RL127, 10);
        int m996RL165 = m996RL(m996RL128 + m993f3(m996RL163, m996RL161, m996RL164) + this.f7357X[1] + 1836072691, 15) + m996RL162;
        int m996RL166 = m996RL(m996RL161, 10);
        int m996RL167 = m996RL(m996RL162 + m993f3(m996RL165, m996RL163, m996RL166) + this.f7357X[3] + 1836072691, 11) + m996RL164;
        int m996RL168 = m996RL(m996RL163, 10);
        int m996RL169 = m996RL(m996RL164 + m993f3(m996RL167, m996RL165, m996RL168) + this.f7357X[7] + 1836072691, 8) + m996RL166;
        int m996RL170 = m996RL(m996RL165, 10);
        int m996RL171 = m996RL(m996RL166 + m993f3(m996RL169, m996RL167, m996RL170) + this.f7357X[14] + 1836072691, 6) + m996RL168;
        int m996RL172 = m996RL(m996RL167, 10);
        int m996RL173 = m996RL(m996RL168 + m993f3(m996RL171, m996RL169, m996RL172) + this.f7357X[6] + 1836072691, 6) + m996RL170;
        int m996RL174 = m996RL(m996RL169, 10);
        int m996RL175 = m996RL(m996RL170 + m993f3(m996RL173, m996RL171, m996RL174) + this.f7357X[9] + 1836072691, 14) + m996RL172;
        int m996RL176 = m996RL(m996RL171, 10);
        int m996RL177 = m996RL(m996RL172 + m993f3(m996RL175, m996RL173, m996RL176) + this.f7357X[11] + 1836072691, 12) + m996RL174;
        int m996RL178 = m996RL(m996RL173, 10);
        int m996RL179 = m996RL(m996RL174 + m993f3(m996RL177, m996RL175, m996RL178) + this.f7357X[8] + 1836072691, 13) + m996RL176;
        int m996RL180 = m996RL(m996RL175, 10);
        int m996RL181 = m996RL(m996RL176 + m993f3(m996RL179, m996RL177, m996RL180) + this.f7357X[12] + 1836072691, 5) + m996RL178;
        int m996RL182 = m996RL(m996RL177, 10);
        int m996RL183 = m996RL(m996RL178 + m993f3(m996RL181, m996RL179, m996RL182) + this.f7357X[2] + 1836072691, 14) + m996RL180;
        int m996RL184 = m996RL(m996RL179, 10);
        int m996RL185 = m996RL(m996RL180 + m993f3(m996RL183, m996RL181, m996RL184) + this.f7357X[10] + 1836072691, 13) + m996RL182;
        int m996RL186 = m996RL(m996RL181, 10);
        int m996RL187 = m996RL(m996RL182 + m993f3(m996RL185, m996RL183, m996RL186) + this.f7357X[0] + 1836072691, 13) + m996RL184;
        int m996RL188 = m996RL(m996RL183, 10);
        int m996RL189 = m996RL(m996RL184 + m993f3(m996RL187, m996RL185, m996RL188) + this.f7357X[4] + 1836072691, 7) + m996RL186;
        int m996RL190 = m996RL(m996RL185, 10);
        int m996RL191 = m996RL(m996RL186 + m993f3(m996RL189, m996RL187, m996RL190) + this.f7357X[13] + 1836072691, 5) + m996RL188;
        int m996RL192 = m996RL(m996RL187, 10);
        int m996RL193 = m996RL(((m996RL156 + m992f4(m996RL159, m996RL157, m996RL160)) + this.f7357X[1]) - 1894007588, 11) + m996RL158;
        int m996RL194 = m996RL(m996RL157, 10);
        int m996RL195 = m996RL(((m996RL158 + m992f4(m996RL193, m996RL159, m996RL194)) + this.f7357X[9]) - 1894007588, 12) + m996RL160;
        int m996RL196 = m996RL(m996RL159, 10);
        int m996RL197 = m996RL(((m996RL160 + m992f4(m996RL195, m996RL193, m996RL196)) + this.f7357X[11]) - 1894007588, 14) + m996RL194;
        int m996RL198 = m996RL(m996RL193, 10);
        int m996RL199 = m996RL(((m996RL194 + m992f4(m996RL197, m996RL195, m996RL198)) + this.f7357X[10]) - 1894007588, 15) + m996RL196;
        int m996RL200 = m996RL(m996RL195, 10);
        int m996RL201 = m996RL(((m996RL196 + m992f4(m996RL199, m996RL197, m996RL200)) + this.f7357X[0]) - 1894007588, 14) + m996RL198;
        int m996RL202 = m996RL(m996RL197, 10);
        int m996RL203 = m996RL(((m996RL198 + m992f4(m996RL201, m996RL199, m996RL202)) + this.f7357X[8]) - 1894007588, 15) + m996RL200;
        int m996RL204 = m996RL(m996RL199, 10);
        int m996RL205 = m996RL(((m996RL200 + m992f4(m996RL203, m996RL201, m996RL204)) + this.f7357X[12]) - 1894007588, 9) + m996RL202;
        int m996RL206 = m996RL(m996RL201, 10);
        int m996RL207 = m996RL(((m996RL202 + m992f4(m996RL205, m996RL203, m996RL206)) + this.f7357X[4]) - 1894007588, 8) + m996RL204;
        int m996RL208 = m996RL(m996RL203, 10);
        int m996RL209 = m996RL(((m996RL204 + m992f4(m996RL207, m996RL205, m996RL208)) + this.f7357X[13]) - 1894007588, 9) + m996RL206;
        int m996RL210 = m996RL(m996RL205, 10);
        int m996RL211 = m996RL(((m996RL206 + m992f4(m996RL209, m996RL207, m996RL210)) + this.f7357X[3]) - 1894007588, 14) + m996RL208;
        int m996RL212 = m996RL(m996RL207, 10);
        int m996RL213 = m996RL(((m996RL208 + m992f4(m996RL211, m996RL209, m996RL212)) + this.f7357X[7]) - 1894007588, 5) + m996RL210;
        int m996RL214 = m996RL(m996RL209, 10);
        int m996RL215 = m996RL(((m996RL210 + m992f4(m996RL213, m996RL211, m996RL214)) + this.f7357X[15]) - 1894007588, 6) + m996RL212;
        int m996RL216 = m996RL(m996RL211, 10);
        int m996RL217 = m996RL(((m996RL212 + m992f4(m996RL215, m996RL213, m996RL216)) + this.f7357X[14]) - 1894007588, 8) + m996RL214;
        int m996RL218 = m996RL(m996RL213, 10);
        int m996RL219 = m996RL(((m996RL214 + m992f4(m996RL217, m996RL215, m996RL218)) + this.f7357X[5]) - 1894007588, 6) + m996RL216;
        int m996RL220 = m996RL(m996RL215, 10);
        int m996RL221 = m996RL(((m996RL216 + m992f4(m996RL219, m996RL217, m996RL220)) + this.f7357X[6]) - 1894007588, 5) + m996RL218;
        int m996RL222 = m996RL(m996RL217, 10);
        int m996RL223 = m996RL(((m996RL218 + m992f4(m996RL221, m996RL219, m996RL222)) + this.f7357X[2]) - 1894007588, 12) + m996RL220;
        int m996RL224 = m996RL(m996RL219, 10);
        int m996RL225 = m996RL(m996RL188 + m994f2(m996RL191, m996RL189, m996RL192) + this.f7357X[8] + 2053994217, 15) + m996RL190;
        int m996RL226 = m996RL(m996RL189, 10);
        int m996RL227 = m996RL(m996RL190 + m994f2(m996RL225, m996RL191, m996RL226) + this.f7357X[6] + 2053994217, 5) + m996RL192;
        int m996RL228 = m996RL(m996RL191, 10);
        int m996RL229 = m996RL(m996RL192 + m994f2(m996RL227, m996RL225, m996RL228) + this.f7357X[4] + 2053994217, 8) + m996RL226;
        int m996RL230 = m996RL(m996RL225, 10);
        int m996RL231 = m996RL(m996RL226 + m994f2(m996RL229, m996RL227, m996RL230) + this.f7357X[1] + 2053994217, 11) + m996RL228;
        int m996RL232 = m996RL(m996RL227, 10);
        int m996RL233 = m996RL(m996RL228 + m994f2(m996RL231, m996RL229, m996RL232) + this.f7357X[3] + 2053994217, 14) + m996RL230;
        int m996RL234 = m996RL(m996RL229, 10);
        int m996RL235 = m996RL(m996RL230 + m994f2(m996RL233, m996RL231, m996RL234) + this.f7357X[11] + 2053994217, 14) + m996RL232;
        int m996RL236 = m996RL(m996RL231, 10);
        int m996RL237 = m996RL(m996RL232 + m994f2(m996RL235, m996RL233, m996RL236) + this.f7357X[15] + 2053994217, 6) + m996RL234;
        int m996RL238 = m996RL(m996RL233, 10);
        int m996RL239 = m996RL(m996RL234 + m994f2(m996RL237, m996RL235, m996RL238) + this.f7357X[0] + 2053994217, 14) + m996RL236;
        int m996RL240 = m996RL(m996RL235, 10);
        int m996RL241 = m996RL(m996RL236 + m994f2(m996RL239, m996RL237, m996RL240) + this.f7357X[5] + 2053994217, 6) + m996RL238;
        int m996RL242 = m996RL(m996RL237, 10);
        int m996RL243 = m996RL(m996RL238 + m994f2(m996RL241, m996RL239, m996RL242) + this.f7357X[12] + 2053994217, 9) + m996RL240;
        int m996RL244 = m996RL(m996RL239, 10);
        int m996RL245 = m996RL(m996RL240 + m994f2(m996RL243, m996RL241, m996RL244) + this.f7357X[2] + 2053994217, 12) + m996RL242;
        int m996RL246 = m996RL(m996RL241, 10);
        int m996RL247 = m996RL(m996RL242 + m994f2(m996RL245, m996RL243, m996RL246) + this.f7357X[13] + 2053994217, 9) + m996RL244;
        int m996RL248 = m996RL(m996RL243, 10);
        int m996RL249 = m996RL(m996RL244 + m994f2(m996RL247, m996RL245, m996RL248) + this.f7357X[9] + 2053994217, 12) + m996RL246;
        int m996RL250 = m996RL(m996RL245, 10);
        int m996RL251 = m996RL(m996RL246 + m994f2(m996RL249, m996RL247, m996RL250) + this.f7357X[7] + 2053994217, 5) + m996RL248;
        int m996RL252 = m996RL(m996RL247, 10);
        int m996RL253 = m996RL(m996RL248 + m994f2(m996RL251, m996RL249, m996RL252) + this.f7357X[10] + 2053994217, 15) + m996RL250;
        int m996RL254 = m996RL(m996RL249, 10);
        int m996RL255 = m996RL(m996RL250 + m994f2(m996RL253, m996RL251, m996RL254) + this.f7357X[14] + 2053994217, 8) + m996RL252;
        int m996RL256 = m996RL(m996RL251, 10);
        int m996RL257 = m996RL(((m996RL220 + m991f5(m996RL223, m996RL221, m996RL224)) + this.f7357X[4]) - 1454113458, 9) + m996RL222;
        int m996RL258 = m996RL(m996RL221, 10);
        int m996RL259 = m996RL(((m996RL222 + m991f5(m996RL257, m996RL223, m996RL258)) + this.f7357X[0]) - 1454113458, 15) + m996RL224;
        int m996RL260 = m996RL(m996RL223, 10);
        int m996RL261 = m996RL(((m996RL224 + m991f5(m996RL259, m996RL257, m996RL260)) + this.f7357X[5]) - 1454113458, 5) + m996RL258;
        int m996RL262 = m996RL(m996RL257, 10);
        int m996RL263 = m996RL(((m996RL258 + m991f5(m996RL261, m996RL259, m996RL262)) + this.f7357X[9]) - 1454113458, 11) + m996RL260;
        int m996RL264 = m996RL(m996RL259, 10);
        int m996RL265 = m996RL(((m996RL260 + m991f5(m996RL263, m996RL261, m996RL264)) + this.f7357X[7]) - 1454113458, 6) + m996RL262;
        int m996RL266 = m996RL(m996RL261, 10);
        int m996RL267 = m996RL(((m996RL262 + m991f5(m996RL265, m996RL263, m996RL266)) + this.f7357X[12]) - 1454113458, 8) + m996RL264;
        int m996RL268 = m996RL(m996RL263, 10);
        int m996RL269 = m996RL(((m996RL264 + m991f5(m996RL267, m996RL265, m996RL268)) + this.f7357X[2]) - 1454113458, 13) + m996RL266;
        int m996RL270 = m996RL(m996RL265, 10);
        int m996RL271 = m996RL(((m996RL266 + m991f5(m996RL269, m996RL267, m996RL270)) + this.f7357X[10]) - 1454113458, 12) + m996RL268;
        int m996RL272 = m996RL(m996RL267, 10);
        int m996RL273 = m996RL(((m996RL268 + m991f5(m996RL271, m996RL269, m996RL272)) + this.f7357X[14]) - 1454113458, 5) + m996RL270;
        int m996RL274 = m996RL(m996RL269, 10);
        int m996RL275 = m996RL(((m996RL270 + m991f5(m996RL273, m996RL271, m996RL274)) + this.f7357X[1]) - 1454113458, 12) + m996RL272;
        int m996RL276 = m996RL(m996RL271, 10);
        int m996RL277 = m996RL(((m996RL272 + m991f5(m996RL275, m996RL273, m996RL276)) + this.f7357X[3]) - 1454113458, 13) + m996RL274;
        int m996RL278 = m996RL(m996RL273, 10);
        int m996RL279 = m996RL(((m996RL274 + m991f5(m996RL277, m996RL275, m996RL278)) + this.f7357X[8]) - 1454113458, 14) + m996RL276;
        int m996RL280 = m996RL(m996RL275, 10);
        int m996RL281 = m996RL(((m996RL276 + m991f5(m996RL279, m996RL277, m996RL280)) + this.f7357X[11]) - 1454113458, 11) + m996RL278;
        int m996RL282 = m996RL(m996RL277, 10);
        int m996RL283 = m996RL(((m996RL278 + m991f5(m996RL281, m996RL279, m996RL282)) + this.f7357X[6]) - 1454113458, 8) + m996RL280;
        int m996RL284 = m996RL(m996RL279, 10);
        int m996RL285 = m996RL(((m996RL280 + m991f5(m996RL283, m996RL281, m996RL284)) + this.f7357X[15]) - 1454113458, 5) + m996RL282;
        int m996RL286 = m996RL(m996RL281, 10);
        int m996RL287 = m996RL(((m996RL282 + m991f5(m996RL285, m996RL283, m996RL286)) + this.f7357X[13]) - 1454113458, 6);
        int m996RL288 = m996RL(m996RL283, 10);
        int m996RL289 = m996RL(m996RL252 + m995f1(m996RL255, m996RL253, m996RL256) + this.f7357X[12], 8) + m996RL254;
        int m996RL290 = m996RL(m996RL253, 10);
        int m996RL291 = m996RL(m996RL254 + m995f1(m996RL289, m996RL255, m996RL290) + this.f7357X[15], 5) + m996RL256;
        int m996RL292 = m996RL(m996RL255, 10);
        int m996RL293 = m996RL(m996RL256 + m995f1(m996RL291, m996RL289, m996RL292) + this.f7357X[10], 12) + m996RL290;
        int m996RL294 = m996RL(m996RL289, 10);
        int m996RL295 = m996RL(m996RL290 + m995f1(m996RL293, m996RL291, m996RL294) + this.f7357X[4], 9) + m996RL292;
        int m996RL296 = m996RL(m996RL291, 10);
        int m996RL297 = m996RL(m996RL292 + m995f1(m996RL295, m996RL293, m996RL296) + this.f7357X[1], 12) + m996RL294;
        int m996RL298 = m996RL(m996RL293, 10);
        int m996RL299 = m996RL(m996RL294 + m995f1(m996RL297, m996RL295, m996RL298) + this.f7357X[5], 5) + m996RL296;
        int m996RL300 = m996RL(m996RL295, 10);
        int m996RL301 = m996RL(m996RL296 + m995f1(m996RL299, m996RL297, m996RL300) + this.f7357X[8], 14) + m996RL298;
        int m996RL302 = m996RL(m996RL297, 10);
        int m996RL303 = m996RL(m996RL298 + m995f1(m996RL301, m996RL299, m996RL302) + this.f7357X[7], 6) + m996RL300;
        int m996RL304 = m996RL(m996RL299, 10);
        int m996RL305 = m996RL(m996RL300 + m995f1(m996RL303, m996RL301, m996RL304) + this.f7357X[6], 8) + m996RL302;
        int m996RL306 = m996RL(m996RL301, 10);
        int m996RL307 = m996RL(m996RL302 + m995f1(m996RL305, m996RL303, m996RL306) + this.f7357X[2], 13) + m996RL304;
        int m996RL308 = m996RL(m996RL303, 10);
        int m996RL309 = m996RL(m996RL304 + m995f1(m996RL307, m996RL305, m996RL308) + this.f7357X[13], 6) + m996RL306;
        int m996RL310 = m996RL(m996RL305, 10);
        int m996RL311 = m996RL(m996RL306 + m995f1(m996RL309, m996RL307, m996RL310) + this.f7357X[14], 5) + m996RL308;
        int m996RL312 = m996RL(m996RL307, 10);
        int m996RL313 = m996RL(m996RL308 + m995f1(m996RL311, m996RL309, m996RL312) + this.f7357X[0], 15) + m996RL310;
        int m996RL314 = m996RL(m996RL309, 10);
        int m996RL315 = m996RL(m996RL310 + m995f1(m996RL313, m996RL311, m996RL314) + this.f7357X[3], 13) + m996RL312;
        int m996RL316 = m996RL(m996RL311, 10);
        int m996RL317 = m996RL(m996RL312 + m995f1(m996RL315, m996RL313, m996RL316) + this.f7357X[9], 11) + m996RL314;
        int m996RL318 = m996RL(m996RL313, 10);
        int m996RL319 = m996RL(m996RL314 + m995f1(m996RL317, m996RL315, m996RL318) + this.f7357X[11], 11);
        int m996RL320 = m996RL(m996RL315, 10);
        int i6 = this.f7353H1;
        this.f7353H1 = this.f7354H2 + m996RL288 + m996RL318;
        this.f7354H2 = this.f7355H3 + m996RL286 + m996RL316;
        this.f7355H3 = this.f7356H4 + m996RL284 + m996RL319 + m996RL316;
        this.f7356H4 = this.f7352H0 + m996RL287 + m996RL284 + m996RL317;
        this.f7352H0 = m996RL320 + m996RL285 + i6;
        this.xOff = 0;
        int i7 = 0;
        while (true) {
            int[] iArr = this.f7357X;
            if (i7 != iArr.length) {
                iArr[i7] = 0;
                i7++;
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
        int[] iArr = this.f7357X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        int[] iArr = this.f7357X;
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
        this.f7352H0 = 1732584193;
        this.f7353H1 = -271733879;
        this.f7354H2 = -1732584194;
        this.f7355H3 = 271733878;
        this.f7356H4 = -1009589776;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7357X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
