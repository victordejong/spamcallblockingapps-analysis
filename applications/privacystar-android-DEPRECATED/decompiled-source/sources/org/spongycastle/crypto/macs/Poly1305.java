package org.spongycastle.crypto.macs;

import org.spongycastle.asn1.cmc.BodyPartID;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/Poly1305.class */
public class Poly1305 implements Mac {
    private static final int BLOCK_SIZE = 16;
    private final BlockCipher cipher;
    private final byte[] currentBlock;
    private int currentBlockOffset;

    /* renamed from: h0 */
    private int f1313h0;

    /* renamed from: h1 */
    private int f1314h1;

    /* renamed from: h2 */
    private int f1315h2;

    /* renamed from: h3 */
    private int f1316h3;

    /* renamed from: h4 */
    private int f1317h4;

    /* renamed from: k0 */
    private int f1318k0;

    /* renamed from: k1 */
    private int f1319k1;

    /* renamed from: k2 */
    private int f1320k2;

    /* renamed from: k3 */
    private int f1321k3;

    /* renamed from: r0 */
    private int f1322r0;

    /* renamed from: r1 */
    private int f1323r1;

    /* renamed from: r2 */
    private int f1324r2;

    /* renamed from: r3 */
    private int f1325r3;

    /* renamed from: r4 */
    private int f1326r4;

    /* renamed from: s1 */
    private int f1327s1;

    /* renamed from: s2 */
    private int f1328s2;

    /* renamed from: s3 */
    private int f1329s3;

    /* renamed from: s4 */
    private int f1330s4;
    private final byte[] singleByte;

    public Poly1305() {
        this.singleByte = new byte[1];
        this.currentBlock = new byte[16];
        this.currentBlockOffset = 0;
        this.cipher = null;
    }

