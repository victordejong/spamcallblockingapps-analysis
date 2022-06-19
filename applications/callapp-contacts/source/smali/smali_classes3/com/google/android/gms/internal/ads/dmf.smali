.class public final Lcom/google/android/gms/internal/ads/dmf;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/dlw;",
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

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 46
    sput-object v0, Lcom/google/android/gms/internal/ads/dmf;->a:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 p1, 0x80

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmf;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->c:Ljava/util/ArrayList;

    new-array p1, p1, [B

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    return-void
.end method

.method private final a(I)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/dmh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dmh;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmf;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmf;->d:I

    .line 42
    iget v1, p0, Lcom/google/android/gms/internal/ads/dmf;->b:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 43
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    return-void
.end method

.method private final declared-synchronized b()I
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmf;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I
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
.method public final declared-synchronized a()Lcom/google/android/gms/internal/ads/dlw;
    .locals 5

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    if-lez v0, :cond_1

    .line 25
    new-array v2, v0, [B

    .line 26
    array-length v4, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/dmh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dmh;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/ads/dmh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/dmh;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/dmf;->a:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    .line 33
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmf;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmf;->d:I

    .line 34
    iput v3, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dlw;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmf;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString.Output@%s size=%d>"

    .line 39
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 6
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dmf;->a(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    array-length v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 11
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 14
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 17
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dmf;->a(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->e:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/dmf;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
