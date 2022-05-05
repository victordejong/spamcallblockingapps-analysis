package org.spongycastle.pqc.crypto.ntru;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters.class */
public class NTRUEncryptionParameters implements Cloneable {

    /* renamed from: N */
    public int f1736N;
    public int bufferLenBits;
    int bufferLenTrits;

    /* renamed from: c */
    public int f1737c;

    /* renamed from: db */
    public int f1738db;

    /* renamed from: df */
    public int f1739df;
    public int df1;
    public int df2;
    public int df3;

    /* renamed from: dg */
    public int f1740dg;
    public int dm0;

    /* renamed from: dr */
    public int f1741dr;
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
    public int f1742q;
    public boolean sparse;

    public NTRUEncryptionParameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z, byte[] bArr, boolean z2, boolean z3, Digest digest) {
        this.f1736N = i;
        this.f1742q = i2;
        this.df1 = i3;
        this.df2 = i4;
        this.df3 = i5;
        this.f1738db = i7;
        this.dm0 = i6;
        this.f1737c = i8;
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

    public NTRUEncryptionParameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr, boolean z2, boolean z3, Digest digest) {
        this.f1736N = i;
        this.f1742q = i2;
        this.f1739df = i3;
        this.f1738db = i5;
        this.dm0 = i4;
        this.f1737c = i6;
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

    public NTRUEncryptionParameters(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f1736N = dataInputStream.readInt();
        this.f1742q = dataInputStream.readInt();
        this.f1739df = dataInputStream.readInt();
        this.df1 = dataInputStream.readInt();
        this.df2 = dataInputStream.readInt();
        this.df3 = dataInputStream.readInt();
        this.f1738db = dataInputStream.readInt();
        this.dm0 = dataInputStream.readInt();
        this.f1737c = dataInputStream.readInt();
        this.minCallsR = dataInputStream.readInt();
        this.minCallsMask = dataInputStream.readInt();
        this.hashSeed = dataInputStream.readBoolean();
        this.oid = new byte[3];
        dataInputStream.read(this.oid);
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
        this.f1741dr = this.f1739df;
        this.dr1 = this.df1;
        this.dr2 = this.df2;
        this.dr3 = this.df3;
        this.f1740dg = this.f1736N / 3;
        this.llen = 1;
        this.maxMsgLenBytes = (((((this.f1736N * 3) / 2) / 8) - this.llen) - (this.f1738db / 8)) - 1;
        this.bufferLenBits = (((((this.f1736N * 3) / 2) + 7) / 8) * 8) + 1;
        this.bufferLenTrits = this.f1736N - 1;
        this.pkLen = this.f1738db;
    }

    public NTRUEncryptionParameters clone() {
        return this.polyType == 0 ? new NTRUEncryptionParameters(this.f1736N, this.f1742q, this.f1739df, this.dm0, this.f1738db, this.f1737c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, this.hashAlg) : new NTRUEncryptionParameters(this.f1736N, this.f1742q, this.df1, this.df2, this.df3, this.dm0, this.f1738db, this.f1737c, this.minCallsR, this.minCallsMask, this.hashSeed, this.oid, this.sparse, this.fastFp, this.hashAlg);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUEncryptionParameters nTRUEncryptionParameters = (NTRUEncryptionParameters) obj;
        if (this.f1736N != nTRUEncryptionParameters.f1736N || this.bufferLenBits != nTRUEncryptionParameters.bufferLenBits || this.bufferLenTrits != nTRUEncryptionParameters.bufferLenTrits || this.f1737c != nTRUEncryptionParameters.f1737c || this.f1738db != nTRUEncryptionParameters.f1738db || this.f1739df != nTRUEncryptionParameters.f1739df || this.df1 != nTRUEncryptionParameters.df1 || this.df2 != nTRUEncryptionParameters.df2 || this.df3 != nTRUEncryptionParameters.df3 || this.f1740dg != nTRUEncryptionParameters.f1740dg || this.dm0 != nTRUEncryptionParameters.dm0 || this.f1741dr != nTRUEncryptionParameters.f1741dr || this.dr1 != nTRUEncryptionParameters.dr1 || this.dr2 != nTRUEncryptionParameters.dr2 || this.dr3 != nTRUEncryptionParameters.dr3 || this.fastFp != nTRUEncryptionParameters.fastFp) {
            return false;
        }
        if (this.hashAlg == null) {
            if (nTRUEncryptionParameters.hashAlg != null) {
                return false;
            }
        } else if (!this.hashAlg.getAlgorithmName().equals(nTRUEncryptionParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return this.hashSeed == nTRUEncryptionParameters.hashSeed && this.llen == nTRUEncryptionParameters.llen && this.maxMsgLenBytes == nTRUEncryptionParameters.maxMsgLenBytes && this.minCallsMask == nTRUEncryptionParameters.minCallsMask && this.minCallsR == nTRUEncryptionParameters.minCallsR && Arrays.equals(this.oid, nTRUEncryptionParameters.oid) && this.pkLen == nTRUEncryptionParameters.pkLen && this.polyType == nTRUEncryptionParameters.polyType && this.f1742q == nTRUEncryptionParameters.f1742q && this.sparse == nTRUEncryptionParameters.sparse;
    }

    public int getMaxMessageLength() {
        return this.maxMsgLenBytes;
    }

    public int hashCode() {
        int i = this.f1736N;
        int i2 = this.bufferLenBits;
        int i3 = this.bufferLenTrits;
        int i4 = this.f1737c;
        int i5 = this.f1738db;
        int i6 = this.f1739df;
        int i7 = this.df1;
        int i8 = this.df2;
        int i9 = this.df3;
        int i10 = this.f1740dg;
        int i11 = this.dm0;
        int i12 = this.f1741dr;
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
        int i25 = this.f1742q;
        if (this.sparse) {
            i16 = 1231;
        }
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((i + 31) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i17) * 31) + hashCode) * 31) + i18) * 31) + i19) * 31) + i20) * 31) + i21) * 31) + i22) * 31) + hashCode2) * 31) + i23) * 31) + i24) * 31) + i25) * 31) + i16;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EncryptionParameters(N=" + this.f1736N + " q=" + this.f1742q);
        if (this.polyType == 0) {
            sb.append(" polyType=SIMPLE df=" + this.f1739df);
        } else {
            sb.append(" polyType=PRODUCT df1=" + this.df1 + " df2=" + this.df2 + " df3=" + this.df3);
        }
        sb.append(" dm0=" + this.dm0 + " db=" + this.f1738db + " c=" + this.f1737c + " minCallsR=" + this.minCallsR + " minCallsMask=" + this.minCallsMask + " hashSeed=" + this.hashSeed + " hashAlg=" + this.hashAlg + " oid=" + Arrays.toString(this.oid) + " sparse=" + this.sparse + ")");
        return sb.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f1736N);
        dataOutputStream.writeInt(this.f1742q);
        dataOutputStream.writeInt(this.f1739df);
        dataOutputStream.writeInt(this.df1);
        dataOutputStream.writeInt(this.df2);
        dataOutputStream.writeInt(this.df3);
        dataOutputStream.writeInt(this.f1738db);
        dataOutputStream.writeInt(this.dm0);
        dataOutputStream.writeInt(this.f1737c);
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
