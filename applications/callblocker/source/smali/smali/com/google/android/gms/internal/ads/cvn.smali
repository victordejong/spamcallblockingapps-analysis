.class public final Lcom/google/android/gms/internal/ads/cvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static b:Ljavax/crypto/Cipher;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/cvn;->b:Ljavax/crypto/Cipher;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cvn;->c:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cvn;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvn;->a:Ljava/security/SecureRandom;

    .line 3
    return-void
.end method

.method private static a()Ljavax/crypto/Cipher;
    .locals 2

    .prologue
    .line 75
    sget-object v1, Lcom/google/android/gms/internal/ads/cvn;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cvn;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cvn;->b:Ljavax/crypto/Cipher;

    .line 78
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cvn;->b:Ljavax/crypto/Cipher;

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a([B[B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;)V

    throw v0

    .line 20
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/cvn;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 22
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvn;->a()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvn;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvn;->a()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    .line 27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 30
    new-array v0, v1, [B

    .line 31
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 32
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bkl;->a([BZ)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 35
    :catch_1
    move-exception v0

    .line 36
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 37
    :catch_2
    move-exception v0

    .line 38
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 39
    :catch_3
    move-exception v0

    .line 40
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catch_4
    move-exception v0

    .line 42
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x10

    .line 4
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/bkl;->a(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 5
    array-length v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_0
    const/4 v2, 0x4

    const/16 v3, 0x10

    .line 8
    :try_start_1
    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 9
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 10
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    :goto_0
    if-ge v0, v4, :cond_1

    .line 13
    aget-byte v1, v2, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, v2, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    return-object v2
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v2, 0x10

    .line 43
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;)V

    throw v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/bkl;->a(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 46
    array-length v1, v0

    if-gt v1, v2, :cond_1

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 48
    :cond_1
    :try_start_1
    array-length v1, v0

    .line 49
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 53
    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    .line 54
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 56
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    sget-object v3, Lcom/google/android/gms/internal/ads/cvn;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    .line 58
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvn;->a()Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v4, v5, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvn;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :catch_3
    move-exception v0

    .line 68
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :catch_4
    move-exception v0

    .line 70
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_5
    move-exception v0

    .line 72
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :catch_6
    move-exception v0

    .line 74
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Lcom/google/android/gms/internal/ads/cvn;Ljava/lang/Throwable;)V

    throw v1
.end method
