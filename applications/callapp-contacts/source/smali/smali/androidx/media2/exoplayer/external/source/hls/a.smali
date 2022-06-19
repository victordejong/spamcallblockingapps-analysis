.class final Landroidx/media2/exoplayer/external/source/hls/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/f;

.field private final b:[B

.field private final c:[B

.field private d:Ljavax/crypto/CipherInputStream;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;[B[B)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/a;->a:Landroidx/media2/exoplayer/external/upstream/f;

    .line 69
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/a;->b:[B

    .line 70
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/a;->c:[B

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->d:Ljavax/crypto/CipherInputStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->d:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 1133
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 87
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/a;->b:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 88
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/a;->c:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 91
    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/g;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/a;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-direct {v1, v2, p1}, Landroidx/media2/exoplayer/external/upstream/g;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;)V

    .line 97
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/a;->d:Ljavax/crypto/CipherInputStream;

    .line 2071
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/g;->a()V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 93
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 84
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->d:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->d:Ljavax/crypto/CipherInputStream;

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/a;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->c()V

    :cond_0
    return-void
.end method
