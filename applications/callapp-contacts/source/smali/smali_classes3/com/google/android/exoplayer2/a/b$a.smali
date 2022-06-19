.class public final Lcom/google/android/exoplayer2/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/al;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/source/r$a;

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/al;

.field public final g:I

.field public final h:Lcom/google/android/exoplayer2/source/r$a;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;JLcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/source/r$a;JJ)V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-wide p1, p0, Lcom/google/android/exoplayer2/a/b$a;->a:J

    .line 413
    iput-object p3, p0, Lcom/google/android/exoplayer2/a/b$a;->b:Lcom/google/android/exoplayer2/al;

    .line 414
    iput p4, p0, Lcom/google/android/exoplayer2/a/b$a;->c:I

    .line 415
    iput-object p5, p0, Lcom/google/android/exoplayer2/a/b$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    .line 416
    iput-wide p6, p0, Lcom/google/android/exoplayer2/a/b$a;->e:J

    .line 417
    iput-object p8, p0, Lcom/google/android/exoplayer2/a/b$a;->f:Lcom/google/android/exoplayer2/al;

    .line 418
    iput p9, p0, Lcom/google/android/exoplayer2/a/b$a;->g:I

    .line 419
    iput-object p10, p0, Lcom/google/android/exoplayer2/a/b$a;->h:Lcom/google/android/exoplayer2/source/r$a;

    .line 420
    iput-wide p11, p0, Lcom/google/android/exoplayer2/a/b$a;->i:J

    .line 421
    iput-wide p13, p0, Lcom/google/android/exoplayer2/a/b$a;->j:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/a/b$a;

    .line 433
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/b$a;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/a/b$a;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/a/b$a;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/a/b$a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/b$a;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/a/b$a;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/a/b$a;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/a/b$a;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/b$a;->i:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/a/b$a;->i:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/b$a;->j:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/a/b$a;->j:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/b$a;->b:Lcom/google/android/exoplayer2/al;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a/b$a;->b:Lcom/google/android/exoplayer2/al;

    .line 439
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/b$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a/b$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    .line 440
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/b$a;->f:Lcom/google/android/exoplayer2/al;

    iget-object v3, p1, Lcom/google/android/exoplayer2/a/b$a;->f:Lcom/google/android/exoplayer2/al;

    .line 441
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/b$a;->h:Lcom/google/android/exoplayer2/source/r$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/a/b$a;->h:Lcom/google/android/exoplayer2/source/r$a;

    .line 442
    invoke-static {v2, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 447
    iget-wide v1, p0, Lcom/google/android/exoplayer2/a/b$a;->a:J

    .line 448
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/b$a;->b:Lcom/google/android/exoplayer2/al;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/a/b$a;->c:I

    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/b$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/a/b$a;->e:J

    .line 452
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/b$a;->f:Lcom/google/android/exoplayer2/al;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/a/b$a;->g:I

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/b$a;->h:Lcom/google/android/exoplayer2/source/r$a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/a/b$a;->i:J

    .line 456
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/a/b$a;->j:J

    .line 457
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
