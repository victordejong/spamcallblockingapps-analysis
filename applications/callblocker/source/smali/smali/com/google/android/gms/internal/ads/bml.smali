.class final Lcom/google/android/gms/internal/ads/bml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field static a:Ljava/util/concurrent/CountDownLatch;

.field private static b:Z

.field private static c:Ljava/security/MessageDigest;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/bml;->b:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/bml;->c:Ljava/security/MessageDigest;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bml;->d:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bml;->e:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bml;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/atw$a$d;)Lcom/google/android/gms/internal/ads/atw$a;
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$a;->h()Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw$a$d;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->j(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a;

    return-object v0
.end method

.method static a(Lcom/google/android/gms/internal/ads/atw$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bg:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/diq;->a:Lcom/google/android/gms/internal/ads/cst;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 25
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/diq;->a:Lcom/google/android/gms/internal/ads/cst;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cst;->a([B[B)[B

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$f;->a()Lcom/google/android/gms/internal/ads/atw$f$a;

    move-result-object v1

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$f$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/bbd;->a:Lcom/google/android/gms/internal/ads/bbd;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$f$a;->a(Lcom/google/android/gms/internal/ads/bbd;)Lcom/google/android/gms/internal/ads/atw$f$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$f;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    .line 46
    :goto_1
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/bkl;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0

    .line 24
    :cond_1
    new-array v0, v4, [B

    goto :goto_0

    .line 33
    :cond_2
    const/16 v0, 0xff

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/bml;->a([BI)Ljava/util/Vector;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 35
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$d;->a:Lcom/google/android/gms/internal/ads/atw$a$d;

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bml;->a(Lcom/google/android/gms/internal/ads/atw$a$d;)Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    .line 38
    invoke-static {v0, p1, v5}, Lcom/google/android/gms/internal/ads/bml;->a([BLjava/lang/String;Z)[B

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$f;->a()Lcom/google/android/gms/internal/ads/atw$f$a;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 41
    invoke-static {v0, p1, v4}, Lcom/google/android/gms/internal/ads/bml;->a([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/atw$f$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$f$a;

    goto :goto_2

    .line 44
    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bml;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/atw$f$a;->b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/atw$f$a;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 0

    .prologue
    .line 111
    sput-object p0, Lcom/google/android/gms/internal/ads/bml;->c:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static a([BI)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    array-length v1, p0

    add-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v4, v1, 0xff

    .line 51
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 52
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    .line 53
    mul-int/lit16 v5, v3, 0xff

    .line 54
    :try_start_0
    array-length v2, p0

    sub-int/2addr v2, v5

    const/16 v6, 0xff

    if-le v2, v6, :cond_2

    add-int/lit16 v2, v5, 0xff

    .line 55
    :goto_2
    invoke-static {p0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 54
    :cond_2
    array-length v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 60
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a()V
    .locals 4

    .prologue
    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/bml;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/bml;->b:Z

    if-nez v0, :cond_0

    .line 3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ads/bml;->b:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/bom;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/bom;-><init>(Lcom/google/android/gms/internal/ads/bpm;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a([B)[B
    .locals 3

    .prologue
    .line 103
    sget-object v1, Lcom/google/android/gms/internal/ads/bml;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/bml;->b()Ljava/security/MessageDigest;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v2, "Cannot compute hash"

    invoke-direct {v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 108
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/ads/bml;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private static a([BLjava/lang/String;Z)[B
    .locals 8

    .prologue
    const/16 v4, 0x100

    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 64
    .line 65
    if-eqz p2, :cond_2

    const/16 v0, 0xef

    .line 67
    :goto_0
    array-length v1, p0

    if-le v1, v0, :cond_0

    .line 68
    sget-object v1, Lcom/google/android/gms/internal/ads/atw$a$d;->a:Lcom/google/android/gms/internal/ads/atw$a$d;

    .line 69
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bml;->a(Lcom/google/android/gms/internal/ads/atw$a$d;)Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object p0

    .line 71
    :cond_0
    array-length v1, p0

    if-ge v1, v0, :cond_3

    .line 72
    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    .line 73
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v3, p0

    int-to-byte v3, v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 85
    :goto_1
    if-eqz p2, :cond_1

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bml;->a([B)[B

    move-result-object v1

    .line 87
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 93
    :cond_1
    new-array v3, v4, [B

    .line 94
    new-instance v1, Lcom/google/android/gms/internal/ads/brn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/brn;-><init>()V

    .line 95
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/brn;->cN:[Lcom/google/android/gms/internal/ads/btp;

    array-length v5, v4

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    invoke-interface {v6, v0, v3}, Lcom/google/android/gms/internal/ads/btp;->a([B[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    :cond_2
    const/16 v0, 0xff

    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 99
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_5
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 101
    new-instance v1, Lcom/google/android/gms/internal/ads/daz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/daz;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/daz;->a([B)V

    .line 102
    :cond_6
    return-object v3
.end method

.method private static b()Ljava/security/MessageDigest;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/bml;->a()V

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/bml;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 11
    :goto_0
    if-nez v1, :cond_1

    .line 15
    :cond_0
    :goto_1
    return-object v0

    .line 13
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/bml;->c:Ljava/security/MessageDigest;

    if-eqz v1, :cond_0

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/bml;->c:Ljava/security/MessageDigest;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
