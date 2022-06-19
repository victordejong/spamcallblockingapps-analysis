.class final Lcom/google/android/exoplayer2/source/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/y$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/util/u;

.field b:Lcom/google/android/exoplayer2/source/y$a;

.field c:Lcom/google/android/exoplayer2/source/y$a;

.field d:Lcom/google/android/exoplayer2/source/y$a;

.field e:J

.field private final f:Lcom/google/android/exoplayer2/upstream/b;

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/upstream/b;

    .line 55
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/b;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/y;->g:I

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/util/u;

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/source/y$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    .line 58
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;

    .line 59
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/source/y$a;J)Lcom/google/android/exoplayer2/source/y$a;
    .locals 3

    .line 455
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 456
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static a(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;
    .locals 3

    .line 403
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 406
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    .line 408
    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y$a;->a(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 411
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 412
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static a(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;
    .locals 5

    .line 429
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 432
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 433
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    .line 434
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y$a;->a(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 434
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 442
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 443
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method final a(I)I
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/upstream/b;

    .line 235
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/b;->a()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/y$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/y$a;->b:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/y;->g:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    .line 1495
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    .line 1496
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    const/4 v1, 0x1

    .line 1497
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/y;->e:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    .line 1205
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Z

    if-eqz v1, :cond_1

    .line 1212
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/y$a;->c:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/y$a;->a:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iget v2, p0, Lcom/google/android/exoplayer2/source/y;->g:I

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 1215
    new-array v2, v1, [Lcom/google/android/exoplayer2/upstream/a;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1218
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    aput-object v4, v2, v3

    .line 1219
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/y$a;->a()Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/upstream/b;->a([Lcom/google/android/exoplayer2/upstream/a;)V

    .line 67
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/y$a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/y;->g:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    .line 68
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;

    .line 69
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    .line 70
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/y;->e:J

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/b;->b()V

    return-void
.end method

.method public final a(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/b;->a(Lcom/google/android/exoplayer2/upstream/a;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/y$a;->a()Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/y$a;->a:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 158
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->b:Lcom/google/android/exoplayer2/source/y$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;

    :cond_2
    return-void
.end method

.method final b(I)V
    .locals 4

    .line 247
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->e:J

    .line 248
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    :cond_0
    return-void
.end method
