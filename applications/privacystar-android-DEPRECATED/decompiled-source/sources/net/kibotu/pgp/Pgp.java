package net.kibotu.pgp;

import android.support.p001v4.app.NotificationCompat;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Date;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.spongycastle.bcpg.ArmoredInputStream;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.crypto.generators.RSAKeyPairGenerator;
import org.spongycastle.crypto.params.RSAKeyGenerationParameters;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPCompressedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataList;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPKeyRingGenerator;
import org.spongycastle.openpgp.PGPLiteralData;
import org.spongycastle.openpgp.PGPLiteralDataGenerator;
import org.spongycastle.openpgp.PGPObjectFactory;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyEncryptedData;
import org.spongycastle.openpgp.PGPPublicKeyRing;
import org.spongycastle.openpgp.PGPSecretKeyRing;
import org.spongycastle.openpgp.PGPSignatureSubpacketGenerator;
import org.spongycastle.openpgp.PGPSignatureSubpacketVector;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.operator.PBESecretKeyEncryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcePGPDataEncryptorBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.p035bc.BcKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.p035bc.BcPBESecretKeyDecryptorBuilder;
import org.spongycastle.openpgp.operator.p035bc.BcPBESecretKeyEncryptorBuilder;
import org.spongycastle.openpgp.operator.p035bc.BcPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.p035bc.BcPGPDigestCalculatorProvider;
import org.spongycastle.openpgp.operator.p035bc.BcPGPKeyPair;
import org.spongycastle.openpgp.operator.p035bc.BcPublicKeyDataDecryptorFactory;
@Metadata(m256bv = {1, 0, 2}, m255d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0019\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u0010H\u0007J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0007J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020%H\u0007J \u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\f2\u0006\u0010)\u001a\u00020*2\u0006\u0010$\u001a\u00020%H\u0003J\u0012\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020\bH\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J\u0010\u00100\u001a\u00020/2\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\b8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u00061"}, m254d2 = {"Lnet/kibotu/pgp/Pgp;", "", "()V", "KEY_RING_ID", "", "bcKeyFingerprintCalculator", "Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;", "pgpPublicKeyRing", "Lorg/spongycastle/openpgp/PGPPublicKeyRing;", "getPgpPublicKeyRing", "()Lorg/spongycastle/openpgp/PGPPublicKeyRing;", "pgpSecretKeyRing", "Lorg/spongycastle/openpgp/PGPSecretKeyRing;", "getPgpSecretKeyRing", "()Lorg/spongycastle/openpgp/PGPSecretKeyRing;", "privateKey", "", "publicKey", "strength", "", "getStrength", "()I", "setStrength", "(I)V", "decrypt", "encrypted", "password", "encryptedText", "encrypt", NotificationCompat.CATEGORY_MESSAGE, "msgText", "genPGPPrivKey", "krgen", "Lorg/spongycastle/openpgp/PGPKeyRingGenerator;", "genPGPPublicKey", "generateKeyRingGenerator", "pass", "", "getPrivateKey", "Lorg/spongycastle/openpgp/PGPPrivateKey;", "keyRing", "keyID", "", "getPublicKey", "Lorg/spongycastle/openpgp/PGPPublicKey;", "publicKeyRing", "setPrivateKey", "", "setPublicKey", "android-pgp_release"}, m253k = 1, m252mv = {1, 1, 9})
/* loaded from: classes2-dex2jar.jar:net/kibotu/pgp/Pgp.class */
public final class Pgp {
    private static final String KEY_RING_ID = "jan.rabe@kibotu.net";
    private static byte[] privateKey;
    private static byte[] publicKey;
    private static int strength = 2048;
    public static final Pgp INSTANCE = new Pgp();
    private static final BcKeyFingerprintCalculator bcKeyFingerprintCalculator = new BcKeyFingerprintCalculator();

    static {
        Security.addProvider(new BouncyCastleProvider());
    }

    private Pgp() {
    }

