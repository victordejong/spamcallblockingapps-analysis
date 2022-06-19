.class final Lcom/google/android/play/core/assetpacks/bl;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:[B

.field private c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/bl;->b()V

    return-void
.end method

.method private final a(I[BII)I
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/bl;->c:I

    if-ge v0, p1, :cond_1

    sub-int v0, p1, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    iget v1, p0, Lcom/google/android/play/core/assetpacks/bl;->c:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/android/play/core/assetpacks/bl;->c:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/google/android/play/core/assetpacks/bl;->c:I

    if-ge p2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/bl;->c:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/play/core/assetpacks/bl;->f:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/bl;->d:J

    iput-boolean v0, p0, Lcom/google/android/play/core/assetpacks/bl;->h:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/play/core/assetpacks/bl;->a:I

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/bl;->e:J

    iput v1, p0, Lcom/google/android/play/core/assetpacks/bl;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/bl;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 9

    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/bl;->a(I[BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/bl;->d:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/bj;->a([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/play/core/assetpacks/bl;->d:J

    const-wide/32 v7, 0x4034b50

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lcom/google/android/play/core/assetpacks/bl;->h:Z

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/bj;->a([BI)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/play/core/assetpacks/bl;->e:J

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/bj;->b([BI)I

    move-result v3

    iput v3, p0, Lcom/google/android/play/core/assetpacks/bl;->g:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    const/16 v4, 0x1a

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/bj;->b([BI)I

    move-result v3

    iput v3, p0, Lcom/google/android/play/core/assetpacks/bl;->f:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    const/16 v4, 0x1c

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/bj;->b([BI)I

    move-result v3

    iget v4, p0, Lcom/google/android/play/core/assetpacks/bl;->f:I

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/play/core/assetpacks/bl;->a:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    array-length v3, v3

    if-ge v3, v4, :cond_2

    :goto_0
    add-int/2addr v3, v3

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/play/core/assetpacks/bl;->h:Z

    :cond_2
    :goto_1
    iget v3, p0, Lcom/google/android/play/core/assetpacks/bl;->a:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/bl;->a(I[BII)I

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    :cond_3
    add-int/2addr v1, p1

    iget-boolean p1, p0, Lcom/google/android/play/core/assetpacks/bl;->h:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/bl;->i:Ljava/lang/String;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    iget p3, p0, Lcom/google/android/play/core/assetpacks/bl;->f:I

    invoke-direct {p1, p2, v0, p3}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bl;->i:Ljava/lang/String;

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public final a()Lcom/google/android/play/core/assetpacks/cd;
    .locals 9

    iget v0, p0, Lcom/google/android/play/core/assetpacks/bl;->c:I

    iget v1, p0, Lcom/google/android/play/core/assetpacks/bl;->a:I

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bl;->i:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/bl;->e:J

    iget v5, p0, Lcom/google/android/play/core/assetpacks/bl;->g:I

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/play/core/assetpacks/bl;->h:Z

    invoke-static/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/cd;->a(Ljava/lang/String;JIZ[BZ)Lcom/google/android/play/core/assetpacks/cd;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bl;->i:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/bl;->e:J

    iget v4, p0, Lcom/google/android/play/core/assetpacks/bl;->g:I

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/bl;->b:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/play/core/assetpacks/bl;->h:Z

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/google/android/play/core/assetpacks/cd;->a(Ljava/lang/String;JIZ[BZ)Lcom/google/android/play/core/assetpacks/cd;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/bl;->b()V

    return-object v0
.end method
