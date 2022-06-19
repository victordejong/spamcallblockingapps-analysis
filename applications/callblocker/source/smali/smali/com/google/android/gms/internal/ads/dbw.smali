.class public final Lcom/google/android/gms/internal/ads/dbw;
.super Ljava/io/OutputStream;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/dbw;->a:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/ads/dbw;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->c:Ljava/util/ArrayList;

    .line 4
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    .line 5
    return-void
.end method

.method private final a(I)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/dbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbw;->d:I

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->d:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    .line 45
    return-void
.end method

.method private final declared-synchronized b()I
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/gms/internal/ads/dbi;
    .locals 6

    .prologue
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    if-lez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    .line 25
    new-array v2, v1, [B

    .line 26
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/dbt;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbw;->d:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 31
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/dbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/dbw;->a:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    const-string/jumbo v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbw;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 6
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dbw;->a(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 4

    .prologue
    .line 10
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    add-int v1, p2, v0

    .line 16
    sub-int v0, p3, v0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dbw;->a(I)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbw;->e:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/dbw;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
