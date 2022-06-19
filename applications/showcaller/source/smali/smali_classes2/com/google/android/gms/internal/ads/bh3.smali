.class final Lcom/google/android/gms/internal/ads/bh3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:Z

.field private static final d:Z

.field private static final e:Lcom/google/android/gms/internal/ads/ah3;

.field private static final f:Z

.field private static final g:Z

.field static final h:J

.field private static final i:J

.field static final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    const-class v6, Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/bh3;->B()Lsun/misc/Unsafe;

    move-result-object v7

    sput-object v7, Lcom/google/android/gms/internal/ads/bh3;->a:Lsun/misc/Unsafe;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/vc3;->a()Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/ads/bh3;->b:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/bh3;->C(Ljava/lang/Class;)Z

    move-result v9

    sput-boolean v9, Lcom/google/android/gms/internal/ads/bh3;->c:Z

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/bh3;->C(Ljava/lang/Class;)Z

    move-result v10

    sput-boolean v10, Lcom/google/android/gms/internal/ads/bh3;->d:Z

    const/4 v11, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 5
    new-instance v11, Lcom/google/android/gms/internal/ads/zg3;

    .line 6
    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/ads/zg3;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    new-instance v11, Lcom/google/android/gms/internal/ads/yg3;

    .line 7
    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/ads/yg3;-><init>(Lsun/misc/Unsafe;)V

    .line 8
    :cond_2
    :goto_0
    sput-object v11, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    const-string v7, "getLong"

    const-string v9, "objectFieldOffset"

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v11, :cond_3

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    .line 9
    :cond_3
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ah3;->a:Lsun/misc/Unsafe;

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    new-array v14, v12, [Ljava/lang/Class;

    const-class v15, Ljava/lang/reflect/Field;

    aput-object v15, v14, v13

    .line 10
    invoke-virtual {v11, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v14, v10, [Ljava/lang/Class;

    aput-object v6, v14, v13

    aput-object v8, v14, v12

    .line 11
    invoke-virtual {v11, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/bh3;->e()Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v8

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/bh3;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 14
    :goto_2
    sput-boolean v8, Lcom/google/android/gms/internal/ads/bh3;->f:Z

    sget-object v8, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    if-nez v8, :cond_6

    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 15
    :cond_6
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ah3;->a:Lsun/misc/Unsafe;

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v11, v12, [Ljava/lang/Class;

    const-class v14, Ljava/lang/reflect/Field;

    aput-object v14, v11, v13

    .line 16
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v12, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v9, v13

    const-string v11, "arrayBaseOffset"

    .line 17
    invoke-virtual {v8, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v12, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v9, v13

    const-string v11, "arrayIndexScale"

    .line 18
    invoke-virtual {v8, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v10, [Ljava/lang/Class;

    aput-object v6, v9, v13

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v12

    const-string v14, "getInt"

    .line 19
    invoke-virtual {v8, v14, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v6, v14, v13

    aput-object v11, v14, v12

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v10

    const-string v15, "putInt"

    .line 20
    invoke-virtual {v8, v15, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v14, v10, [Ljava/lang/Class;

    aput-object v6, v14, v13

    aput-object v11, v14, v12

    .line 21
    invoke-virtual {v8, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    aput-object v11, v7, v10

    const-string v14, "putLong"

    .line 22
    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v10, [Ljava/lang/Class;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    const-string v14, "getObject"

    .line 23
    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    aput-object v6, v7, v10

    const-string v6, "putObject"

    .line 24
    invoke-virtual {v8, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    goto :goto_4

    :catchall_1
    move-exception v6

    .line 25
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/bh3;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 26
    :goto_4
    sput-boolean v6, Lcom/google/android/gms/internal/ads/bh3;->g:Z

    const-class v6, [B

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Lcom/google/android/gms/internal/ads/bh3;->h:J

    .line 28
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bh3;->d(Ljava/lang/Class;)I

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    .line 31
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/bh3;->d(Ljava/lang/Class;)I

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bh3;->d(Ljava/lang/Class;)I

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bh3;->d(Ljava/lang/Class;)I

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bh3;->d(Ljava/lang/Class;)I

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bh3;->c(Ljava/lang/Class;)I

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bh3;->d(Ljava/lang/Class;)I

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/bh3;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_9

    sget-object v3, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    if-nez v3, :cond_8

    goto :goto_5

    .line 41
    :cond_8
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ah3;->j(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 42
    :cond_9
    :goto_5
    sput-wide v1, Lcom/google/android/gms/internal/ads/bh3;->i:J

    .line 43
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    sput-boolean v12, Lcom/google/android/gms/internal/ads/bh3;->j:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    sget-wide v1, Lcom/google/android/gms/internal/ads/bh3;->i:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ah3;->o(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static B()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xg3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xg3;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static C(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/ads/vc3;->a:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/bh3;->b:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "peekLong"

    .line 2
    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v8, "pokeLong"

    .line 3
    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v9, "pokeInt"

    .line 4
    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v5, v7, v6

    const-string v5, "peekInt"

    .line 5
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    .line 6
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-string v7, "peekByte"

    .line 7
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v0, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    const-string v9, "pokeByteArray"

    .line 8
    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    aput-object v0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    const-string p0, "peekByteArray"

    .line 9
    invoke-virtual {v2, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v1
.end method

.method static synthetic D(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bh3;->g(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic E(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bh3;->h(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic F(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ah3;->m(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic G(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ah3;->m(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic H(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bh3;->g(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bh3;->h(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/bh3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 2
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/bh3;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ah3;->k(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static d(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/bh3;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ah3;->l(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static e()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/vc3;->a:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bh3;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bh3;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static g(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/ah3;->m(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/ah3;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static h(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/ah3;->m(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/ah3;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method static i()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/bh3;->g:Z

    return v0
.end method

.method static j()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/bh3;->f:Z

    return v0
.end method

.method static k(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static l(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ah3;->m(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static m(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ah3;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method static n(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ah3;->o(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static o(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ah3;->p(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static p(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ah3;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static q(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ah3;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static r(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ah3;->d(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static s(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ah3;->e(Ljava/lang/Object;JF)V

    return-void
.end method

.method static t(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ah3;->f(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static u(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ah3;->g(Ljava/lang/Object;JD)V

    return-void
.end method

.method static v(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ah3;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static w(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ah3;->r(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static x([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    sget-wide v1, Lcom/google/android/gms/internal/ads/bh3;->h:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/ads/ah3;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method static y(J[BJJ)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ah3;->i(J[BJJ)V

    return-void
.end method

.method static z(J)B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bh3;->e:Lcom/google/android/gms/internal/ads/ah3;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ah3;->h(J)B

    move-result p0

    return p0
.end method
