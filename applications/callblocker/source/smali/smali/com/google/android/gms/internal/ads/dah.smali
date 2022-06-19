.class public final Lcom/google/android/gms/internal/ads/dah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ctd;


# instance fields
.field private final a:Ljavax/crypto/Mac;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;I)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    .line 3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "tag size too small, need at least 10 bytes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "key size too small, need at least 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 13
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v2, "unknown Hmac algorithm: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :sswitch_0
    const-string/jumbo v1, "HMACSHA1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "HMACSHA256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "HMACSHA512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 7
    :pswitch_0
    const/16 v0, 0x14

    if-le p3, v0, :cond_4

    .line 8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_1
    const/16 v0, 0x20

    if-le p3, v0, :cond_4

    .line 10
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :pswitch_2
    const/16 v0, 0x40

    if-le p3, v0, :cond_4

    .line 12
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dah;->c:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/ads/dah;->b:I

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dah;->d:Ljava/security/Key;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/czy;->b:Lcom/google/android/gms/internal/ads/czy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/czy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dah;->a:Ljavax/crypto/Mac;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dah;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 19
    return-void

    .line 6
    :sswitch_data_0
    .sparse-switch
        -0x6ca99674 -> :sswitch_0
        0x176240ee -> :sswitch_1
        0x17624bb1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a([B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dah;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/dah;->b:I

    new-array v1, v1, [B

    .line 27
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dah;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-object v1

    .line 23
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/czy;->b:Lcom/google/android/gms/internal/ads/czy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dah;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/czy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dah;->d:Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_0
.end method
