.class public final Lcom/google/android/gms/internal/ads/dne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dng;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/drp;

.field private final c:J

.field private d:J

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/dne;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/drp;JJ)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dne;->b:Lcom/google/android/gms/internal/ads/drp;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dne;->d:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/dne;->c:J

    .line 5
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    .line 6
    return-void
.end method

.method private final a([BIIIZ)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dne;->b:Lcom/google/android/gms/internal/ads/drp;

    add-int v2, p2, p4

    sub-int v3, p3, p4

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/drp;->a([BII)I

    move-result v1

    .line 81
    if-ne v1, v0, :cond_2

    .line 82
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 85
    :goto_0
    return v0

    .line 84
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 85
    :cond_2
    add-int v0, p4, v1

    goto :goto_0
.end method

.method private final a(IZ)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    add-int/2addr v0, p1

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/dsn;->a(III)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    .line 47
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 48
    :cond_1
    if-ge v4, p1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dne;->a([BIIIZ)I

    move-result v4

    .line 50
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 54
    :goto_0
    return v5

    .line 52
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    .line 54
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private final d(I)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 62
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dne;->e(I)V

    .line 63
    return v0
.end method

.method private final d([BII)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    iget v1, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    if-nez v1, :cond_0

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dne;->e(I)V

    move v0, v1

    .line 69
    goto :goto_0
.end method

.method private final e(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    .line 71
    iput v4, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    .line 73
    iget v1, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    array-length v2, v2

    const/high16 v3, 0x80000

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 74
    iget v0, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dne;->g:I

    invoke-static {v1, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    .line 77
    return-void
.end method

.method private final f(I)V
    .locals 4

    .prologue
    .line 86
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dne;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dne;->d:J

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dne;->d(I)I

    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/dne;->a:[B

    sget-object v0, Lcom/google/android/gms/internal/ads/dne;->a:[B

    array-length v0, v0

    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dne;->a([BIIIZ)I

    move-result v0

    .line 23
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dne;->f(I)V

    .line 24
    return v0
.end method

.method public final a([BII)I
    .locals 6

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dne;->d([BII)I

    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dne;->a([BIIIZ)I

    move-result v0

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dne;->f(I)V

    .line 11
    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    .line 58
    return-void
.end method

.method public final a([BIIZ)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dne;->d([BII)I

    move-result v4

    .line 13
    :goto_0
    if-ge v4, p3, :cond_0

    if-eq v4, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dne;->a([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/dne;->f(I)V

    .line 16
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dne;->d:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dne;->d(I)I

    move-result v4

    .line 27
    :goto_0
    if-ge v4, p1, :cond_0

    if-eq v4, v6, :cond_0

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/ads/dne;->a:[B

    neg-int v2, v4

    sget-object v0, Lcom/google/android/gms/internal/ads/dne;->a:[B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 29
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dne;->a([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/dne;->f(I)V

    .line 32
    if-eq v4, v6, :cond_1

    .line 34
    :cond_1
    return-void
.end method

.method public final b([BII)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/dne;->a([BIIZ)Z

    .line 18
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dne;->c:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dne;->a(IZ)Z

    .line 56
    return-void
.end method

.method public final c([BII)V
    .locals 2

    .prologue
    .line 35
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/ads/dne;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dne;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dne;->f:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
