.class public Lorg/bouncycastle/openssl/PKCS8Generator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field public static final AES_128_CBC:Ljava/lang/String;

.field public static final AES_192_CBC:Ljava/lang/String;

.field public static final AES_256_CBC:Ljava/lang/String;

.field public static final DES3_CBC:Ljava/lang/String;

.field public static final PBE_SHA1_2DES:Ljava/lang/String;

.field public static final PBE_SHA1_3DES:Ljava/lang/String;

.field public static final PBE_SHA1_RC2_128:Ljava/lang/String;

.field public static final PBE_SHA1_RC2_40:Ljava/lang/String;

.field public static final PBE_SHA1_RC4_128:Ljava/lang/String;

.field public static final PBE_SHA1_RC4_40:Ljava/lang/String;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cipher:Ljavax/crypto/Cipher;

.field private iterationCount:I

.field private key:Ljava/security/PrivateKey;

.field private paramGen:Ljava/security/AlgorithmParameterGenerator;

.field private password:[C

.field private random:Ljava/security/SecureRandom;

.field private secKeyFact:Ljavax/crypto/SecretKeyFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_128_CBC:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_192_CBC:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_256_CBC:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->DES3_CBC:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_128:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_40:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_3DES:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_2DES:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_128:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbewithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_40:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Ljava/security/PrivateKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/PKCS8Generator;->init(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/NoSuchProviderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find provider: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openssl/PKCS8Generator;->init(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V

    return-void
.end method

.method private init(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Ljava/security/PrivateKey;

    iput-object p2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    const/16 p1, 0x800

    iput p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->iterationCount:I

    :try_start_0
    invoke-static {p2, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->paramGen:Ljava/security/AlgorithmParameterGenerator;

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->secKeyFact:Ljavax/crypto/SecretKeyFactory;

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p3, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " found, but padding not available: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemObject;

    const-string v2, "PRIVATE KEY"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/bouncycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    const-string v3, "ENCRYPTED PRIVATE KEY"

    const/4 v4, 0x1

    const/16 v5, 0x14

    if-eqz v1, :cond_2

    new-array v1, v5, [B

    iget-object v2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->password:[C

    iget v6, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-static {v2, v5, v1, v6}, Lorg/bouncycastle/openssl/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v2

    iget-object v5, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->paramGen:Ljava/security/AlgorithmParameterGenerator;

    invoke-virtual {v5}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v5

    :try_start_0
    iget-object v6, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    new-instance v4, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v6, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget v7, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-direct {v6, v1, v7}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v0, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/openssl/PEMUtilities;->isPKCS12(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v5, [B

    iget-object v5, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    if-nez v5, :cond_3

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    iput-object v5, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_1
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->password:[C

    invoke-direct {v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    iget v7, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object v7, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    iget-object v8, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->secKeyFact:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v8, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v7, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    iget v5, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v5, v2, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v0, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIterationCount(I)Lorg/bouncycastle/openssl/PKCS8Generator;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->iterationCount:I

    return-object p0
.end method

.method public setPassword([C)Lorg/bouncycastle/openssl/PKCS8Generator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->password:[C

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openssl/PKCS8Generator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
