package org.spongycastle.openpgp.operator.p035bc;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.OpenPGPCFBBlockCipher;
import org.spongycastle.crypto.p026ec.CustomNamedCurves;
import org.spongycastle.crypto.p027io.CipherInputStream;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.util.BigIntegers;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcUtil */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcUtil.class */
class BcUtil {
    BcUtil() {
    }

    public static PGPDataDecryptor createDataDecryptor(boolean z, BlockCipher blockCipher, byte[] bArr) {
        final BufferedBlockCipher createStreamCipher = createStreamCipher(false, blockCipher, z, bArr);
        return new PGPDataDecryptor() { // from class: org.spongycastle.openpgp.operator.bc.BcUtil.1
            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
            public int getBlockSize() {
                return BufferedBlockCipher.this.getBlockSize();
            }

            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
            public InputStream getInputStream(InputStream inputStream) {
                return new CipherInputStream(inputStream, BufferedBlockCipher.this);
            }

            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
            public PGPDigestCalculator getIntegrityCalculator() {
                return new SHA1PGPDigestCalculator();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BufferedBlockCipher createStreamCipher(boolean z, BlockCipher blockCipher, boolean z2, byte[] bArr) {
        BufferedBlockCipher bufferedBlockCipher = z2 ? new BufferedBlockCipher(new CFBBlockCipher(blockCipher, blockCipher.getBlockSize() * 8)) : new BufferedBlockCipher(new OpenPGPCFBBlockCipher(blockCipher));
        KeyParameter keyParameter = new KeyParameter(bArr);
        if (z2) {
            bufferedBlockCipher.init(z, new ParametersWithIV(keyParameter, new byte[blockCipher.getBlockSize()]));
        } else {
            bufferedBlockCipher.init(z, keyParameter);
        }
        return bufferedBlockCipher;
    }

    public static BufferedBlockCipher createSymmetricKeyWrapper(boolean z, BlockCipher blockCipher, byte[] bArr, byte[] bArr2) {
        BufferedBlockCipher bufferedBlockCipher = new BufferedBlockCipher(new CFBBlockCipher(blockCipher, blockCipher.getBlockSize() * 8));
        bufferedBlockCipher.init(z, new ParametersWithIV(new KeyParameter(bArr), bArr2));
        return bufferedBlockCipher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ECPoint decodePoint(BigInteger bigInteger, ECCurve eCCurve) throws IOException {
        return eCCurve.decodePoint(BigIntegers.asUnsignedByteArray(bigInteger));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static X9ECParameters getX9Parameters(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        X9ECParameters byOID = CustomNamedCurves.getByOID(aSN1ObjectIdentifier);
        X9ECParameters x9ECParameters = byOID;
        if (byOID == null) {
            x9ECParameters = ECNamedCurveTable.getByOID(aSN1ObjectIdentifier);
        }
        return x9ECParameters;
    }
}
