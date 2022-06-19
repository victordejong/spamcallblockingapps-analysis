.class final Lcom/google/android/exoplayer2/source/ae$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/j;

.field final c:Lcom/google/android/exoplayer2/upstream/t;

.field d:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/h;)V
    .locals 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    invoke-static {}, Lcom/google/android/exoplayer2/source/l;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->a:J

    .line 413
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae$b;->b:Lcom/google/android/exoplayer2/upstream/j;

    .line 414
    new-instance p1, Lcom/google/android/exoplayer2/upstream/t;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Lcom/google/android/exoplayer2/upstream/h;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    const-wide/16 v1, 0x0

    .line 1052
    iput-wide v1, v0, Lcom/google/android/exoplayer2/upstream/t;->a:J

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ae$b;->b:Lcom/google/android/exoplayer2/upstream/j;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/t;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 432
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    .line 1057
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/t;->a:J

    long-to-int v1, v0

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->d:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 434
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->d:[B

    goto :goto_1

    .line 435
    :cond_0
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 436
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->d:[B

    .line 438
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ae$b;->d:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/upstream/t;->a([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 442
    throw v0
.end method