    public Poly1305(BlockCipher blockCipher) {
        this.singleByte = new byte[1];
        this.currentBlock = new byte[16];
        this.currentBlockOffset = 0;
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit block cipher.");
        }
        this.cipher = blockCipher;
    }

    private static final long mul32x32_64(int i, int i2) {
        return (i & BodyPartID.bodyIdMax) * i2;
    }

    private void processBlock() {
        if (this.currentBlockOffset < 16) {
            this.currentBlock[this.currentBlockOffset] = (byte) 1;
            for (int i = this.currentBlockOffset + 1; i < 16; i++) {
                this.currentBlock[i] = (byte) 0;
            }
        }
        long littleEndianToInt = Pack.littleEndianToInt(this.currentBlock, 0) & BodyPartID.bodyIdMax;
        long littleEndianToInt2 = Pack.littleEndianToInt(this.currentBlock, 4) & BodyPartID.bodyIdMax;
        long littleEndianToInt3 = Pack.littleEndianToInt(this.currentBlock, 8) & BodyPartID.bodyIdMax;
        long littleEndianToInt4 = BodyPartID.bodyIdMax & Pack.littleEndianToInt(this.currentBlock, 12);
        this.f1313h0 = (int) (this.f1313h0 + (littleEndianToInt & 67108863));
        this.f1314h1 = (int) (this.f1314h1 + ((((littleEndianToInt2 << 32) | littleEndianToInt) >>> 26) & 67108863));
        this.f1315h2 = (int) (this.f1315h2 + (((littleEndianToInt2 | (littleEndianToInt3 << 32)) >>> 20) & 67108863));
        this.f1316h3 = (int) (this.f1316h3 + ((((littleEndianToInt4 << 32) | littleEndianToInt3) >>> 14) & 67108863));
        this.f1317h4 = (int) (this.f1317h4 + (littleEndianToInt4 >>> 8));
        if (this.currentBlockOffset == 16) {
            this.f1317h4 += 16777216;
        }
        long mul32x32_64 = mul32x32_64(this.f1313h0, this.f1322r0) + mul32x32_64(this.f1314h1, this.f1330s4) + mul32x32_64(this.f1315h2, this.f1329s3) + mul32x32_64(this.f1316h3, this.f1328s2) + mul32x32_64(this.f1317h4, this.f1327s1);
        long mul32x32_642 = mul32x32_64(this.f1313h0, this.f1323r1);
        long mul32x32_643 = mul32x32_64(this.f1314h1, this.f1322r0);
        long mul32x32_644 = mul32x32_64(this.f1315h2, this.f1330s4);
        long mul32x32_645 = mul32x32_64(this.f1316h3, this.f1329s3);
        long mul32x32_646 = mul32x32_64(this.f1317h4, this.f1328s2);
        long mul32x32_647 = mul32x32_64(this.f1313h0, this.f1324r2);
        long mul32x32_648 = mul32x32_64(this.f1314h1, this.f1323r1);
        long mul32x32_649 = mul32x32_64(this.f1315h2, this.f1322r0);
        long mul32x32_6410 = mul32x32_64(this.f1316h3, this.f1330s4);
        long mul32x32_6411 = mul32x32_64(this.f1317h4, this.f1329s3);
        long mul32x32_6412 = mul32x32_64(this.f1313h0, this.f1325r3);
        long mul32x32_6413 = mul32x32_64(this.f1314h1, this.f1324r2);
        long mul32x32_6414 = mul32x32_64(this.f1315h2, this.f1323r1);
        long mul32x32_6415 = mul32x32_64(this.f1316h3, this.f1322r0);
        long mul32x32_6416 = mul32x32_64(this.f1317h4, this.f1330s4);
        long mul32x32_6417 = mul32x32_64(this.f1313h0, this.f1326r4);
        long mul32x32_6418 = mul32x32_64(this.f1314h1, this.f1325r3);
        long mul32x32_6419 = mul32x32_64(this.f1315h2, this.f1324r2);
        long mul32x32_6420 = mul32x32_64(this.f1316h3, this.f1323r1);
        long mul32x32_6421 = mul32x32_64(this.f1317h4, this.f1322r0);
        this.f1313h0 = ((int) mul32x32_64) & 67108863;
        long j = mul32x32_642 + mul32x32_643 + mul32x32_644 + mul32x32_645 + mul32x32_646 + (mul32x32_64 >>> 26);
        this.f1314h1 = ((int) j) & 67108863;
        long j2 = mul32x32_647 + mul32x32_648 + mul32x32_649 + mul32x32_6410 + mul32x32_6411 + (j >>> 26);
        this.f1315h2 = ((int) j2) & 67108863;
        long j3 = mul32x32_6412 + mul32x32_6413 + mul32x32_6414 + mul32x32_6415 + mul32x32_6416 + (j2 >>> 26);
        this.f1316h3 = ((int) j3) & 67108863;
        long j4 = mul32x32_6417 + mul32x32_6418 + mul32x32_6419 + mul32x32_6420 + mul32x32_6421 + (j3 >>> 26);
        this.f1317h4 = ((int) j4) & 67108863;
        this.f1313h0 += ((int) (j4 >>> 26)) * 5;
        this.f1314h1 += this.f1313h0 >>> 26;
        this.f1313h0 &= 67108863;
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        } else if (this.cipher == null || (bArr2 != null && bArr2.length == 16)) {
            int i = 0;
            int littleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            int littleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            int littleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            int littleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            this.f1322r0 = 67108863 & littleEndianToInt;
            this.f1323r1 = ((littleEndianToInt >>> 26) | (littleEndianToInt2 << 6)) & 67108611;
            this.f1324r2 = ((littleEndianToInt2 >>> 20) | (littleEndianToInt3 << 12)) & 67092735;
            this.f1325r3 = ((littleEndianToInt3 >>> 14) | (littleEndianToInt4 << 18)) & 66076671;
            this.f1326r4 = (littleEndianToInt4 >>> 8) & 1048575;
            this.f1327s1 = this.f1323r1 * 5;
            this.f1328s2 = this.f1324r2 * 5;
            this.f1329s3 = this.f1325r3 * 5;
            this.f1330s4 = this.f1326r4 * 5;
            if (this.cipher == null) {
                i = 16;
            } else {
                byte[] bArr3 = new byte[16];
                this.cipher.init(true, new KeyParameter(bArr, 16, 16));
                this.cipher.processBlock(bArr2, 0, bArr3, 0);
                bArr = bArr3;
            }
            this.f1318k0 = Pack.littleEndianToInt(bArr, i + 0);
            this.f1319k1 = Pack.littleEndianToInt(bArr, i + 4);
            this.f1320k2 = Pack.littleEndianToInt(bArr, i + 8);
            this.f1321k3 = Pack.littleEndianToInt(bArr, i + 12);
        } else {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit IV.");
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        if (i + 16 > bArr.length) {
            throw new OutputLengthException("Output buffer is too short.");
        }
        if (this.currentBlockOffset > 0) {
            processBlock();
        }
        this.f1314h1 += this.f1313h0 >>> 26;
        this.f1313h0 &= 67108863;
        this.f1315h2 += this.f1314h1 >>> 26;
        this.f1314h1 &= 67108863;
        this.f1316h3 += this.f1315h2 >>> 26;
        this.f1315h2 &= 67108863;
        this.f1317h4 += this.f1316h3 >>> 26;
        this.f1316h3 &= 67108863;
        this.f1313h0 += (this.f1317h4 >>> 26) * 5;
        this.f1317h4 &= 67108863;
        this.f1314h1 += this.f1313h0 >>> 26;
        this.f1313h0 &= 67108863;
        int i2 = this.f1313h0 + 5;
        int i3 = this.f1314h1 + (i2 >>> 26);
        int i4 = this.f1315h2 + (i3 >>> 26);
        int i5 = this.f1316h3 + (i4 >>> 26);
        int i6 = (this.f1317h4 + (i5 >>> 26)) - 67108864;
        int i7 = (i6 >>> 31) - 1;
        int i8 = i7 ^ (-1);
        this.f1313h0 = (i2 & 67108863 & i7) | (this.f1313h0 & i8);
        this.f1314h1 = (this.f1314h1 & i8) | (i3 & 67108863 & i7);
        this.f1315h2 = (this.f1315h2 & i8) | (i4 & 67108863 & i7);
        this.f1316h3 = (this.f1316h3 & i8) | (67108863 & i5 & i7);
        this.f1317h4 = (this.f1317h4 & i8) | (i6 & i7);
        long j = ((this.f1313h0 | (this.f1314h1 << 26)) & BodyPartID.bodyIdMax) + (this.f1318k0 & BodyPartID.bodyIdMax);
        long j2 = (this.f1314h1 >>> 6) | (this.f1315h2 << 20);
        long j3 = this.f1319k1;
        long j4 = (this.f1315h2 >>> 12) | (this.f1316h3 << 14);
        long j5 = this.f1320k2;
        long j6 = (this.f1316h3 >>> 18) | (this.f1317h4 << 8);
        long j7 = this.f1321k3;
        Pack.intToLittleEndian((int) j, bArr, i);
        long j8 = (j2 & BodyPartID.bodyIdMax) + (j3 & BodyPartID.bodyIdMax) + (j >>> 32);
        Pack.intToLittleEndian((int) j8, bArr, i + 4);
        long j9 = (j4 & BodyPartID.bodyIdMax) + (j5 & BodyPartID.bodyIdMax) + (j8 >>> 32);
        Pack.intToLittleEndian((int) j9, bArr, i + 8);
        Pack.intToLittleEndian((int) ((j6 & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & j7) + (j9 >>> 32)), bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        String str;
        if (this.cipher == null) {
            str = "Poly1305";
        } else {
            str = "Poly1305-" + this.cipher.getAlgorithmName();
        }
        return str;
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParameters2;
        byte[] bArr;
        if (this.cipher == null) {
            bArr = null;
            cipherParameters2 = cipherParameters;
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Poly1305 requires an IV when used with a block cipher.");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            bArr = parametersWithIV.getIV();
            cipherParameters2 = parametersWithIV.getParameters();
        }
        if (!(cipherParameters2 instanceof KeyParameter)) {
            throw new IllegalArgumentException("Poly1305 requires a key.");
        }
        setKey(((KeyParameter) cipherParameters2).getKey(), bArr);
        reset();
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        this.currentBlockOffset = 0;
        this.f1317h4 = 0;
        this.f1316h3 = 0;
        this.f1315h2 = 0;
        this.f1314h1 = 0;
        this.f1313h0 = 0;
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.singleByte[0] = b;
        update(this.singleByte, 0, 1);
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException {
        int i3 = 0;
        while (i2 > i3) {
            if (this.currentBlockOffset == 16) {
                processBlock();
                this.currentBlockOffset = 0;
            }
            int min = Math.min(i2 - i3, 16 - this.currentBlockOffset);
            System.arraycopy(bArr, i3 + i, this.currentBlock, this.currentBlockOffset, min);
            i3 += min;
            this.currentBlockOffset += min;
        }
    }
}
