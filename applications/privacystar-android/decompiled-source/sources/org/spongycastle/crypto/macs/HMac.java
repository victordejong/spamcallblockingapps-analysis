package org.spongycastle.crypto.macs;

import java.util.Hashtable;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Memoable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/HMac.class */
public class HMac implements Mac {
    private static final byte IPAD = 54;
    private static final byte OPAD = 92;
    private static Hashtable blockLengths = new Hashtable();
    private int blockLength;
    private Digest digest;
    private int digestSize;
    private byte[] inputPad;
    private Memoable ipadState;
    private Memoable opadState;
    private byte[] outputBuf;

    static {
        blockLengths.put("GOST3411", Integers.valueOf(32));
        blockLengths.put("MD2", Integers.valueOf(16));
        blockLengths.put("MD4", Integers.valueOf(64));
        blockLengths.put("MD5", Integers.valueOf(64));
        blockLengths.put("RIPEMD128", Integers.valueOf(64));
        blockLengths.put("RIPEMD160", Integers.valueOf(64));
        blockLengths.put("SHA-1", Integers.valueOf(64));
        blockLengths.put(McElieceCCA2KeyGenParameterSpec.SHA224, Integers.valueOf(64));
        blockLengths.put("SHA-256", Integers.valueOf(64));
        blockLengths.put(McElieceCCA2KeyGenParameterSpec.SHA384, Integers.valueOf(128));
        blockLengths.put(McElieceCCA2KeyGenParameterSpec.SHA512, Integers.valueOf(128));
        blockLengths.put("Tiger", Integers.valueOf(64));
        blockLengths.put("Whirlpool", Integers.valueOf(64));
    }

    public HMac(Digest digest) {
        this(digest, getByteLength(digest));
    }

    private HMac(Digest digest, int i) {
        this.digest = digest;
        this.digestSize = digest.getDigestSize();
        this.blockLength = i;
        this.inputPad = new byte[this.blockLength];
        this.outputBuf = new byte[this.blockLength + this.digestSize];
    }

    private static int getByteLength(Digest digest) {
        if (digest instanceof ExtendedDigest) {
            return ((ExtendedDigest) digest).getByteLength();
        }
        Integer num = (Integer) blockLengths.get(digest.getAlgorithmName());
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("unknown digest passed: " + digest.getAlgorithmName());
    }

    private static void xorPad(byte[] bArr, int i, byte b) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ b);
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        this.digest.doFinal(this.outputBuf, this.blockLength);
        if (this.opadState != null) {
            ((Memoable) this.digest).reset(this.opadState);
            this.digest.update(this.outputBuf, this.blockLength, this.digest.getDigestSize());
        } else {
            this.digest.update(this.outputBuf, 0, this.outputBuf.length);
        }
        int doFinal = this.digest.doFinal(bArr, i);
        for (int i2 = this.blockLength; i2 < this.outputBuf.length; i2++) {
            this.outputBuf[i2] = (byte) 0;
        }
        if (this.ipadState != null) {
            ((Memoable) this.digest).reset(this.ipadState);
        } else {
            this.digest.update(this.inputPad, 0, this.inputPad.length);
        }
        return doFinal;
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.digest.getAlgorithmName() + "/HMAC";
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return this.digestSize;
    }

    public Digest getUnderlyingDigest() {
        return this.digest;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.digest.reset();
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        int length = key.length;
        if (length > this.blockLength) {
            this.digest.update(key, 0, length);
            this.digest.doFinal(this.inputPad, 0);
            length = this.digestSize;
        } else {
            System.arraycopy(key, 0, this.inputPad, 0, length);
        }
        while (length < this.inputPad.length) {
            this.inputPad[length] = (byte) 0;
            length++;
        }
        System.arraycopy(this.inputPad, 0, this.outputBuf, 0, this.blockLength);
        xorPad(this.inputPad, this.blockLength, (byte) 54);
        xorPad(this.outputBuf, this.blockLength, (byte) 92);
        if (this.digest instanceof Memoable) {
            this.opadState = ((Memoable) this.digest).copy();
            ((Digest) this.opadState).update(this.outputBuf, 0, this.blockLength);
        }
        this.digest.update(this.inputPad, 0, this.inputPad.length);
        if (this.digest instanceof Memoable) {
            this.ipadState = ((Memoable) this.digest).copy();
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        this.digest.reset();
        this.digest.update(this.inputPad, 0, this.inputPad.length);
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) {
        this.digest.update(b);
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
    }
}
