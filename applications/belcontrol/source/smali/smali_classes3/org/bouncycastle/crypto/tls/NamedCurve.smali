.class public Lorg/bouncycastle/crypto/tls/NamedCurve;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final arbitrary_explicit_char2_curves:I = 0xff02

.field public static final arbitrary_explicit_prime_curves:I = 0xff01

.field private static final curveNames:[Ljava/lang/String;

.field public static final secp160k1:I = 0xf

.field public static final secp160r1:I = 0x10

.field public static final secp160r2:I = 0x11

.field public static final secp192k1:I = 0x12

.field public static final secp192r1:I = 0x13

.field public static final secp224k1:I = 0x14

.field public static final secp224r1:I = 0x15

.field public static final secp256k1:I = 0x16

.field public static final secp256r1:I = 0x17

.field public static final secp384r1:I = 0x18

.field public static final secp521r1:I = 0x19

.field public static final sect163k1:I = 0x1

.field public static final sect163r1:I = 0x2

.field public static final sect163r2:I = 0x3

.field public static final sect193r1:I = 0x4

.field public static final sect193r2:I = 0x5

.field public static final sect233k1:I = 0x6

.field public static final sect233r1:I = 0x7

.field public static final sect239k1:I = 0x8

.field public static final sect283k1:I = 0x9

.field public static final sect283r1:I = 0xa

.field public static final sect409k1:I = 0xb

.field public static final sect409r1:I = 0xc

.field public static final sect571k1:I = 0xd

.field public static final sect571r1:I = 0xe


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const-string v0, "sect163k1"

    const-string v1, "sect163r1"

    const-string v2, "sect163r2"

    const-string v3, "sect193r1"

    const-string v4, "sect193r2"

    const-string v5, "sect233k1"

    const-string v6, "sect233r1"

    const-string v7, "sect239k1"

    const-string v8, "sect283k1"

    const-string v9, "sect283r1"

    const-string v10, "sect409k1"

    const-string v11, "sect409r1"

    const-string v12, "sect571k1"

    const-string v13, "sect571r1"

    const-string v14, "secp160k1"

    const-string v15, "secp160r1"

    const-string v16, "secp160r2"

    const-string v17, "secp192k1"

    const-string v18, "secp192r1"

    const-string v19, "secp224k1"

    const-string v20, "secp224r1"

    const-string v21, "secp256k1"

    const-string v22, "secp256r1"

    const-string v23, "secp384r1"

    const-string v24, "secp521r1"

    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/NamedCurve;->curveNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getECParameters(I)Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 7

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    if-ltz p0, :cond_2

    sget-object v1, Lorg/bouncycastle/crypto/tls/NamedCurve;->curveNames:[Ljava/lang/String;

    array-length v2, v1

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v1, p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :cond_2
    :goto_0
    return-object v0
.end method
