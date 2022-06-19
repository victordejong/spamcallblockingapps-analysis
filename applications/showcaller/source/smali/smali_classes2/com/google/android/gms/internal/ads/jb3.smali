.class public final Lcom/google/android/gms/internal/ads/jb3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jb3;->a:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B[BII)Lcom/google/android/gms/internal/ads/ib3;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/jb3;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v4}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kb3;->c(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    .line 3
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPrivateKey;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/jb3;->a:Ljava/security/interfaces/ECPublicKey;

    .line 4
    :try_start_0
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    .line 5
    invoke-interface {v4}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v8

    .line 6
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v9

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 7
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v9

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 8
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 9
    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v7

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v7, v8, :cond_17

    .line 10
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 11
    invoke-interface {v4}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/kb3;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 12
    invoke-interface {v4}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    .line 13
    new-instance v8, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v8, v6, v7}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 14
    sget-object v6, Lcom/google/android/gms/internal/ads/nb3;->j:Lcom/google/android/gms/internal/ads/nb3;

    const-string v7, "EC"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/nb3;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyFactory;

    .line 15
    invoke-virtual {v6, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/nb3;->h:Lcom/google/android/gms/internal/ads/nb3;

    const-string v8, "ECDH"

    .line 16
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/nb3;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/crypto/KeyAgreement;

    .line 17
    invoke-virtual {v7, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v8, 0x1

    .line 18
    :try_start_1
    invoke-virtual {v7, v6, v8}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 19
    invoke-virtual {v7}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v6

    .line 20
    invoke-interface {v4}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v7, Ljava/math/BigInteger;

    .line 21
    invoke-direct {v7, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 22
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_16

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kb3;->b(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_16

    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kb3;->b(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v9

    .line 24
    invoke-virtual {v4}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v11

    .line 25
    invoke-virtual {v4}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    .line 26
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 27
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-ne v7, v8, :cond_15

    .line 28
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 29
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 30
    :cond_1
    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    const/4 v11, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 31
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 32
    invoke-virtual {v4, v7, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto/16 :goto_5

    .line 33
    :cond_2
    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 34
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v14, 0x0

    .line 35
    :goto_1
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v12, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 36
    invoke-virtual {v15, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 37
    invoke-virtual {v15, v11, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 38
    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 39
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 40
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    move-object v13, v7

    :goto_2
    if-ltz v12, :cond_4

    .line 41
    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 42
    invoke-virtual {v13, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v10, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 43
    invoke-virtual {v14, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 44
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 45
    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 46
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    move-object v13, v8

    goto :goto_3

    :cond_3
    move-object/from16 v16, v13

    move-object v13, v10

    move-object/from16 v10, v16

    :goto_3
    add-int/lit8 v12, v12, -0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move-object v7, v13

    goto :goto_5

    .line 47
    :cond_5
    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "p is not prime"

    if-eqz v8, :cond_8

    .line 48
    :try_start_2
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x1

    add-int/2addr v14, v8

    const/16 v8, 0x80

    if-ne v14, v8, :cond_7

    const/16 v8, 0x50

    .line 49
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 50
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 51
    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v7, v11

    :goto_5
    if-eqz v7, :cond_0

    .line 52
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    .line 53
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "Could not find a modular square root"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :goto_6
    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    const/4 v4, 0x1

    if-eq v8, v4, :cond_b

    .line 55
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :cond_b
    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 57
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/kb3;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 58
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kb3;->b(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    const/4 v7, -0x1

    add-int/lit8 v7, p5, -0x1

    if-eqz v7, :cond_10

    const/4 v8, 0x2

    if-eq v7, v8, :cond_d

    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 59
    new-array v8, v4, [B

    .line 60
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 61
    array-length v10, v9

    sub-int/2addr v4, v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eq v7, v4, :cond_c

    const/4 v4, 0x2

    goto :goto_7

    :cond_c
    const/4 v4, 0x3

    :goto_7
    aput-byte v4, v8, v11

    goto :goto_8

    :cond_d
    add-int v7, v4, v4

    .line 63
    new-array v8, v7, [B

    .line 64
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 65
    array-length v10, v9

    if-le v10, v4, :cond_e

    sub-int v11, v10, v4

    .line 66
    invoke-static {v9, v11, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 67
    :cond_e
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 68
    array-length v10, v5

    if-le v10, v4, :cond_f

    sub-int v11, v10, v4

    .line 69
    invoke-static {v5, v11, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 70
    :cond_f
    array-length v10, v5

    sub-int/2addr v7, v10

    const/4 v11, 0x0

    invoke-static {v5, v11, v8, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v5, v9

    sub-int/2addr v4, v5

    invoke-static {v9, v11, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    move-object v9, v8

    const/4 v4, 0x2

    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    add-int v7, v4, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 72
    new-array v9, v7, [B

    .line 73
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    .line 74
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 75
    array-length v12, v5

    sub-int/2addr v7, v12

    invoke-static {v5, v11, v9, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    array-length v5, v10

    add-int/2addr v4, v8

    sub-int/2addr v4, v5

    invoke-static {v10, v11, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x4

    .line 77
    aput-byte v4, v9, v11

    const/4 v4, 0x2

    :goto_9
    new-array v4, v4, [[B

    aput-object v9, v4, v11

    aput-object v6, v4, v8

    .line 78
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/za3;->a([[B)[B

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/nb3;->e:Lcom/google/android/gms/internal/ads/nb3;

    .line 79
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/nb3;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Mac;

    .line 80
    invoke-virtual {v5}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v6

    mul-int/lit16 v6, v6, 0xff

    if-gt v3, v6, :cond_14

    if-eqz v2, :cond_12

    .line 81
    array-length v6, v2

    if-nez v6, :cond_11

    goto :goto_a

    .line 82
    :cond_11
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_b

    .line 83
    :cond_12
    :goto_a
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v5}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v2, v6, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 84
    :goto_b
    invoke-virtual {v5, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 85
    new-array v4, v3, [B

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 86
    invoke-direct {v6, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x0

    new-array v2, v0, [B

    const/4 v6, 0x0

    .line 87
    :goto_c
    invoke-virtual {v5, v2}, Ljavax/crypto/Mac;->update([B)V

    move-object/from16 v2, p3

    .line 88
    invoke-virtual {v5, v2}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte v7, v8

    .line 89
    invoke-virtual {v5, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 90
    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v7

    .line 91
    array-length v10, v7

    add-int v11, v6, v10

    if-ge v11, v3, :cond_13

    .line 92
    invoke-static {v7, v0, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    move-object v2, v7

    move v6, v11

    goto :goto_c

    :cond_13
    sub-int v2, v3, v6

    .line 93
    invoke-static {v7, v0, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ib3;

    .line 94
    invoke-direct {v0, v9, v4}, Lcom/google/android/gms/internal/ads/ib3;-><init>([B[B)V

    return-object v0

    .line 95
    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "size too large"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_15
    :try_start_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "p must be positive"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_16
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "shared secret is out of range"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_17
    :try_start_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid public key spec"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    .line 100
    :goto_d
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