    @JvmStatic
    @Nullable
    public static final String decrypt(@NotNull String encryptedText, @NotNull String password) throws Exception {
        Intrinsics.checkParameterIsNotNull(encryptedText, "encryptedText");
        Intrinsics.checkParameterIsNotNull(password, "password");
        byte[] bytes = encryptedText.getBytes(Charsets.UTF_8);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] decrypt = decrypt(bytes, password);
        if (decrypt != null) {
            return new String(decrypt, Charsets.UTF_8);
        }
        return null;
    }

    @JvmStatic
    @Nullable
    public static final byte[] decrypt(@NotNull byte[] encrypted, @NotNull String password) throws Exception {
        PGPEncryptedDataList pGPEncryptedDataList;
        Intrinsics.checkParameterIsNotNull(encrypted, "encrypted");
        Intrinsics.checkParameterIsNotNull(password, "password");
        InputStream decoderStream = PGPUtil.getDecoderStream(new ByteArrayInputStream(encrypted));
        Intrinsics.checkExpressionValueIsNotNull(decoderStream, "PGPUtil.getDecoderStream(inputStream)");
        PGPObjectFactory pGPObjectFactory = new PGPObjectFactory(decoderStream, bcKeyFingerprintCalculator);
        Object nextObject = pGPObjectFactory.nextObject();
        if (nextObject instanceof PGPEncryptedDataList) {
            pGPEncryptedDataList = (PGPEncryptedDataList) nextObject;
        } else {
            Object nextObject2 = pGPObjectFactory.nextObject();
            if (nextObject2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPEncryptedDataList");
            }
            pGPEncryptedDataList = (PGPEncryptedDataList) nextObject2;
        }
        PGPPrivateKey pGPPrivateKey = null;
        PGPPublicKeyEncryptedData pGPPublicKeyEncryptedData = null;
        while (pGPPrivateKey == null && pGPEncryptedDataList.getEncryptedDataObjects().hasNext()) {
            Object next = pGPEncryptedDataList.getEncryptedDataObjects().next();
            if (next == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPPublicKeyEncryptedData");
            }
            pGPPublicKeyEncryptedData = (PGPPublicKeyEncryptedData) next;
            Pgp pgp = INSTANCE;
            PGPSecretKeyRing pgpSecretKeyRing = INSTANCE.getPgpSecretKeyRing();
            long keyID = pGPPublicKeyEncryptedData.getKeyID();
            char[] charArray = password.toCharArray();
            Intrinsics.checkExpressionValueIsNotNull(charArray, "(this as java.lang.String).toCharArray()");
            pGPPrivateKey = pgp.getPrivateKey(pgpSecretKeyRing, keyID, charArray);
        }
        if (pGPPublicKeyEncryptedData == null) {
            return null;
        }
        Object nextObject3 = new PGPObjectFactory(pGPPublicKeyEncryptedData.getDataStream(new BcPublicKeyDataDecryptorFactory(pGPPrivateKey)), bcKeyFingerprintCalculator).nextObject();
        if (nextObject3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPCompressedData");
        }
        Object nextObject4 = new PGPObjectFactory(((PGPCompressedData) nextObject3).getDataStream(), bcKeyFingerprintCalculator).nextObject();
        if (nextObject4 == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPLiteralData");
        }
        InputStream inputStream = ((PGPLiteralData) nextObject4).getInputStream();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Throwable th = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            byte[] bArr = new byte[65535];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    CloseableKt.closeFinally(byteArrayOutputStream, th);
                    return byteArray;
                }
                byteArrayOutputStream2.write(bArr, 0, read);
            }
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @JvmStatic
    @Nullable
    public static final String encrypt(@NotNull String msgText) throws IOException, PGPException {
        Intrinsics.checkParameterIsNotNull(msgText, "msgText");
        byte[] bytes = msgText.getBytes(Charsets.UTF_8);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] encrypt = encrypt(bytes);
        if (encrypt != null) {
            return new String(encrypt, Charsets.UTF_8);
        }
        return null;
    }

    @JvmStatic
    @Nullable
    public static final byte[] encrypt(@NotNull byte[] msg) throws IOException, PGPException {
        Intrinsics.checkParameterIsNotNull(msg, "msg");
        PGPPublicKey publicKey2 = INSTANCE.getPublicKey(INSTANCE.getPgpPublicKeyRing());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ArmoredOutputStream armoredOutputStream = new ArmoredOutputStream(byteArrayOutputStream);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        PGPCompressedDataGenerator pGPCompressedDataGenerator = new PGPCompressedDataGenerator(1);
        OutputStream open = pGPCompressedDataGenerator.open(byteArrayOutputStream2);
        PGPLiteralDataGenerator pGPLiteralDataGenerator = new PGPLiteralDataGenerator();
        pGPLiteralDataGenerator.open(open, 'b', "_CONSOLE", msg.length, new Date()).write(msg);
        pGPLiteralDataGenerator.close();
        pGPCompressedDataGenerator.close();
        PGPEncryptedDataGenerator pGPEncryptedDataGenerator = new PGPEncryptedDataGenerator(new JcePGPDataEncryptorBuilder(9).setWithIntegrityPacket(true).setSecureRandom(new SecureRandom()).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        if (publicKey2 != null) {
            pGPEncryptedDataGenerator.addMethod(new JcePublicKeyKeyEncryptionMethodGenerator(publicKey2).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            OutputStream open2 = pGPEncryptedDataGenerator.open(armoredOutputStream, byteArray.length);
            open2.write(byteArray);
            open2.close();
        }
        armoredOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    @JvmStatic
    @NotNull
    public static final String genPGPPrivKey(@NotNull PGPKeyRingGenerator krgen) throws IOException {
        Intrinsics.checkParameterIsNotNull(krgen, "krgen");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PGPSecretKeyRing generateSecretKeyRing = krgen.generateSecretKeyRing();
        ArmoredOutputStream armoredOutputStream = new ArmoredOutputStream(byteArrayOutputStream);
        generateSecretKeyRing.encode(armoredOutputStream);
        armoredOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkExpressionValueIsNotNull(byteArray, "baosPriv.toByteArray()");
        Charset defaultCharset = Charset.defaultCharset();
        Intrinsics.checkExpressionValueIsNotNull(defaultCharset, "Charset.defaultCharset()");
        return new String(byteArray, defaultCharset);
    }

    @JvmStatic
    @NotNull
    public static final String genPGPPublicKey(@NotNull PGPKeyRingGenerator krgen) throws IOException {
        Intrinsics.checkParameterIsNotNull(krgen, "krgen");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PGPPublicKeyRing generatePublicKeyRing = krgen.generatePublicKeyRing();
        ArmoredOutputStream armoredOutputStream = new ArmoredOutputStream(byteArrayOutputStream);
        generatePublicKeyRing.encode(armoredOutputStream);
        armoredOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkExpressionValueIsNotNull(byteArray, "baosPkr.toByteArray()");
        Charset defaultCharset = Charset.defaultCharset();
        Intrinsics.checkExpressionValueIsNotNull(defaultCharset, "Charset.defaultCharset()");
        return new String(byteArray, defaultCharset);
    }

    @JvmStatic
    @NotNull
    public static final PGPKeyRingGenerator generateKeyRingGenerator(@NotNull char[] pass) throws PGPException {
        Intrinsics.checkParameterIsNotNull(pass, "pass");
        RSAKeyPairGenerator rSAKeyPairGenerator = new RSAKeyPairGenerator();
        rSAKeyPairGenerator.init(new RSAKeyGenerationParameters(BigInteger.valueOf(65537L), new SecureRandom(), strength, 12));
        BcPGPKeyPair bcPGPKeyPair = new BcPGPKeyPair(3, rSAKeyPairGenerator.generateKeyPair(), new Date());
        BcPGPKeyPair bcPGPKeyPair2 = new BcPGPKeyPair(2, rSAKeyPairGenerator.generateKeyPair(), new Date());
        PGPSignatureSubpacketGenerator pGPSignatureSubpacketGenerator = new PGPSignatureSubpacketGenerator();
        pGPSignatureSubpacketGenerator.setKeyFlags(false, 131);
        pGPSignatureSubpacketGenerator.setPreferredSymmetricAlgorithms(false, new int[]{9, 8, 7});
        pGPSignatureSubpacketGenerator.setPreferredHashAlgorithms(false, new int[]{8, 2, 9, 10, 11});
        pGPSignatureSubpacketGenerator.setFeature(false, (byte) 1);
        PGPSignatureSubpacketGenerator pGPSignatureSubpacketGenerator2 = new PGPSignatureSubpacketGenerator();
        pGPSignatureSubpacketGenerator2.setKeyFlags(false, 12);
        PGPDigestCalculator pGPDigestCalculator = new BcPGPDigestCalculatorProvider().get(2);
        PBESecretKeyEncryptor build = new BcPBESecretKeyEncryptorBuilder(9, new BcPGPDigestCalculatorProvider().get(8), 192).build(pass);
        BcPGPKeyPair bcPGPKeyPair3 = bcPGPKeyPair;
        PGPSignatureSubpacketVector generate = pGPSignatureSubpacketGenerator.generate();
        PGPPublicKey publicKey2 = bcPGPKeyPair.getPublicKey();
        Intrinsics.checkExpressionValueIsNotNull(publicKey2, "rsakp_sign.publicKey");
        PGPKeyRingGenerator pGPKeyRingGenerator = new PGPKeyRingGenerator(19, bcPGPKeyPair3, KEY_RING_ID, pGPDigestCalculator, generate, null, new BcPGPContentSignerBuilder(publicKey2.getAlgorithm(), 2), build);
        pGPKeyRingGenerator.addSubKey(bcPGPKeyPair2, pGPSignatureSubpacketGenerator2.generate(), null);
        return pGPKeyRingGenerator;
    }

    private final PGPPublicKeyRing getPgpPublicKeyRing() throws IOException {
        Object nextObject = new PGPObjectFactory(new ArmoredInputStream(new ByteArrayInputStream(publicKey)), bcKeyFingerprintCalculator).nextObject();
        if (nextObject != null) {
            return (PGPPublicKeyRing) nextObject;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPPublicKeyRing");
    }

    private final PGPSecretKeyRing getPgpSecretKeyRing() throws IOException {
        Object nextObject = new PGPObjectFactory(new ArmoredInputStream(new ByteArrayInputStream(privateKey)), bcKeyFingerprintCalculator).nextObject();
        if (nextObject != null) {
            return (PGPSecretKeyRing) nextObject;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPSecretKeyRing");
    }

    private final PGPPrivateKey getPrivateKey(PGPSecretKeyRing pGPSecretKeyRing, long j, char[] cArr) throws PGPException {
        PGPPrivateKey extractPrivateKey = pGPSecretKeyRing.getSecretKey(j).extractPrivateKey(new BcPBESecretKeyDecryptorBuilder(new BcPGPDigestCalculatorProvider()).build(cArr));
        Intrinsics.checkExpressionValueIsNotNull(extractPrivateKey, "secretKey.extractPrivateKey(decryptor)");
        return extractPrivateKey;
    }

    private final PGPPublicKey getPublicKey(PGPPublicKeyRing pGPPublicKeyRing) {
        Iterator<PGPPublicKey> publicKeys = pGPPublicKeyRing.getPublicKeys();
        while (publicKeys.hasNext()) {
            PGPPublicKey next = publicKeys.next();
            if (next == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.spongycastle.openpgp.PGPPublicKey");
            }
            PGPPublicKey pGPPublicKey = next;
            if (pGPPublicKey.isEncryptionKey()) {
                return pGPPublicKey;
            }
        }
        return null;
    }

    @JvmStatic
    public static final void setPrivateKey(@NotNull String privateKey2) {
        Intrinsics.checkParameterIsNotNull(privateKey2, "privateKey");
        byte[] bytes = privateKey2.getBytes(Charsets.UTF_8);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        privateKey = bytes;
    }

    @JvmStatic
    public static final void setPublicKey(@NotNull String publicKey2) {
        Intrinsics.checkParameterIsNotNull(publicKey2, "publicKey");
        byte[] bytes = publicKey2.getBytes(Charsets.UTF_8);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        publicKey = bytes;
    }

    public final int getStrength() {
        return strength;
    }

    public final void setStrength(int i) {
        strength = i;
    }
}
