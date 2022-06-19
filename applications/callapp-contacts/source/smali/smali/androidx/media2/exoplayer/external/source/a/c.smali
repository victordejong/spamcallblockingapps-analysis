.class public abstract Landroidx/media2/exoplayer/external/source/a/c;
.super Landroidx/media2/exoplayer/external/source/a/b;
.source "SourceFile"


# instance fields
.field public i:[B

.field private volatile j:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 55
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/a/b;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    .line 57
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->j:Z

    return-void
.end method

.method protected abstract a([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->h:Landroidx/media2/exoplayer/external/upstream/v;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/a/c;->a:Landroidx/media2/exoplayer/external/upstream/h;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/v;->a(Landroidx/media2/exoplayer/external/upstream/h;)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 84
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->j:Z

    if-nez v0, :cond_3

    .line 1110
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    const/16 v3, 0x4000

    if-nez v0, :cond_1

    new-array v0, v3, [B

    .line 1111
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    goto :goto_1

    .line 1112
    :cond_1
    array-length v4, v0

    add-int/lit16 v5, v1, 0x4000

    if-ge v4, v5, :cond_2

    .line 1115
    array-length v4, v0

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    .line 86
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->h:Landroidx/media2/exoplayer/external/upstream/v;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    invoke-virtual {v0, v4, v1, v3}, Landroidx/media2/exoplayer/external/upstream/v;->a([BII)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    .line 91
    :cond_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->j:Z

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->i:[B

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/a/c;->a([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/c;->h:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/a/c;->h:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    throw v0
.end method
