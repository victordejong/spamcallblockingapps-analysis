.class final Lcom/google/android/exoplayer2/source/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/source/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/p;

.field private final b:J

.field private c:Lcom/google/android/exoplayer2/source/p$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/p;J)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    .line 296
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->D_()V

    return-void
.end method

.method public final a(JLcom/google/android/exoplayer2/ai;)J
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(JLcom/google/android/exoplayer2/ai;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 327
    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/aa;

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 328
    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    .line 329
    aget-object v4, v1, v3

    check-cast v4, Lcom/google/android/exoplayer2/source/u$b;

    if-eqz v4, :cond_0

    .line 1428
    iget-object v11, v4, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    .line 330
    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    .line 333
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/p;->a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J

    move-result-wide v3

    .line 339
    :goto_1
    array-length v5, v1

    if-ge v10, v5, :cond_5

    .line 340
    aget-object v5, v2, v10

    if-nez v5, :cond_2

    .line 342
    aput-object v11, v1, v10

    goto :goto_2

    .line 343
    :cond_2
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    aget-object v6, v1, v10

    check-cast v6, Lcom/google/android/exoplayer2/source/u$b;

    .line 2428
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    if-eq v6, v5, :cond_4

    .line 345
    :cond_3
    new-instance v6, Lcom/google/android/exoplayer2/source/u$b;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    invoke-direct {v6, v5, v7, v8}, Lcom/google/android/exoplayer2/source/u$b;-><init>(Lcom/google/android/exoplayer2/source/aa;J)V

    aput-object v6, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 348
    :cond_5
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final a(J)V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(JZ)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/source/ab;)V
    .locals 0

    .line 3413
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u$a;->c:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p$a;J)V
    .locals 2

    .line 301
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u$a;->c:Lcom/google/android/exoplayer2/source/p$a;

    .line 302
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(Lcom/google/android/exoplayer2/source/p$a;J)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 0

    .line 408
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u$a;->c:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/p;)V

    return-void
.end method

.method public final b(J)J
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 361
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final c(J)Z
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 380
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()J
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 388
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/u$a;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->f()Z

    move-result v0

    return v0
.end method
