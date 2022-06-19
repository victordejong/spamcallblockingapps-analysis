.class public final Lcom/google/android/gms/internal/ads/dsk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    .line 5
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 8
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    .line 18
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->e()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dsk;->a([BI)V

    .line 11
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    goto :goto_0
.end method

.method public final a([BI)V
    .locals 1

    .prologue
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    .line 15
    return-void
.end method

.method public final a([BII)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    .line 33
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 21
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    .line 23
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 26
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    .line 28
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    return v0
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 30
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string/jumbo v0, ""

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 57
    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    aget-byte v0, v1, v0

    if-nez v0, :cond_1

    .line 58
    add-int/lit8 v0, p1, -0x1

    .line 59
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 60
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    move-object v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1
.end method

.method public final f()I
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final g()I
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final i()S
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final j()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final k()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final l()I
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final m()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final n()I
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dsk;->b:I

    .line 44
    return v0
.end method

.method public final o()I
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v0

    .line 46
    if-gez v0, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    return v0
.end method

.method public final p()J
    .locals 5

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->m()J

    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    return-wide v0
.end method
