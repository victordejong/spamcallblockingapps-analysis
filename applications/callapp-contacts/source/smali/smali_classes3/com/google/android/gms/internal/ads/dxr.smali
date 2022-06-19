.class public final Lcom/google/android/gms/internal/ads/dxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dxt;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ecb;

.field private final c:J

.field private d:J

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 89
    sput-object v0, Lcom/google/android/gms/internal/ads/dxr;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/ecb;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxr;->b:Lcom/google/android/gms/internal/ads/ecb;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dxr;->d:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/dxr;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    return-void
.end method

.method private final a([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxr;->b:Lcom/google/android/gms/internal/ads/ecb;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ecb;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 84
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private final d([BII)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dxr;->f(I)V

    return p3
.end method

.method private final d(I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    add-int/2addr v0, p1

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    array-length v2, v1

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    .line 45
    array-length v1, v1

    shl-int/2addr v1, v3

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v4, 0x80000

    add-int/2addr v0, v4

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(III)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    .line 47
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v8, v0

    :cond_1
    if-ge v8, p1, :cond_2

    .line 49
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/dxr;->a([BIIIZ)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    .line 53
    iget p1, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    return v3
.end method

.method private final e(I)I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dxr;->f(I)V

    return p1
.end method

.method private final f(I)V
    .locals 5

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dxr;->g:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    .line 73
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 74
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 75
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    return-void
.end method

.method private final g(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dxr;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxr;->d:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dxr;->e(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/dxr;->a:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/dxr;->a([BIIIZ)I

    move-result v0

    .line 23
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dxr;->g(I)V

    return v0
.end method

.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dxr;->d([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/dxr;->a([BIIIZ)I

    move-result v0

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dxr;->g(I)V

    return v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    return-void
.end method

.method public final a([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dxr;->d([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/dxr;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/dxr;->g(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dxr;->d:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dxr;->e(I)I

    move-result v0

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/dxr;->a:[B

    neg-int v3, v5

    array-length v0, v2

    add-int/2addr v0, v5

    .line 29
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/dxr;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/dxr;->g(I)V

    return-void
.end method

.method public final b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/dxr;->a([BIIZ)Z

    return-void
.end method

.method public final c()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dxr;->c:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dxr;->d(I)Z

    return-void
.end method

.method public final c([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dxr;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxr;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dxr;->f:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
