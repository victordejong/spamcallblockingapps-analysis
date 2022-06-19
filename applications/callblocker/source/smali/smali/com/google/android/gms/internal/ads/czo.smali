.class public final Lcom/google/android/gms/internal/ads/czo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czo;->a:Ljava/security/interfaces/ECPublicKey;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/czw;)Lcom/google/android/gms/internal/ads/czs;
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czo;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czr;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 6
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 7
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/czo;->a:Ljava/security/interfaces/ECPublicKey;

    .line 9
    :try_start_0
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 10
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    .line 12
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 14
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    invoke-virtual {v7}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v3, v5

    .line 16
    :goto_0
    if-nez v3, :cond_1

    .line 17
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid public key spec"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    :goto_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v3, v4

    .line 15
    goto :goto_0

    .line 21
    :cond_1
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/czr;->a(Ljava/security/interfaces/ECPrivateKey;Ljava/security/spec/ECPoint;)[B

    move-result-object v6

    .line 24
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v7

    .line 26
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/czr;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/czr;->a(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 29
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v8, v0, 0x8

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/czu;->a:[I

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/czw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid format:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_0
    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 33
    invoke-virtual {v7}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 34
    invoke-virtual {v7}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 35
    mul-int/lit8 v7, v8, 0x2

    add-int/lit8 v7, v7, 0x1

    array-length v9, v3

    sub-int/2addr v7, v9

    array-length v9, v3

    invoke-static {v3, v4, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    add-int/lit8 v3, v8, 0x1

    array-length v7, v1

    sub-int/2addr v3, v7

    array-length v7, v1

    invoke-static {v1, v4, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    const/4 v1, 0x4

    aput-byte v1, v0, v4

    move-object v1, v0

    .line 58
    :goto_2
    new-array v0, v2, [[B

    aput-object v1, v0, v4

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v2

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/czy;->b:Lcom/google/android/gms/internal/ads/czy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/czy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 61
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    if-le p4, v3, :cond_5

    .line 62
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "size too large"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_1
    mul-int/lit8 v0, v8, 0x2

    new-array v3, v0, [B

    .line 40
    invoke-virtual {v7}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 41
    array-length v1, v0

    if-le v1, v8, :cond_2

    .line 42
    array-length v1, v0

    sub-int/2addr v1, v8

    array-length v9, v0

    invoke-static {v0, v1, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 43
    :cond_2
    invoke-virtual {v7}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 44
    array-length v7, v1

    if-le v7, v8, :cond_3

    .line 45
    array-length v7, v1

    sub-int/2addr v7, v8

    array-length v9, v1

    invoke-static {v1, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 46
    :cond_3
    mul-int/lit8 v7, v8, 0x2

    array-length v9, v1

    sub-int/2addr v7, v9

    array-length v9, v1

    invoke-static {v1, v4, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    array-length v1, v0

    sub-int v1, v8, v1

    array-length v7, v0

    invoke-static {v0, v4, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    .line 48
    goto :goto_2

    .line 49
    :pswitch_2
    add-int/lit8 v0, v8, 0x1

    new-array v1, v0, [B

    .line 50
    invoke-virtual {v7}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 51
    add-int/lit8 v3, v8, 0x1

    array-length v8, v0

    sub-int/2addr v3, v8

    array-length v8, v0

    invoke-static {v0, v4, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-virtual {v7}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, v1, v4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 63
    :cond_5
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 64
    :cond_6
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v3, v6, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 66
    :goto_4
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 67
    new-array v6, p4, [B

    .line 70
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 71
    new-array v2, v4, [B

    move v3, v4

    .line 72
    :goto_5
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 73
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 74
    int-to-byte v2, v5

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 75
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    .line 76
    array-length v7, v2

    add-int/2addr v7, v3

    if-ge v7, p4, :cond_8

    .line 77
    array-length v7, v2

    invoke-static {v2, v4, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v7, v2

    add-int/2addr v3, v7

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 65
    :cond_7
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_4

    .line 80
    :cond_8
    sub-int v0, p4, v3

    invoke-static {v2, v4, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/ads/czs;

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/czs;-><init>([B[B)V

    return-object v0

    .line 19
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
