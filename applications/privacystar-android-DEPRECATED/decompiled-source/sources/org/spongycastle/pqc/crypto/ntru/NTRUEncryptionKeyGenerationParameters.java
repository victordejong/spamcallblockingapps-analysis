package org.spongycastle.pqc.crypto.ntru;

import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Arrays;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters.class */
public class NTRUEncryptionKeyGenerationParameters extends KeyGenerationParameters implements Cloneable {

    /* renamed from: N */
    public int f1729N;
    public int bufferLenBits;
    int bufferLenTrits;

    /* renamed from: c */
    public int f1730c;

    /* renamed from: db */
    public int f1731db;

    /* renamed from: df */
    public int f1732df;
    public int df1;
    public int df2;
    public int df3;

    /* renamed from: dg */
    public int f1733dg;
    public int dm0;

    /* renamed from: dr */
    public int f1734dr;
    public int dr1;
    public int dr2;
    public int dr3;
    public boolean fastFp;
    public Digest hashAlg;
    public boolean hashSeed;
    int llen;
    public int maxMsgLenBytes;
    public int minCallsMask;
    public int minCallsR;
    public byte[] oid;
    public int pkLen;
    public int polyType;

    /* renamed from: q */
    public int f1735q;
    public boolean sparse;
    public static final NTRUEncryptionKeyGenerationParameters EES1087EP2 = new NTRUEncryptionKeyGenerationParameters(FOAnalyticsConstants.NUMBER_DETAILS_ADD_CONTACT, 2048, 120, 120, 256, 13, 25, 14, true, new byte[]{0, 6, 3}, true, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters EES1171EP1 = new NTRUEncryptionKeyGenerationParameters(1171, 2048, 106, 106, 256, 13, 20, 15, true, new byte[]{0, 6, 4}, true, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters EES1499EP1 = new NTRUEncryptionKeyGenerationParameters(1499, 2048, 79, 79, 256, 13, 17, 19, true, new byte[]{0, 6, 5}, true, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_439 = new NTRUEncryptionKeyGenerationParameters(439, 2048, 146, 130, 128, 9, 32, 9, true, new byte[]{0, 7, 101}, true, false, new SHA256Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_439_FAST = new NTRUEncryptionKeyGenerationParameters(439, 2048, 9, 8, 5, 130, 128, 9, 32, 9, true, new byte[]{0, 7, 101}, true, true, new SHA256Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_743 = new NTRUEncryptionKeyGenerationParameters(743, 2048, 248, 220, 256, 10, 27, 14, true, new byte[]{0, 7, 105}, false, false, new SHA512Digest());
    public static final NTRUEncryptionKeyGenerationParameters APR2011_743_FAST = new NTRUEncryptionKeyGenerationParameters(743, 2048, 11, 11, 15, 220, 256, 10, 27, 14, true, new byte[]{0, 7, 105}, false, true, new SHA512Digest());

    public NTRUEncryptionKeyGenerationParameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z, byte[] bArr, boolean z2, boolean z3, Digest digest) {
        super(new SecureRandom(), i7);
        this.f1729N = i;
        this.f1735q = i2;
        this.df1 = i3;
        this.df2 = i4;
        this.df3 = i5;
        this.f1731db = i7;
        this.dm0 = i6;
        this.f1730c = i8;
        this.minCallsR = i9;
        this.minCallsMask = i10;
        this.hashSeed = z;
        this.oid = bArr;
        this.sparse = z2;
        this.fastFp = z3;
        this.polyType = 1;
        this.hashAlg = digest;
        init();
    }

    public NTRUEncryptionKeyGenerationParameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr, boolean z2, boolean z3, Digest digest) {
        super(new SecureRandom(), i5);
        this.f1729N = i;
        this.f1735q = i2;
        this.f1732df = i3;
        this.f1731db = i5;
        this.dm0 = i4;
        this.f1730c = i6;
        this.minCallsR = i7;
        this.minCallsMask = i8;
        this.hashSeed = z;
        this.oid = bArr;
        this.sparse = z2;
        this.fastFp = z3;
        this.polyType = 0;
        this.hashAlg = digest;
        init();
    }

    public NTRUEncryptionKeyGenerationParameters(InputStream inputStream) throws IOException {
        super(new SecureRandom(), -1);
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f1729N = dataInputStream.readInt();
        this.f1735q = dataInputStream.readInt();
        this.f1732df = dataInputStream.readInt();
        this.df1 = dataInputStream.readInt();
        this.df2 = dataInputStream.readInt();
        this.df3 = dataInputStream.readInt();
        this.f1731db = dataInputStream.readInt();
        this.dm0 = dataInputStream.readInt();
        this.f1730c = dataInputStream.readInt();
        this.minCallsR = dataInputStream.readInt();
        this.minCallsMask = dataInputStream.readInt();
        this.hashSeed = dataInputStream.readBoolean();
        this.oid = new byte[3];
        dataInputStream.readFully(this.oid);
        this.sparse = dataInputStream.readBoolean();
        this.fastFp = dataInputStream.readBoolean();
        this.polyType = dataInputStream.read();
        String readUTF = dataInputStream.readUTF();
        if (McElieceCCA2KeyGenParameterSpec.SHA512.equals(readUTF)) {
            this.hashAlg = new SHA512Digest();
        } else if ("SHA-256".equals(readUTF)) {
            this.hashAlg = new SHA256Digest();
        }
        init();
    }

    private void init() {
        this.f1734dr = this.f1732df;
        this.dr1 = this.df1;
        this.dr2 = this.df2;
        this.dr3 = this.df3;
        this.f1733dg = this.f1729N / 3;
        this.llen = 1;
        this.maxMsgLenBytes = (((((this.f1729N * 3) / 2) / 8) - this.llen) - (this.f1731db / 8)) - 1;
        this.bufferLenBits = (((((this.f1729N * 3) / 2) + 7) / 8) * 8) + 1;
        this.bufferLenTrits = this.f1729N - 1;
        this.pkLen = this.f1731db;
    }

    public NTRUEncryptionKeyGenerationParameters clone() {
        return this.polyType == 0 ? new NTRUEncryptionKeyGenerationParameters(this.f1729N, this.f1735q, this.f1732df, this.dm0, this.f1731db, this.f1730c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, this.hashAlg) : new NTRUEncryptionKeyGenerationParameters(this.f1729N, this.f1735q, this.df1, this.df2, this.df3, this.dm0, this.f1731db, this.f1730c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, this.hashAlg);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUEncryptionKeyGenerationParameters nTRUEncryptionKeyGenerationParameters = (NTRUEncryptionKeyGenerationParameters) obj;
        if (this.f1729N != nTRUEncryptionKeyGenerationParameters.f1729N || this.bufferLenBits != nTRUEncryptionKeyGenerationParameters.bufferLenBits || this.bufferLenTrits != nTRUEncryptionKeyGenerationParameters.bufferLenTrits || this.f1730c != nTRUEncryptionKeyGenerationParameters.f1730c || this.f1731db != nTRUEncryptionKeyGenerationParameters.f1731db || this.f1732df != nTRUEncryptionKeyGenerationParameters.f1732df || this.df1 != nTRUEncryptionKeyGenerationParameters.df1 || this.df2 != nTRUEncryptionKeyGenerationParameters.df2 || this.df3 != nTRUEncryptionKeyGenerationParameters.df3 || this.f1733dg != nTRUEncryptionKeyGenerationParameters.f1733dg || this.dm0 != nTRUEncryptionKeyGenerationParameters.dm0 || this.f1734dr != nTRUEncryptionKeyGenerationParameters.f1734dr || this.dr1 != nTRUEncryptionKeyGenerationParameters.dr1 || this.dr2 != nTRUEncryptionKeyGenerationParameters.dr2 || this.dr3 != nTRUEncryptionKeyGenerationParameters.dr3 || this.fastFp != nTRUEncryptionKeyGenerationParameters.fastFp) {
            return false;
        }
        if (this.hashAlg == null) {
            if (nTRUEncryptionKeyGenerationParameters.hashAlg != null) {
                return false;
            }
        } else if (!this.hashAlg.getAlgorithmName().equals(nTRUEncryptionKeyGenerationParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return this.hashSeed == nTRUEncryptionKeyGenerationParameters.hashSeed && this.llen == nTRUEncryptionKeyGenerationParameters.llen && this.maxMsgLenBytes == nTRUEncryptionKeyGenerationParameters.maxMsgLenBytes && this.minCallsMask == nTRUEncryptionKeyGenerationParameters.minCallsMask && this.minCallsR == nTRUEncryptionKeyGenerationParameters.minCallsR && Arrays.equals(this.oid, nTRUEncryptionKeyGenerationParameters.oid) && this.pkLen == nTRUEncryptionKeyGenerationParameters.pkLen && this.polyType == nTRUEncryptionKeyGenerationParameters.polyType && this.f1735q == nTRUEncryptionKeyGenerationParameters.f1735q && this.sparse == nTRUEncryptionKeyGenerationParameters.sparse;
    }

    public NTRUEncryptionParameters getEncryptionParameters() {
        return this.polyType == 0 ? new NTRUEncryptionParameters(this.f1729N, this.f1735q, this.f1732df, this.dm0, this.f1731db, this.f1730c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, this.hashAlg) : new NTRUEncryptionParameters(this.f1729N, this.f1735q, this.df1, this.df2, this.df3, this.dm0, this.f1731db, this.f1730c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, this.hashAlg);
    }

    public int getMaxMessageLength() {
        return this.maxMsgLenBytes;
    }

    public int hashCode() {
        int i = this.f1729N;
        int i2 = this.bufferLenBits;
        int i3 = this.bufferLenTrits;
        int i4 = this.f1730c;
        int i5 = this.f1731db;
        int i6 = this.f1732df;
        int i7 = this.df1;
        int i8 = this.df2;
        int i9 = this.df3;
        int i10 = this.f1733dg;
        int i11 = this.dm0;
        int i12 = this.f1734dr;
        int i13 = this.dr1;
        int i14 = this.dr2;
        int i15 = this.dr3;
        int i16 = 1237;
        int i17 = this.fastFp ? 1231 : 1237;
        int hashCode = this.hashAlg == null ? 0 : this.hashAlg.getAlgorithmName().hashCode();
        int i18 = this.hashSeed ? 1231 : 1237;
        int i19 = this.llen;
        int i20 = this.maxMsgLenBytes;
        int i21 = this.minCallsMask;
        int i22 = this.minCallsR;
        int hashCode2 = Arrays.hashCode(this.oid);
        int i23 = this.pkLen;
        int i24 = this.polyType;
        int i25 = this.f1735q;
        if (this.sparse) {
            i16 = 1231;
        }
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((i + 31) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i17) * 31) + hashCode) * 31) + i18) * 31) + i19) * 31) + i20) * 31) + i21) * 31) + i22) * 31) + hashCode2) * 31) + i23) * 31) + i24) * 31) + i25) * 31) + i16;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EncryptionParameters(N=" + this.f1729N + " q=" + this.f1735q);
        if (this.polyType == 0) {
            sb.append(" polyType=SIMPLE df=" + this.f1732df);
        } else {
            sb.append(" polyType=PRODUCT df1=" + this.df1 + " df2=" + this.df2 + " df3=" + this.df3);
        }
        sb.append(" dm0=" + this.dm0 + " db=" + this.f1731db + " c=" + this.f1730c + " minCallsR=" + this.minCallsR + " minCallsMask=" + this.minCallsMask + " hashSeed=" + this.hashSeed + " hashAlg=" + this.hashAlg + " oid=" + Arrays.toString(this.oid) + " sparse=" + this.sparse + ")");
        return sb.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f1729N);
        dataOutputStream.writeInt(this.f1735q);
        dataOutputStream.writeInt(this.f1732df);
        dataOutputStream.writeInt(this.df1);
        dataOutputStream.writeInt(this.df2);
        dataOutputStream.writeInt(this.df3);
        dataOutputStream.writeInt(this.f1731db);
        dataOutputStream.writeInt(this.dm0);
        dataOutputStream.writeInt(this.f1730c);
        dataOutputStream.writeInt(this.minCallsR);
        dataOutputStream.writeInt(this.minCallsMask);
        dataOutputStream.writeBoolean(this.hashSeed);
        dataOutputStream.write(this.oid);
        dataOutputStream.writeBoolean(this.sparse);
        dataOutputStream.writeBoolean(this.fastFp);
        dataOutputStream.write(this.polyType);
        dataOutputStream.writeUTF(this.hashAlg.getAlgorithmName());
    }
}
