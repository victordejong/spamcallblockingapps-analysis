.class final Lcom/google/android/exoplayer2/source/MergingMediaSource$a;
.super Lcom/google/android/exoplayer2/source/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final c:[J

.field private final d:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/al;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/al;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->d:[J

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 336
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->d:[J

    const-wide/16 v5, 0x0

    .line 1809
    invoke-virtual {p1, v3, v1, v5, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v5

    .line 336
    iget-wide v5, v5, Lcom/google/android/exoplayer2/al$b;->q:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    .line 339
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->c:[J

    .line 340
    new-instance v1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    .line 342
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 343
    iget-object v3, v1, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 344
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->c:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    goto :goto_2

    .line 345
    :cond_1
    iget-wide v3, v1, Lcom/google/android/exoplayer2/al$a;->d:J

    :goto_2
    aput-wide v3, v5, v2

    .line 346
    iget-wide v3, v1, Lcom/google/android/exoplayer2/al$a;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 347
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->d:[J

    iget v4, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    aget-wide v5, v3, v4

    iget-wide v7, v1, Lcom/google/android/exoplayer2/al$a;->d:J

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->c:[J

    aget-wide v10, v9, v2

    sub-long/2addr v7, v10

    sub-long/2addr v5, v7

    aput-wide v5, v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 2

    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/j;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 366
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->c:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/al$a;->d:J

    return-object p2
.end method

.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 2

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/j;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 355
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->d:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/al$b;->q:J

    .line 357
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->q:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    iget-wide v0, p2, Lcom/google/android/exoplayer2/al$b;->q:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_1

    .line 358
    :cond_1
    :goto_0
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    .line 359
    :goto_1
    iput-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    return-object p2
.end method
